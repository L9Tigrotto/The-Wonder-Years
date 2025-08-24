#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.util.math.RandomSource;

import math.Functions;

/**
 * TierComponent Class
 * 
 * Generates random tier data for items based on player context including
 * luck, dimension, and item type. The class uses probability distributions
 * that vary by dimension and applies luck-based skewing to improve or
 * worsen the chances of obtaining higher tier items.
 * 
 * Tier progression from worst to best: common -> uncommon -> rare -> epic -> legendary -> unique
 * 
 * Example usage:
 *   val tier_data = TierComponent.generateRandomTierData(item_descriptor, loot_context);
 */
public class TierComponent
{
    /**
     * Available tier names ordered from worst to best quality
     */
	private static val TIERS as string[] = 
	[
		"common",
		"uncommon",
		"rare",
		"epic",
		"legendary",
		"unique"
	];

    /**
     * Cumulative probability distributions for each dimension.
     * Values represent the upper bound for each tier level.
     * Lower threshold values make those tiers harder to obtain, effectively
     * shifting the distribution toward better tiers. High luck skews tier_roll
     * toward 1.0 (better tiers), while low luck skews toward 0.0 (worse tiers).
     */
	private static val DISTRIBUTIONS as float[][string] = 
	{
		"overworld": [0.25, 0.55, 0.75, 0.90, 0.97, 1.00],
		"nether":    [-0.01, -0.01, 0.75, 0.90, 0.97, 1.00],
		"end":       [-0.01, -0.01, -0.01, 0.90, 0.97, 1.00]
	};

    /**
     * Number of different variants available for each equipment type
     */
	private static val NUMBER_OF_VARIANTS as int[string] = 
	{
		"armor":		4,
		"tool":			4,
		"elytra":		2,
		"fishing":		2,
		"melee":		4,
		"ranged":		4,
		"shield":		4,
	};

    /**
     * Generates random tier data for an item based on player context.
     * 
     * @param item_descriptor The item descriptor containing tierable category information
     * @param loot_context The loot context containing luck, dimension, and random source
     * @return IData containing the tier component data structure, or empty data if item is not tierable
     */
	public static generateRandomTierData(item_descriptor as ItemDescriptor, loot_context as WonderLootContext) as IData
	{
        if (!item_descriptor.can_be_tiered)
        {
            println("[WARNING]: TierComponent received '" + item_descriptor.item as string + "', an untierable item. Returned empty data.");
			return { } as IData;
        }

        var luck = 0.0 as float;
        if (loot_context.biome == "trial_chamber") { luck = 5.0 as float; }
        else { luck = loot_context.player_luck as float; }

        // Determine which tierable category this item belongs to
		var item_type = "";
		if 		(item_descriptor.can_tier_as_armor)			{ item_type = "armor"; }
		else if	(item_descriptor.can_tier_as_tool)			{ item_type = "tool"; }
		else if	(item_descriptor.can_tier_as_elytra)		{ item_type = "elytra"; }
		else if	(item_descriptor.can_tier_as_fishing_rod)	{ item_type = "fishing"; }
		else if	(item_descriptor.can_tier_as_melee_weapon)	{ item_type = "melee"; }
		else if	(item_descriptor.can_tier_as_ranged_weapon)	{ item_type = "ranged"; }
		else                                                { item_type = "shield"; }

        // Get the base distribution for the current dimension
		val distribution = DISTRIBUTIONS[loot_context.dimension];
		
        // Calculate luck factor to skew the random distribution
        // Player luck ranges from -2 (unlucky) to +4 (very lucky)
        // luck_factor > 1.0 = worse results, luck_factor < 1.0 = better results
		val luck_factor = 1.0 - luck * 0.15;

        // Generate skewed random value using power function
        // Higher luck_factor pushes values toward 0 (worse tiers)
        // Lower luck_factor pushes values toward 1 (better tiers)
		val tier_roll = Functions.pow(loot_context.random.nextFloat(), luck_factor);

        // Determine tier based on tier roll value against cumulative distribution
		var tier_level = "";
		if 		(tier_roll <= distribution[0]) { tier_level = "common"; }
		else if	(tier_roll <= distribution[1]) { tier_level = "uncommon"; }
		else if	(tier_roll <= distribution[2]) { tier_level = "rare"; }
		else if	(tier_roll <= distribution[3]) { tier_level = "epic"; }
		else if	(tier_roll <= distribution[4]) { tier_level = "legendary"; }
		else if	(tier_roll <= distribution[5]) { tier_level = "unique"; }
		else
		{
			println("[WARNING]: TierComponent generated '" + tier_roll as string + "', not in range of the distribution for '" + loot_context.dimension + "' dimension. Returned empty data.");
			return { } as IData;
		}

        // Select random variant within the tier level for variety
		var tier_variant = loot_context.random.nextInt(1, NUMBER_OF_VARIANTS[item_type] + 1);

        // Construct and return the complete tier component data structure

        var tier_component = {
			"tiered:tier": 
			{
				durable_factor: -1.0,
				operation: 0,
				tier: "tiered:" + tier_level + "_" + item_type + "_" + tier_variant as string
			}
		} as IData;

        if (tier_level == "legendary" || tier_level == "unique")
        {
            val name_component = NameComponent.generateRandomNameComponent(item_descriptor, loot_context);
            if (!name_component.isEmpty) { tier_component.merge(name_component); }
        }

		return tier_component;
	}
}