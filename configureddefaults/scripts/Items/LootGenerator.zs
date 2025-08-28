#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

import math.Functions;

/**
 * LootGenerator Class
 * 
 * A comprehensive loot generation system for The Wonder Years modpack that creates
 * contextual, luck-influenced rewards across different dimensions. The generator
 * supports tools, weapons, armor, currency, artifacts, and essences with sophisticated
 * probability distributions and component integration.
 * 
 * Key features:
 * - Dimension-specific loot pools with appropriate tier distributions
 * - Luck-based quality scaling using power function probability skewing
 * - Automatic component integration (enchantments, tiers, trims, patterns)
 * - Weighted pool system for flexible loot table creation
 * - Economic integration with Numismatic Overhaul currency system
 * 
 * Example usage:
 *   val generator = new LootGenerator(loot_context);
 *   generator.generateNToolsWithProbability(3, 0.75f);
 *   generator.generateMoneyBagWithProbability(2, 0.5f);
 */
public class LootGenerator
{
    /**
     * The loot context containing player luck, dimension, and random source
     */
	public val loot_context as WonderLootContext : get;

    /**
     * Constructor - Creates a new LootGenerator for the given loot context.
     * 
     * @param loot_context The loot context containing generation parameters
     */
	public this(loot_context as WonderLootContext)
	{
		this.loot_context = loot_context;
	}

    // ========================================
    // TOOL LOOT POOLS BY DIMENSION
    // ========================================
    // Each dimension has different tool availability reflecting progression and theme
    
    /**
     * Overworld tool pools - basic progression from fishing to diamond tools
     */
	private static val OVERWORLD_TOOL_POOLS as IItemStack[][string] = 
    {
        "fishing rod": [<item:minecraft:fishing_rod>],
		"wooden": [<item:minecraft:wooden_hoe>, <item:minecraft:wooden_shovel>, <item:minecraft:wooden_axe>, <item:minecraft:wooden_pickaxe>],
		"stone": [<item:minecraft:stone_hoe>, <item:minecraft:stone_shovel>, <item:minecraft:stone_axe>, <item:minecraft:stone_pickaxe>],
		"golden": [<item:minecraft:golden_hoe>, <item:minecraft:golden_shovel>, <item:minecraft:golden_axe>, <item:minecraft:golden_pickaxe>],
		"iron": [<item:minecraft:iron_hoe>, <item:minecraft:iron_shovel>, <item:minecraft:iron_axe>, <item:minecraft:iron_pickaxe>],
		"diamond": [<item:minecraft:diamond_hoe>, <item:minecraft:diamond_shovel>, <item:minecraft:diamond_axe>, <item:minecraft:diamond_pickaxe>],
	};

    /**
     * Nether tool pools - higher tier focus with netherite availability
     */
	private static val NETHER_TOOL_POOLS as IItemStack[][string] = 
    {
		"golden": [<item:minecraft:golden_hoe>, <item:minecraft:golden_shovel>, <item:minecraft:golden_axe>, <item:minecraft:golden_pickaxe>],
		"iron": [<item:minecraft:iron_hoe>, <item:minecraft:iron_shovel>, <item:minecraft:iron_axe>, <item:minecraft:iron_pickaxe>],
		"diamond": [<item:minecraft:diamond_hoe>, <item:minecraft:diamond_shovel>, <item:minecraft:diamond_axe>, <item:minecraft:diamond_pickaxe>],
		"netherite": [<item:minecraft:netherite_hoe>, <item:minecraft:netherite_shovel>, <item:minecraft:netherite_axe>, <item:minecraft:netherite_pickaxe>],
	};

    /**
     * End tool pools - highest tier with MythicUpgrades and elytra
     */
	private static val END_TOOL_POOLS as IItemStack[][string] = 
    {
		"diamond": [<item:minecraft:diamond_hoe>, <item:minecraft:diamond_shovel>, <item:minecraft:diamond_axe>, <item:minecraft:diamond_pickaxe>],
		"netherite": [<item:minecraft:netherite_hoe>, <item:minecraft:netherite_shovel>, <item:minecraft:netherite_axe>, <item:minecraft:netherite_pickaxe>],
		"mythic low": [<item:mythicupgrades:topaz_hoe>, <item:mythicupgrades:peridot_hoe>, <item:mythicupgrades:aquamarine_hoe>,
					<item:mythicupgrades:topaz_shovel>, <item:mythicupgrades:peridot_shovel>, <item:mythicupgrades:aquamarine_shovel>,
					<item:mythicupgrades:topaz_axe>, <item:mythicupgrades:peridot_axe>, <item:mythicupgrades:aquamarine_axe>,
					<item:mythicupgrades:topaz_pickaxe>, <item:mythicupgrades:peridot_pickaxe>, <item:mythicupgrades:aquamarine_pickaxe>],
		"mythic mid": [<item:mythicupgrades:ruby_hoe>, <item:mythicupgrades:sapphire_hoe>,
					<item:mythicupgrades:ruby_shovel>, <item:mythicupgrades:sapphire_shovel>,
					<item:mythicupgrades:ruby_axe>, <item:mythicupgrades:sapphire_axe>,
					<item:mythicupgrades:ruby_pickaxe>, <item:mythicupgrades:sapphire_pickaxe>],
		"mythic high": [<item:mythicupgrades:jade_hoe>, <item:mythicupgrades:ametrine_hoe>,
						<item:mythicupgrades:jade_shovel>, <item:mythicupgrades:ametrine_shovel>,
						<item:mythicupgrades:jade_axe>, <item:mythicupgrades:ametrine_axe>,
						<item:mythicupgrades:jade_pickaxe>, <item:mythicupgrades:ametrine_pickaxe>],
        "elytra": [<item:minecraft:elytra>],
    };

    // Tool tier arrays and probability distributions for each dimension
    private static val OVERWORLD_TOOL_TIERS as string[] = ["fishing rod", "wooden", "stone", "golden", "iron", "diamond"];
	private static val NETHER_TOOL_TIERS as string[] = ["golden", "iron", "diamond", "netherite"];
	private static val END_TOOL_TIERS as string[] = ["diamond", "netherite", "mythic low", "mythic mid", "mythic high", "elytra"];

    // Cumulative probability distributions (luck affects which tier is selected)
	private static val OVERWORLD_TOOLS_DISTRIBUTION as float[] = [0.02, 0.10, 0.25, 0.50, 0.90, 1.00];
	private static val NETHER_TOOLS_DISTRIBUTION as float[] = [0.15, 0.55, 0.90, 1.00];
	private static val END_TOOLS_DISTRIBUTION as float[] = [0.20, 0.60, 0.70, 0.80, 0.90, 1.00];

    // ========================================
    // WEAPON LOOT POOLS BY DIMENSION
    // ========================================
    
	private static val OVERWORLD_WEAPON_POOLS as IItemStack[][string] = 
    {
		"wooden": [<item:minecraft:wooden_sword>],
		"stone": [<item:minecraft:stone_sword>],
		"bow": [<item:minecraft:bow>],
		"golden": [<item:minecraft:golden_sword>],
		"crossbow": [<item:minecraft:crossbow>],
		"iron": [<item:minecraft:iron_sword>],
		"trident": [<item:minecraft:trident>],
		"diamond": [<item:minecraft:diamond_sword>],
	};

	private static val NETHER_WEAPON_POOLS as IItemStack[][string] = 
    {
		"golden": [<item:minecraft:golden_sword>],
		"bow": [<item:minecraft:bow>],
		"iron": [<item:minecraft:iron_sword>],
		"crossbow": [<item:minecraft:crossbow>],
		"diamond": [<item:minecraft:diamond_sword>],
		"netherite": [<item:minecraft:netherite_sword>],
	};

	private static val END_WEAPON_POOLS as IItemStack[][string] = 
    {
        "bow": [<item:minecraft:bow>],
        "crossbow": [<item:minecraft:crossbow>],
		"diamond": [<item:minecraft:diamond_sword>],
		"netherite": [<item:minecraft:netherite_sword>],
        "mace": [<item:minecraft:mace>],
		"mythic low": [<item:mythicupgrades:topaz_sword>, <item:mythicupgrades:peridot_sword>, <item:mythicupgrades:aquamarine_sword>],
		"mythic mid": [<item:mythicupgrades:ruby_sword>, <item:mythicupgrades:sapphire_sword>],
		"mythic high": [<item:mythicupgrades:jade_sword>, <item:mythicupgrades:ametrine_sword>],
	};

    private static val OVERWORLD_WEAPON_TIERS as string[] = ["wooden", "stone", "trident", "bow", "golden", "crossbow", "iron", "diamond"];
	private static val NETHER_WEAPON_TIERS as string[] = ["golden", "bow", "iron", "crossbow", "diamond", "netherite"];
	private static val END_WEAPON_TIERS as string[] = ["bow", "crossbow", "diamond", "netherite", "mace", "mythic low", "mythic mid", "mythic high"];

	private static val OVERWORLD_WEAPON_DISTRIBUTION as float[] = [0.05, 0.15, 0.20, 0.35, 0.45, 0.60, 0.90, 1.00];
	private static val NETHER_WEAPON_DISTRIBUTION as float[] = [0.10, 0.25, 0.45, 0.60, 0.90, 1.00];
	private static val END_WEAPON_DISTRIBUTION as float[] = [0.10, 0.20, 0.30, 0.55, 0.70, 0.80, 0.90, 1.00];

    // ========================================
    // ARMOR LOOT POOLS BY DIMENSION
    // ========================================
    
	private static val OVERWORLD_ARMOR_POOLS as IItemStack[][string] = 
    {
		"leather": [<item:minecraft:leather_helmet>, <item:minecraft:leather_boots>, <item:minecraft:leather_leggings>, <item:minecraft:leather_chestplate>, <item:minecraft:leather_horse_armor>],
		"chainmail": [<item:minecraft:chainmail_helmet>, <item:minecraft:chainmail_boots>, <item:minecraft:chainmail_leggings>, <item:minecraft:chainmail_chestplate>],
		"turtle helmet": [<item:minecraft:turtle_helmet>],
        "golden": [<item:minecraft:golden_helmet>, <item:minecraft:golden_boots>, <item:minecraft:golden_leggings>, <item:minecraft:golden_chestplate>],
		"shield": [<item:minecraft:shield>],
        "iron": [<item:minecraft:iron_helmet>, <item:minecraft:iron_boots>, <item:minecraft:iron_leggings>, <item:minecraft:iron_chestplate>, <item:horseshoes:iron_horseshoes>, <item:minecraft:iron_horse_armor>],
		"diamond": [<item:minecraft:diamond_helmet>, <item:minecraft:diamond_boots>, <item:minecraft:diamond_leggings>, <item:minecraft:diamond_chestplate>],
	};

	private static val NETHER_ARMOR_POOLS as IItemStack[][string] = 
    {
		"golden": [<item:minecraft:golden_helmet>, <item:minecraft:golden_boots>, <item:minecraft:golden_leggings>, <item:minecraft:golden_chestplate>, <item:horseshoes:gold_horseshoes>, <item:minecraft:golden_horse_armor>],
		"shield": [<item:minecraft:shield>],
        "iron": [<item:minecraft:iron_helmet>, <item:minecraft:iron_boots>, <item:minecraft:iron_leggings>, <item:minecraft:iron_chestplate>, <item:horseshoes:iron_horseshoes>, <item:minecraft:iron_horse_armor>],
		"diamond": [<item:minecraft:diamond_helmet>, <item:minecraft:diamond_boots>, <item:minecraft:diamond_leggings>, <item:minecraft:diamond_chestplate>, <item:horseshoes:diamond_horseshoes>],
		"netherite": [<item:minecraft:netherite_helmet>, <item:minecraft:netherite_boots>, <item:minecraft:netherite_leggings>, <item:minecraft:netherite_chestplate>],
	};

	private static val END_ARMOR_POOLS as IItemStack[][string] = 
    {
		"diamond": [<item:minecraft:diamond_helmet>, <item:minecraft:diamond_boots>, <item:minecraft:diamond_leggings>, <item:minecraft:diamond_chestplate>, <item:minecraft:diamond_horse_armor>],
		"netherite": [<item:minecraft:netherite_helmet>, <item:minecraft:netherite_boots>, <item:minecraft:netherite_leggings>, <item:minecraft:netherite_chestplate>],
		"mythic low": [<item:mythicupgrades:topaz_helmet>, <item:mythicupgrades:peridot_helmet>, <item:mythicupgrades:aquamarine_helmet>,
					<item:mythicupgrades:topaz_boots>, <item:mythicupgrades:peridot_boots>, <item:mythicupgrades:aquamarine_boots>,
					<item:mythicupgrades:topaz_leggings>, <item:mythicupgrades:peridot_leggings>, <item:mythicupgrades:aquamarine_leggings>,
					<item:mythicupgrades:topaz_chestplate>, <item:mythicupgrades:peridot_chestplate>, <item:mythicupgrades:aquamarine_chestplate>],
		"mythic mid": [<item:mythicupgrades:ruby_helmet>, <item:mythicupgrades:sapphire_helmet>,
					<item:mythicupgrades:ruby_boots>, <item:mythicupgrades:sapphire_boots>,
					<item:mythicupgrades:ruby_leggings>, <item:mythicupgrades:sapphire_leggings>,
					<item:mythicupgrades:ruby_chestplate>, <item:mythicupgrades:sapphire_chestplate>],
		"mythic high": [<item:mythicupgrades:jade_helmet>, <item:mythicupgrades:ametrine_helmet>,
						<item:mythicupgrades:jade_boots>, <item:mythicupgrades:ametrine_boots>,
						<item:mythicupgrades:jade_leggings>, <item:mythicupgrades:ametrine_leggings>,
						<item:mythicupgrades:jade_chestplate>, <item:mythicupgrades:ametrine_chestplate>]
	};

    private static val OVERWORLD_ARMOR_TIERS as string[] = ["leather", "chainmail", "turtle helmet", "golden", "shield", "iron", "diamond"];
	private static val NETHER_ARMOR_TIERS as string[] = ["golden", "shield", "iron", "diamond", "netherite"];
	private static val END_ARMOR_TIERS as string[] = ["diamond", "netherite", "mythic low", "mythic mid", "mythic high"];

	private static val OVERWORLD_ARMOR_DISTRIBUTION as float[] = [0.05, 0.20, 0.25, 0.40, 0.60, 0.98, 1.00];
	private static val NETHER_ARMOR_DISTRIBUTION as float[] = [0.10, 0.25, 0.50, 0.90, 1.00];
	private static val END_ARMOR_DISTRIBUTION as float[] = [0.25, 0.70, 0.80, 0.90, 1.00];

    // ========================================
    // CURRENCY SYSTEM - NUMISMATIC OVERHAUL
    // ========================================
    // Money bag ranges by dimension and prestige level (bronze/silver/gold currency)
    
    private static val MONEY_BAG_RANGES as int[][][string] =
    {
		"overworld": 
        [
            [10, 15],           // 10	bronze  -   15	    bronze
            [15, 25],           // 15	bronze  -   25	    bronze
            [25, 45],           // 25	bronze  -   45	    bronze
            [45, 75],           // 45	bronze  -   75	    bronze
            [75, 115],          // 75	bronze  -   1.15    silver
            [115, 165]          // 1.15	silver  -   1.65    silver
        ],
        "nether": 
        [
            [200, 700],         // 2	silver  -   7		silver
            [1200, 2000],       // 12	silver  -   20		silver
            [2000, 3000],       // 20	silver  -   30		silver
            [3000, 5000],       // 30	silver  -   50		silver
            [5000, 8000],       // 50	silver  -   80		silver
            [8000, 12000]       // 80	silver  -   1.20	gold
        ],
        "end": 
        [
            [10000, 15000],     // 1	gold    -   1.5	    gold
            [15000, 25000],     // 1.5	gold    -   2.5	    gold
            [25000, 40000],     // 2.5	gold    -   4	    gold
            [40000, 60000],     // 4	gold    -   6	    gold
            [60000, 85000],     // 6	gold    -   8.5	    gold
            [85000, 120000]     // 8.5	gold    -   12	    gold
        ]
	};

    // ========================================
    // ARTIFACTS MOD INTEGRATION
    // ========================================
    // Curated artifact pools by dimension theme and power level
    
    private static val ARTIFACT_POOLS as IItemStack[][string] =
    {
        "overworld": [
            <item:artifacts:snorkel>, <item:artifacts:plastic_drinking_hat>, <item:artifacts:novelty_drinking_hat>,
            <item:artifacts:umbrella>, <item:artifacts:cowboy_hat>, <item:artifacts:panic_necklace>,
            <item:artifacts:charm_of_sinking>, <item:artifacts:flippers>, <item:artifacts:snowshoes>,
            <item:artifacts:kitty_slippers>, <item:artifacts:onion_ring>, <item:artifacts:pocket_piston>,
            <item:artifacts:helium_flamingo>, <item:artifacts:universal_attractor>, <item:artifacts:cloud_in_a_bottle>,
            <item:artifacts:anglers_hat>, <item:artifacts:charm_of_shrinking>, <item:artifacts:whoopee_cushion>
        ],
        "nether": [
            <item:artifacts:crystal_heart>, <item:artifacts:digging_claws>, <item:artifacts:fire_gauntlet>,
            <item:artifacts:aqua_dashers>, <item:artifacts:steadfast_spikes>, <item:artifacts:rooted_boots>,
            <item:artifacts:everlasting_beef>, <item:artifacts:villager_hat>, <item:artifacts:superstitious_hat>,
            <item:artifacts:lucky_scarf>, <item:artifacts:scarf_of_invisibility>, <item:artifacts:shock_pendant>,
            <item:artifacts:flame_pendant>, <item:artifacts:thorn_pendant>, <item:artifacts:obsidian_skull>,
            <item:artifacts:whoopee_cushion>
        ],
        "end": [
            <item:artifacts:snorkel>, <item:artifacts:plastic_drinking_hat>, <item:artifacts:novelty_drinking_hat>,
            <item:artifacts:umbrella>, <item:artifacts:cowboy_hat>, <item:artifacts:panic_necklace>,
            <item:artifacts:charm_of_sinking>, <item:artifacts:flippers>, <item:artifacts:snowshoes>,
            <item:artifacts:kitty_slippers>, <item:artifacts:onion_ring>, <item:artifacts:pocket_piston>,
            <item:artifacts:helium_flamingo>, <item:artifacts:universal_attractor>, <item:artifacts:cloud_in_a_bottle>,
            <item:artifacts:anglers_hat>, <item:artifacts:charm_of_shrinking>,

            <item:artifacts:crystal_heart>, <item:artifacts:digging_claws>, <item:artifacts:fire_gauntlet>,
            <item:artifacts:aqua_dashers>, <item:artifacts:steadfast_spikes>, <item:artifacts:rooted_boots>,
            <item:artifacts:everlasting_beef>, <item:artifacts:villager_hat>, <item:artifacts:superstitious_hat>,
            <item:artifacts:lucky_scarf>, <item:artifacts:scarf_of_invisibility>, <item:artifacts:shock_pendant>,
            <item:artifacts:flame_pendant>, <item:artifacts:thorn_pendant>, <item:artifacts:obsidian_skull>,

            <item:artifacts:cross_necklace>, <item:artifacts:antidote_vessel>, <item:artifacts:chorus_totem>,
            <item:artifacts:warp_drive>, <item:artifacts:power_glove>, <item:artifacts:golden_hook>,
        ]
    };

    // ========================================
    // BETTER ENCHANTING MOD INTEGRATION
    // ========================================
    // Essence pools organized by dimension and enchantment type
    
    private static val ESSENCE_POOLS as IItemStack[][string] =
    {
        "overworld": [
            <item:betterenchanting:essence_of_building>, <item:betterenchanting:essence_of_loyalty>,
            <item:betterenchanting:essence_of_riptide>, <item:betterenchanting:essence_of_impaling>,
            <item:betterenchanting:essence_of_channeling>, <item:betterenchanting:essence_of_sea>,
            <item:betterenchanting:essence_of_sea_luck>, <item:betterenchanting:essence_of_respiration>,
            <item:betterenchanting:essence_of_lure>, <item:betterenchanting:essence_of_piercing>,
            <item:betterenchanting:essence_of_efficiency>, <item:betterenchanting:essence_of_foraging>,
            <item:betterenchanting:essence_of_sight>, <item:betterenchanting:essence_of_projectile_protection>,
            <item:betterenchanting:essence_of_fear>, <item:betterenchanting:essence_of_ice>,
            <item:betterenchanting:essence_of_smite>, <item:betterenchanting:essence_of_arthropods>,
            <item:betterenchanting:essence_of_knockback>, <item:betterenchanting:essence_of_gravity>,
            <item:betterenchanting:essence_of_fire>, <item:betterenchanting:essence_of_punch>
        ],
        "nether": [
            <item:betterenchanting:essence_of_mining>, <item:betterenchanting:essence_of_fortune>,
            <item:betterenchanting:essence_of_silk_touch>, <item:betterenchanting:essence_of_quick_charge>,
            <item:betterenchanting:essence_of_multishot>, <item:betterenchanting:essence_of_power>,
            <item:betterenchanting:essence_of_arrows>, <item:betterenchanting:essence_of_sneak_1>,
            <item:betterenchanting:essence_of_sneak_2>, <item:betterenchanting:essence_of_sneak_3>,
            <item:betterenchanting:soul_essence_1>, <item:betterenchanting:soul_essence_2>,
            <item:betterenchanting:soul_essence_3>, <item:betterenchanting:essence_of_feather>,
            <item:betterenchanting:essence_of_blast_protection>, <item:betterenchanting:essence_of_protection>,
            <item:betterenchanting:essence_of_fire_protection>, <item:betterenchanting:essence_of_poison_protection>,
            <item:betterenchanting:essence_of_unbreaking>, <item:betterenchanting:essence_of_looting>,
            <item:betterenchanting:essence_of_sharpness>, <item:betterenchanting:essence_of_combat>,
            <item:betterenchanting:essence_of_sweeping>, <item:betterenchanting:essence_of_breach>,
            <item:betterenchanting:essence_of_density>, <item:betterenchanting:essence_of_wind>
        ],
        "end": [
            <item:betterenchanting:essence_of_levitation>,
            <item:betterenchanting:essence_of_experience>, <item:betterenchanting:essence_of_health>,
            <item:betterenchanting:essence_of_wings>, <item:betterenchanting:essence_of_vampirism>,
            <item:betterenchanting:essence_of_thorn>, 
        ]
    };

    // ========================================
    // POTION GENERATION - VANILLA INTEGRATION
    // ========================================
    // Potion effect pools organized by dimension with progression-appropriate effects
    // Each dimension provides different tiers of potions reflecting danger and rewards
    
    /**
     * Potion effect pools by dimension - effects scale with dimension difficulty.
     * Overworld focuses on basic utility and simple combat effects.
     * Nether introduces stronger variants and fire resistance for the environment.
     * End provides the most powerful effects for end-game content.
     */
    private static val EFFECT_POOLS as string[][string] =
    {
        "overworld": [
            "minecraft:healing",
            "minecraft:regeneration",
            "minecraft:swiftness",
            "minecraft:leaping",
            "minecraft:water_breathing",
            "minecraft:night_vision",
            "minecraft:invisibility",
            "minecraft:weakness",
            "minecraft:slowness",
            "minecraft:poison",
            "minecraft:harming"
        ],
        "nether": [
            "minecraft:fire_resistance",
            "minecraft:strength",
            "minecraft:long_fire_resistance",
            "minecraft:long_strength",
            "minecraft:strong_healing",
            "minecraft:strong_swiftness",
            "minecraft:strong_leaping",
            "minecraft:strong_regeneration",
            "minecraft:strong_poison",
            "minecraft:strong_harming",
            "minecraft:turtle_master",
            "minecraft:slow_falling"
        ],
        "end": [
            "minecraft:strong_strength",
            "minecraft:long_invisibility",
            "minecraft:long_night_vision",
            "minecraft:long_water_breathing",
            "minecraft:long_slow_falling",
            "minecraft:strong_turtle_master",
            "minecraft:long_turtle_master",
            "minecraft:strong_slowness",
            "minecraft:long_weakness",
            "minecraft:strong_poison",
            "minecraft:strong_harming",
            "minecraft:long_poison"
        ]
    };

    /**
     * Available potion delivery methods - supports all vanilla potion types.
     * Regular potions for direct consumption, splash for area effects,
     * and lingering for persistent area denial or support.
     */
    private static val POTION_TYPES as IItemStack[] =
    [
        <item:minecraft:potion>,
        <item:minecraft:splash_potion>,
        <item:minecraft:lingering_potion>
    ];

    private static val HAT_BAG_DISTRIBUTION as float[][string] = {
        "overworld": [0.60, 0.90, 0.98, 1.00],
        "nether": [0.20, 0.55, 0.90, 1.00],
        "end": [0.05, 0.20, 0.70, 1.00],
    };

    /**
    * Available goat horn variants with different instrument sounds
    */
    private static val GOAT_HORNS as IItemStack[] = [
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "ponder_goat_horn"),
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "sing_goat_horn"),
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "seek_goat_horn"),
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "feel_goat_horn"),
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "admire_goat_horn"),
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "call_goat_horn"),
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "yearn_goat_horn"),
        <item:minecraft:goat_horn>.withJsonComponent(<componenttype:minecraft:instrument>, "dream_goat_horn")
    ];

    // ========================================
    // TOOL GENERATION METHODS
    // ========================================

    /**
     * Generates a random tool with probability check and full component integration.
     * Uses luck-based tier selection and applies enchantments, tiers, and other components.
     * 
     * @param probability The base chance (0.0-1.0) for generation, modified by player luck
     */
	public generateToolWithProbability(probability as float) as void
	{
        var luck = 0.0 as float;
        if (loot_context.biome == "trial_chamber_spawner") { luck = 4.0 as float; }
        else { luck = loot_context.player_luck as float; }

        // Check if generation should occur (with luck bonus)
        val generated_probability = loot_context.random.nextFloat();
        if (generated_probability >= probability + (luck / 100.0)) { return; }

        // Apply luck-based tier selection using power function skewing
		val luck_factor = 1.0 - luck * 0.15;
		val tier_pick = Functions.pow(loot_context.random.nextFloat(), luck_factor);
		
        // Select appropriate pools and distributions based on dimension
		var material_key = "";
		var tool_pool = { } as IItemStack[][string];

		if (loot_context.dimension == "overworld")
		{
			tool_pool = OVERWORLD_TOOL_POOLS;
			if      (tier_pick <= OVERWORLD_TOOLS_DISTRIBUTION[0]) { material_key = OVERWORLD_TOOL_TIERS[0]; }
			else if (tier_pick <= OVERWORLD_TOOLS_DISTRIBUTION[1]) { material_key = OVERWORLD_TOOL_TIERS[1]; }
			else if (tier_pick <= OVERWORLD_TOOLS_DISTRIBUTION[2]) { material_key = OVERWORLD_TOOL_TIERS[2]; }
			else if (tier_pick <= OVERWORLD_TOOLS_DISTRIBUTION[3]) { material_key = OVERWORLD_TOOL_TIERS[3]; }
			else if (tier_pick <= OVERWORLD_TOOLS_DISTRIBUTION[4]) { material_key = OVERWORLD_TOOL_TIERS[4]; }
			else                                           	       { material_key = OVERWORLD_TOOL_TIERS[5]; }
		}
		else if (loot_context.dimension == "nether")
		{
			tool_pool = NETHER_TOOL_POOLS;
			if      (tier_pick <= NETHER_TOOLS_DISTRIBUTION[0]) { material_key = NETHER_TOOL_TIERS[0]; }
			else if (tier_pick <= NETHER_TOOLS_DISTRIBUTION[1]) { material_key = NETHER_TOOL_TIERS[1]; }
			else if (tier_pick <= NETHER_TOOLS_DISTRIBUTION[2]) { material_key = NETHER_TOOL_TIERS[2]; }
			else                                                { material_key = NETHER_TOOL_TIERS[3]; }
		}
		else if (loot_context.dimension == "end")
		{
			tool_pool = END_TOOL_POOLS;
			if      (tier_pick <= END_TOOLS_DISTRIBUTION[0]) { material_key = END_TOOL_TIERS[0]; }
			else if (tier_pick <= END_TOOLS_DISTRIBUTION[1]) { material_key = END_TOOL_TIERS[1]; }
			else if (tier_pick <= END_TOOLS_DISTRIBUTION[2]) { material_key = END_TOOL_TIERS[2]; }
			else if (tier_pick <= END_TOOLS_DISTRIBUTION[3]) { material_key = END_TOOL_TIERS[3]; }
			else if (tier_pick <= END_TOOLS_DISTRIBUTION[4]) { material_key = END_TOOL_TIERS[4]; }
			else                                             { material_key = END_TOOL_TIERS[5]; }
		}

        // Select specific tool from tier with luck-based selection
		val material_items = tool_pool[material_key];
        val tool_index = loot_context.random.nextInt(0, material_items.length as int);

        // Create item descriptor and assembler for component integration
		val item_descriptor = new ItemDescriptor(material_items[tool_index]);
        val item_assembler = new ItemAssembler(item_descriptor);

        // Apply enchantments if item supports them
        if (item_descriptor.can_receive_enchantments)
        {
            val enchantment_component = EnchantmentComponent.generateRandomEnchantmentData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(enchantment_component);
        }

        // Apply tiers if item supports them
        if (item_descriptor.can_be_tiered)
        {
            val tier_component = TierComponent.generateRandomTierData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(tier_component);
        }

        if (item_descriptor.can_apply_banner)
        {
            val pattern_component = PatternComponent.generateRandomPatternData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(pattern_component);
        }

        // Build final item and add to loot
		loot_context.addLoot(item_assembler.build());
	}

    /**
     * Generates a random weapon with probability check and full component integration.
     * 
     * @param probability The base chance (0.0-1.0) for generation, modified by player luck
     */
	public generateWeaponWithProbability(probability as float) as void
	{
        var luck = 0.0 as float;
        if (loot_context.biome == "trial_chamber_spawner") { luck = 4.0 as float; }
        else { luck = loot_context.player_luck as float; }
        
        // Check if generation should occur (with luck bonus)
        val generated_probability = loot_context.random.nextFloat();
        if (generated_probability >= probability + (luck / 100.0)) { return; }

		val luck_factor = 1.0 - luck * 0.15;
		val tier_pick = Functions.pow(loot_context.random.nextFloat(), luck_factor);
		var material_key = "";
		var weapon_pool = {} as IItemStack[][string];

		if (loot_context.dimension == "overworld")
		{
			weapon_pool = OVERWORLD_WEAPON_POOLS;
			if      (tier_pick <= OVERWORLD_WEAPON_DISTRIBUTION[0]) { material_key = OVERWORLD_WEAPON_TIERS[0]; }
			else if (tier_pick <= OVERWORLD_WEAPON_DISTRIBUTION[1]) { material_key = OVERWORLD_WEAPON_TIERS[1]; }
			else if (tier_pick <= OVERWORLD_WEAPON_DISTRIBUTION[2]) { material_key = OVERWORLD_WEAPON_TIERS[2]; }
			else if (tier_pick <= OVERWORLD_WEAPON_DISTRIBUTION[3]) { material_key = OVERWORLD_WEAPON_TIERS[3]; }
			else if (tier_pick <= OVERWORLD_WEAPON_DISTRIBUTION[4]) { material_key = OVERWORLD_WEAPON_TIERS[4]; }
			else if (tier_pick <= OVERWORLD_WEAPON_DISTRIBUTION[5]) { material_key = OVERWORLD_WEAPON_TIERS[5]; }
			else if (tier_pick <= OVERWORLD_WEAPON_DISTRIBUTION[6]) { material_key = OVERWORLD_WEAPON_TIERS[6]; }
			else                                                    { material_key = OVERWORLD_WEAPON_TIERS[7]; }
		}
		else if (loot_context.dimension == "nether")
		{
			weapon_pool = NETHER_WEAPON_POOLS;
			if      (tier_pick <= NETHER_WEAPON_DISTRIBUTION[0]) { material_key = NETHER_WEAPON_TIERS[0]; }
			else if (tier_pick <= NETHER_WEAPON_DISTRIBUTION[1]) { material_key = NETHER_WEAPON_TIERS[1]; }
			else if (tier_pick <= NETHER_WEAPON_DISTRIBUTION[2]) { material_key = NETHER_WEAPON_TIERS[2]; }
			else if (tier_pick <= NETHER_WEAPON_DISTRIBUTION[3]) { material_key = NETHER_WEAPON_TIERS[3]; }
			else if (tier_pick <= NETHER_WEAPON_DISTRIBUTION[4]) { material_key = NETHER_WEAPON_TIERS[4]; }
			else                                                 { material_key = NETHER_WEAPON_TIERS[5]; }
		}
		else if (loot_context.dimension == "end")
		{
			weapon_pool = END_WEAPON_POOLS;
			if      (tier_pick <= END_WEAPON_DISTRIBUTION[0]) { material_key = END_WEAPON_TIERS[0]; }
			else if (tier_pick <= END_WEAPON_DISTRIBUTION[1]) { material_key = END_WEAPON_TIERS[1]; }
			else if (tier_pick <= END_WEAPON_DISTRIBUTION[2]) { material_key = END_WEAPON_TIERS[2]; }
			else if (tier_pick <= END_WEAPON_DISTRIBUTION[3]) { material_key = END_WEAPON_TIERS[3]; }
			else if (tier_pick <= END_WEAPON_DISTRIBUTION[4]) { material_key = END_WEAPON_TIERS[4]; }
			else if (tier_pick <= END_WEAPON_DISTRIBUTION[5]) { material_key = END_WEAPON_TIERS[5]; }
			else if (tier_pick <= END_WEAPON_DISTRIBUTION[6]) { material_key = END_WEAPON_TIERS[6]; }
			else                                              { material_key = END_WEAPON_TIERS[7]; }
		}

		val material_weapons = weapon_pool[material_key];
        val weapon_index = loot_context.random.nextInt(0, material_weapons.length as int);

		val item_descriptor = new ItemDescriptor(material_weapons[weapon_index]);
        val item_assembler = new ItemAssembler(item_descriptor);

        if (item_descriptor.can_receive_enchantments)
        {
            val enchantment_component = EnchantmentComponent.generateRandomEnchantmentData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(enchantment_component);
        }

        if (item_descriptor.can_be_tiered)
        {
            val tier_component = TierComponent.generateRandomTierData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(tier_component);
        }

		loot_context.addLoot(item_assembler.build());
	}

    /**
     * Generates random armor with probability check and full component integration.
     * Includes support for trims and banner patterns on applicable items.
     * 
     * @param probability The base chance (0.0-1.0) for generation, modified by player luck
     */
	public generateArmorWithProbability(probability as float) as void
	{
        var luck = 0.0 as float;
        if (loot_context.biome == "trial_chamber_spawner") { luck = 4.0 as float; }
        else { luck = loot_context.player_luck as float; }

        // Check if generation should occur (with luck bonus)
        val generated_probability = loot_context.random.nextFloat();
        if (generated_probability >= probability + (luck / 100.0)) { return; }

		val luck_factor = 1.0 - luck * 0.15;
		val tier_pick = Functions.pow(loot_context.random.nextFloat(), luck_factor);
        var material_key = "";
		var armor_pool = {} as IItemStack[][string];

		if (loot_context.dimension == "overworld")
		{
			armor_pool = OVERWORLD_ARMOR_POOLS;
			if      (tier_pick <= OVERWORLD_ARMOR_DISTRIBUTION[0]) { material_key = OVERWORLD_ARMOR_TIERS[0]; }
			else if (tier_pick <= OVERWORLD_ARMOR_DISTRIBUTION[1]) { material_key = OVERWORLD_ARMOR_TIERS[1]; }
			else if (tier_pick <= OVERWORLD_ARMOR_DISTRIBUTION[2]) { material_key = OVERWORLD_ARMOR_TIERS[2]; }
			else if (tier_pick <= OVERWORLD_ARMOR_DISTRIBUTION[3]) { material_key = OVERWORLD_ARMOR_TIERS[3]; }
			else if (tier_pick <= OVERWORLD_ARMOR_DISTRIBUTION[4]) { material_key = OVERWORLD_ARMOR_TIERS[4]; }
			else if (tier_pick <= OVERWORLD_ARMOR_DISTRIBUTION[5]) { material_key = OVERWORLD_ARMOR_TIERS[5]; }
			else                                                   { material_key = OVERWORLD_ARMOR_TIERS[6]; }
		}
		else if (loot_context.dimension == "nether")
		{
			armor_pool = NETHER_ARMOR_POOLS;
			if      (tier_pick <= NETHER_ARMOR_DISTRIBUTION[0]) { material_key = NETHER_ARMOR_TIERS[0]; }
			else if (tier_pick <= NETHER_ARMOR_DISTRIBUTION[1]) { material_key = NETHER_ARMOR_TIERS[1]; }
			else if (tier_pick <= NETHER_ARMOR_DISTRIBUTION[2]) { material_key = NETHER_ARMOR_TIERS[2]; }
			else if (tier_pick <= NETHER_ARMOR_DISTRIBUTION[3]) { material_key = NETHER_ARMOR_TIERS[3]; }
			else                                                { material_key = NETHER_ARMOR_TIERS[4]; }
		}
		else if (loot_context.dimension == "end")
		{
			armor_pool = END_ARMOR_POOLS;
			if      (tier_pick <= END_ARMOR_DISTRIBUTION[0]) { material_key = END_ARMOR_TIERS[0]; }
			else if (tier_pick <= END_ARMOR_DISTRIBUTION[1]) { material_key = END_ARMOR_TIERS[1]; }
			else if (tier_pick <= END_ARMOR_DISTRIBUTION[2]) { material_key = END_ARMOR_TIERS[2]; }
			else if (tier_pick <= END_ARMOR_DISTRIBUTION[3]) { material_key = END_ARMOR_TIERS[3]; }
			else                                             { material_key = END_ARMOR_TIERS[4]; }
		}

		val material_armors = armor_pool[material_key];
        val armor_index = loot_context.random.nextInt(0, material_armors.length as int);

		val item_descriptor = new ItemDescriptor(material_armors[armor_index]);
        val item_assembler = new ItemAssembler(item_descriptor);

        // Apply all applicable components
        if (item_descriptor.can_receive_enchantments)
        {
            val enchantment_component = EnchantmentComponent.generateRandomEnchantmentData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(enchantment_component);
        }

        if (item_descriptor.can_be_tiered)
        {
            val tier_component = TierComponent.generateRandomTierData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(tier_component);
        }

        if (item_descriptor.can_apply_trims)
        {
            val trim_component = TrimComponent.generateRandomTrimData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(trim_component);
        }

        if (item_descriptor.can_apply_banner)
        {
            val pattern_component = PatternComponent.generateRandomPatternData(item_descriptor, loot_context);
            item_assembler.addComponentIfNotEmpty(pattern_component);
        }

        loot_context.addLoot(item_assembler.build());
	}

    // ========================================
    // BATCH GENERATION METHODS
    // ========================================

    /**
     * Generates multiple tools with the same probability.
     * 
     * @param number_of_generations How many generation attempts to make
     * @param probability The base chance for each generation attempt
     */
    public generateNToolsWithProbability(number_of_generations as int, probability as float) as void
    {
        for i in 0 .. number_of_generations { generateToolWithProbability(probability); }
    }

    /**
     * Generates multiple weapons with the same probability.
     * 
     * @param number_of_generations How many generation attempts to make
     * @param probability The base chance for each generation attempt
     */
    public generateNWeaponsWithProbability(number_of_generations as int, probability as float) as void
    {
        for i in 0 .. number_of_generations { generateWeaponWithProbability(probability); }
    }

    /**
     * Generates multiple armor pieces with the same probability.
     * 
     * @param number_of_generations How many generation attempts to make
     * @param probability The base chance for each generation attempt
     */
    public generateNArmorsWithProbability(number_of_generations as int, probability as float) as void
    {
        for i in 0 .. number_of_generations { generateArmorWithProbability(probability); }
    }

    // ========================================
    // CURRENCY GENERATION - NUMISMATIC OVERHAUL
    // ========================================

    /**
     * Generates a money bag with dimension and prestige-appropriate currency amounts.
     * Integrates with Numismatic Overhaul's bronze/silver/gold currency system.
     * 
     * @param chest_prestige The prestige level (0-5) determining currency range
     * @param probability The base chance for generation, modified by player luck
     */
    public generateMoneyBagWithProbability(chest_prestige as int, probability as float) as void
    {
        // Check if generation should occur (with luck bonus)
        val generated_probability = loot_context.random.nextFloat();
        if (generated_probability >= probability + (loot_context.player_luck / 100.0)) { return; }

        // Validate prestige level with bounds checking
        var validated_prestige = chest_prestige;
        if (chest_prestige < 0)
        {
            println("[WARNING]: LootGenerator.generateMoneyBagWithProbability received prestige " + chest_prestige as string + ", defaulting to 0.");
            validated_prestige = 0;
        }
        if (chest_prestige > 5)
        {
            println("[WARNING]: LootGenerator.generateMoneyBagWithProbability received prestige " + chest_prestige as string + ", defaulting to 5.");
            validated_prestige = 5;
        }

        // Get dimension-specific currency ranges
        val currency_ranges = MONEY_BAG_RANGES[loot_context.dimension];
        val selected_range = currency_ranges[validated_prestige];
        val min_value = selected_range[0];
        val max_value = selected_range[1];

        // Generate random value in range and convert to bronze/silver/gold
        var total_bronze = loot_context.random.nextInt(min_value, max_value + 1);

        val bronze_coins = total_bronze % 100;
        total_bronze = (total_bronze - bronze_coins) / 100;

        val silver_coins = total_bronze % 100;
        total_bronze = (total_bronze - silver_coins) / 100;

        val gold_coins = total_bronze;

        // Create money bag with currency component
        val money_bag = <item:numismatic-overhaul:money_bag>.withJsonComponent(
            <componenttype:numismatic-overhaul:money_bag>, 
            {gold: gold_coins, silver: silver_coins, bronze: bronze_coins}
        );

        loot_context.addLoot(money_bag);
    }

    // ========================================
    // ARTIFACTS MOD INTEGRATION
    // ========================================

    /**
     * Generates artifacts based on average chest count distribution.
     * Uses sophisticated probability scaling for proper rarity.
     * 
     * @param average_chest_count Average number of chests in this loot context
     */
    public generateArtifact(average_chest_count as float) as void
    {
        if (average_chest_count < 1.0) 
        {
            println("[WARNING]: LootGenerator.generateArtifact received average_chest_count " + average_chest_count as string + ", defaulting to 1.0.");
            average_chest_count = 1.0;
        }

        // Calculate probability distribution based on chest rarity
        val none_probability = Functions.pow(0.10, 1.0 / average_chest_count);
        val luck_modified_roll = (loot_context.random.nextFloat() + loot_context.player_luck / 10.0) as double;

        if (luck_modified_roll < none_probability) { return; }

        // Select artifact from dimension-appropriate pool
        val artifact_pool = ARTIFACT_POOLS[loot_context.dimension];
        val artifact_index = loot_context.random.nextInt(0, artifact_pool.length as int);
        loot_context.addLoot(artifact_pool[artifact_index]);
    }

    // ========================================
    // BETTER ENCHANTING MOD INTEGRATION
    // ========================================

    /**
     * Generates multiple essence items from Better Enchanting mod.
     * 
     * @param essence_count Maximum number of essences to attempt to generate
     * @param average_chest_count Average number of chests affecting probability
     */
    public generateNEssences(essence_count as int, average_chest_count as float) as void
    {
        // Validate chest count parameter with defensive programming
        if (average_chest_count < 1.0) 
        {
            println("[WARNING]: LootGenerator.generateNEssences received average_chest_count " + average_chest_count as string + ", defaulting to 1.0.");
            average_chest_count = 1.0;
        }

        // Calculate probability distribution based on chest rarity and essence count
        // Higher chest counts and more essence attempts reduce individual generation chance
        val none_probability = Functions.pow(0.80, 1.0 / average_chest_count * essence_count);
        
        // Get dimension-specific essence pool for contextual enchanting materials
        val essence_pool = ESSENCE_POOLS[loot_context.dimension];

        // Attempt to generate each essence with probability-based success
        for i in 0 .. essence_count
        {
            // Apply luck modifier to generation roll for better rewards with higher luck
            val luck_modified_roll = (loot_context.random.nextFloat() + loot_context.player_luck / 10.0) as double;

            // Check if this generation attempt fails based on probability
            if (luck_modified_roll < none_probability) { i++; continue; }

            // Select random essence from dimension-appropriate pool
            val essence_index = loot_context.random.nextInt(0, essence_pool.length as int);
            
            // Add selected essence to loot context
            loot_context.addLoot(essence_pool[essence_index]);
        }
    }

    /**
     * Generates multiple random potions from dimension-appropriate effect pools.
     * Combines random potion types (regular/splash/lingering) with dimension-scaled
     * effects to create contextually appropriate consumable rewards.
     * 
     * @param potion_count The number of potions to generate
     */
    public generateNPotionsWithProbability(potion_count as int, probability as float) as void
    {
        // Get dimension-specific effect pool for contextual rewards
        var effects = EFFECT_POOLS[loot_context.dimension];

        // Generate each potion with random type and effect combination
        for i in 0 .. potion_count
        {
            // Check if generation should occur (with luck bonus)
            val generated_probability = loot_context.random.nextFloat();
            if (generated_probability >= probability + (loot_context.player_luck / 100.0)) { i++; continue; }

            // Select random potion delivery method (regular/splash/lingering)
            val potion_type_index = loot_context.random.nextInt(0, POTION_TYPES.length as int);
            
            // Select random effect from dimension-appropriate pool
            val effect_index = loot_context.random.nextInt(0, effects.length as int);

            // Get the selected potion type and effect
            val potion_type = POTION_TYPES[potion_type_index];
            val effect = effects[effect_index];

            // Create potion with selected type and apply the chosen effect
            val potion = potion_type
                .withJsonComponent(
                    <componenttype:minecraft:potion_contents>, {potion: effect});
            
            // Add completed potion to loot context
            loot_context.addLoot(potion);
        }
    }

    public generateHatBagWithProbability(probability as float) as void
    {
        // Check if generation should occur (with luck bonus)
        val generated_probability = loot_context.random.nextFloat();
        if (generated_probability >= probability + (loot_context.player_luck / 100.0)) { return; }

        // Apply luck-based tier selection using power function skewing
		val luck_factor = 1.0 - loot_context.player_luck * 0.15;
		val tier_pick = Functions.pow(loot_context.random.nextFloat(), luck_factor);
		
        // Select appropriate pools and distributions based on dimension
        val dimension_distribution = HAT_BAG_DISTRIBUTION[loot_context.dimension];
		var loot_bag = <item:minecraft:air>;

		if      (tier_pick <= dimension_distribution[0]) { loot_bag = <item:simplehats:hatbag_common>; }
        else if (tier_pick <= dimension_distribution[1]) { loot_bag = <item:simplehats:hatbag_uncommon>; }
        else if (tier_pick <= dimension_distribution[2]) { loot_bag = <item:simplehats:hatbag_rare>; }
        else                                           	 { loot_bag = <item:simplehats:hatbag_epic>; }

        // Build final item and add to loot
		loot_context.addLoot(loot_bag);
    }

    /**
    * Generates a random goat horn with probability check.
    * 
    * @param probability The base chance (0.0-1.0) for generation, modified by player luck
    */
    public generateGoatHornWithProbability(probability as float) as void
    {
        // Check if generation should occur (with luck bonus)
        val generated_probability = loot_context.random.nextFloat();
        if (generated_probability >= probability + (loot_context.player_luck / 100.0)) { return; }

        // Select random horn from available variants
        val horn_index = loot_context.random.nextInt(0, GOAT_HORNS.length as int);
        loot_context.addLoot(GOAT_HORNS[horn_index]);
    }

    // ========================================
    // WEIGHTED POOL SYSTEM
    // ========================================

    /**
     * Performs weighted random selection from a pool of items.
     * Supports luck-based roll count and empty weight for balance.
     * 
     * @param min_rolls Minimum number of selection attempts
     * @param max_rolls Maximum number of selection attempts
     * @param pool_items Array of WeightedPoolItem entries
     * @param empty_weight Weight allocated to "no selection" outcomes
     */
    public performWeightedPool(min_rolls as int, max_rolls as int, empty_weight as int, pool_items as WeightedPoolItem[]) as void
    {
        // Calculate total weight for probability distribution
        var total_weight = empty_weight;
        for weighted_item in pool_items { 
            total_weight += weighted_item.weight; 
        }

        var luck = 0.0 as float;
        if (loot_context.biome == "trial_chamber_spawner") { luck = 4.0 as float; }
        else { luck = loot_context.player_luck as float; }

        // Determine number of rolls using luck-based scaling
        val luck_factor = 1.0 - luck * 0.15;
        val roll_selection = Functions.pow(loot_context.random.nextFloat(), luck_factor);
        var total_rolls = min_rolls + Functions.round(roll_selection * (max_rolls - min_rolls)) as int;
        
        // Bounds checking for roll count
        if (total_rolls < min_rolls) { total_rolls = min_rolls; }
        if (total_rolls > max_rolls) { total_rolls = max_rolls; }

        // Perform weighted selection for each roll
        for i in 0 .. total_rolls
        {
            var random_weight = loot_context.random.nextInt(0, total_weight);
            
            // Check if empty weight was selected
            if (random_weight < empty_weight) { i++; continue; }

            // Find selected item in weighted pool
            random_weight -= empty_weight;
            var accumulated_weight = 0;

            for j in 0 .. (pool_items.length) 
            {
                val current_item = pool_items[j];
                accumulated_weight += current_item.weight;
                
                if (random_weight < accumulated_weight) 
                {
                    // Generate item count within specified range
                    val item_count = loot_context.random.nextInt(current_item.min_count, current_item.max_count + 1);
                    loot_context.addLoot(current_item.item_stack * item_count);
                    break;
                }
            }
        }
    }
}