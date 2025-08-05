import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// HOPO ABANDONED MINERS STUFF LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/abandoned_miners_stuff"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_abandoned_miners_stuff",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/abandoned_miners_stuff>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Structure-specific and utility items (1-3 rolls)
        // REMOVED: brush, flint_and_steel, splash_potion (moved to generation functions)
        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:cobweb>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:obsidian>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:bread>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:glow_berries>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:clock>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:dead_bush>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:tinted_glass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:glow_ink_sac>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone_block>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:coal>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:raw_copper_block>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:dripstone_block>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:smooth_basalt>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:calcite>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:amethyst_block>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:cobbled_deepslate>, 1, 1, 6),
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:stone_bricks>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:chiseled_stone_bricks>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:cobblestone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:brick>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:raw_iron_block>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:raw_gold_block>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:andesite>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:granite>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:diorite>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:ladder>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:rail>, 1, 1, 7),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:candle>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:torch>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:light_gray_banner>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:glow_lichen>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:tnt>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 1, 1, 5)
        ]);

        // Generation functions for custom mineshaft
        // Extracted: brush (damaged), flint_and_steel (damaged), splash_potion (night_vision)
        loot_generator.generateNToolsWithProbability(1, 0.069); // 2/58 * avg 2 rolls = ~0.069
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(1, 0.034); // 1/58 * avg 2 rolls = ~0.034
        loot_generator.generateNEssences(2, 10);
        loot_generator.generateArtifact(10);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        loot_context.addLootWithProbability(<item:endrem:lost_eye>, 0.30 / 10.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO MINESHAFT DUNGEON TRAPS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/dungeontraps/cavespiderpotion"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_dungeontraps_cavespiderpotion",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/dungeontraps/cavespiderpotion>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dangerous_underground");
        val loot_generator = new LootGenerator(loot_context);

        // No weighted pools - single guaranteed custom potion extracted
        
        // Generation functions for cave spider trap
        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(1, 1.0); // Cave Spider Essence guaranteed
        // NO artifacts - secondary chest in mineshaft structure
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/dungeontraps/potion"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_dungeontraps_potion",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/dungeontraps/potion>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dangerous_underground");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Explosive materials (2-5 rolls)
        // REMOVED: All 6 splash potions (moved to generation functions)
        loot_generator.performWeightedPool(2, 5, 0, [
            new WeightedPoolItem(<item:minecraft:tnt>, 1, 1, 1)
        ]);

        // Generation functions for potion trap
        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(3, 3.23); // Very high chance for multiple harmful potions
        // NO artifacts - secondary chest in mineshaft structure
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/minecart/connector"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_minecart_connector",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/minecart/connector>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "mineshaft_infrastructure");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Infrastructure and materials (4-7 rolls)
        // REMOVED: flint_and_steel, iron_pickaxe, diamond_pickaxe, iron_shovel (moved to generation functions)
        loot_generator.performWeightedPool(4, 7, 0, [
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 4, 1, 5),
            new WeightedPoolItem(<item:minecraft:barrel>, 6, 1, 4), // Originally had loot table reference to abandoned_miners_stuff
            new WeightedPoolItem(<item:minecraft:redstone>, 5, 4, 10),
            new WeightedPoolItem(<item:minecraft:redstone_torch>, 5, 1, 7),
            new WeightedPoolItem(<item:minecraft:cobweb>, 5, 1, 7),
            new WeightedPoolItem(<item:minecraft:lever>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:minecart>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:chest_minecart>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:furnace_minecart>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:tnt_minecart>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:hopper_minecart>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:tnt>, 6, 0, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 1, 8),
            new WeightedPoolItem(<item:minecraft:powered_rail>, 6, 1, 15),
            new WeightedPoolItem(<item:minecraft:rail>, 6, 6, 18),
            new WeightedPoolItem(<item:minecraft:activator_rail>, 6, 1, 15),
            new WeightedPoolItem(<item:minecraft:lantern>, 5, 1, 7),
            new WeightedPoolItem(<item:minecraft:compass>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:chain>, 5, 3, 7),
            new WeightedPoolItem(<item:minecraft:candle>, 6, 2, 10),
            new WeightedPoolItem(<item:minecraft:cobblestone>, 4, 3, 13),
            new WeightedPoolItem(<item:minecraft:stick>, 4, 1, 7),
            new WeightedPoolItem(<item:minecraft:stone>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:redstone_lamp>, 5, 2, 6)
        ]);

        // Generation functions for connector infrastructure
        // Extracted: flint_and_steel, iron_pickaxe, diamond_pickaxe, iron_shovel
        loot_generator.generateNToolsWithProbability(2, 0.455); // High chance for damaged/enchanted tools
        loot_generator.generateNWeaponsWithProbability(1, 0.03);
        loot_generator.generateNArmorsWithProbability(1, 0.03);
        loot_generator.generateNPotionsWithProbability(1, 0.03);
        // NO artifacts - secondary chest in mineshaft structure
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO MINESHAFT DEEPSLATE MINING LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/deepslate/copper"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_deepslate_copper",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/deepslate/copper>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground_mining");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Copper mining materials (4-6 rolls)
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:raw_copper_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:deepslate_copper_ore>, 15, 1, 6),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 17, 0, 9)
        ]);

        // Standard generation functions for deepslate mining
        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(1, 0.02);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/deepslate/diamond"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_deepslate_diamond",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/deepslate/diamond>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground_mining");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Diamond mining materials (2-4 rolls)
        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:deepslate_diamond_ore>, 15, 0, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 17, 0, 1)
        ]);

        // Enhanced generation functions for valuable diamond site
        loot_generator.generateNToolsWithProbability(1, 0.03);
        loot_generator.generateNWeaponsWithProbability(1, 0.03);
        loot_generator.generateNArmorsWithProbability(1, 0.03);
        loot_generator.generateNPotionsWithProbability(1, 0.03);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/deepslate/emerald"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_deepslate_emerald",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/deepslate/emerald>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground_mining");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Emerald mining materials (4-6 rolls)
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:emerald_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:deepslate_emerald_ore>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 17, 0, 3)
        ]);

        // Enhanced generation functions for valuable emerald site
        loot_generator.generateNToolsWithProbability(1, 0.03);
        loot_generator.generateNWeaponsWithProbability(1, 0.03);
        loot_generator.generateNArmorsWithProbability(1, 0.03);
        loot_generator.generateNPotionsWithProbability(1, 0.03);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/deepslate/gold"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_deepslate_gold",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/deepslate/gold>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground_mining");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Gold mining materials (4-6 rolls)
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:raw_gold_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:deepslate_gold_ore>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 17, 0, 4),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 17, 20, 40)
        ]);

        // Standard generation functions for deepslate mining
        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(1, 0.02);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/deepslate/iron"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_deepslate_iron",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/deepslate/iron>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground_mining");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Iron mining materials (4-6 rolls)
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:raw_iron_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:deepslate_iron_ore>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 17, 0, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 17, 20, 40)
        ]);

        // Standard generation functions for deepslate mining
        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(1, 0.02);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/deepslate/lapis"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_deepslate_lapis",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/deepslate/lapis>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground_mining");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Lapis mining materials (4-6 rolls)
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:deepslate_lapis_ore>, 15, 1, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 17, 1, 9)
        ]);

        // Standard generation functions for deepslate mining
        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(1, 0.02);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/deepslate/redstone"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_deepslate_redstone",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/deepslate/redstone>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep_underground_mining");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool: Redstone mining materials (4-6 rolls)
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:redstone_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:deepslate_redstone_ore>, 15, 1, 6),
            new WeightedPoolItem(<item:minecraft:redstone>, 17, 0, 9)
        ]);

        // Standard generation functions for deepslate mining
        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.02);
        loot_generator.generateNPotionsWithProbability(1, 0.02);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO MINESHAFT BIG ROOMS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/archer"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_archer",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/archer>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (tipped arrows only)
        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:slow_falling"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:weakness"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:strength"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:regeneration"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:poison"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:harming"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:healing"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:water_breathing"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:slowness"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:swiftness"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:fire_resistance"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:leaping"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:invisibility"}), 1, 2, 12),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:night_vision"}), 1, 2, 12)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/copper"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_copper",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/copper>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:oxidized_copper_bulb>, 1, 2, 8),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:raw_copper_block>, 1, 2, 4)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/farm_beetroot"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_farm_beetroot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/farm_beetroot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            // This would require additional loot table integration
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 4, 3, 6),
            new WeightedPoolItem(<item:minecraft:beetroot>, 5, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.39);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/farm_carrot"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_farm_carrot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/farm_carrot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:bone_meal>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.39);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/farm_melon"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_farm_melon",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/farm_melon>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 2, 6, 9),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 5, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.39);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/farm_potato"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_farm_potato",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/farm_potato>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:bone_meal>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:baked_potato>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 4, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.39);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/farm_pumpkin"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_farm_pumpkin",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/farm_pumpkin>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:jack_o_lantern>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:pumpkin>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:sugar>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:torch>, 2, 1, 2)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.39);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/farm_wheat"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_farm_wheat",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/farm_wheat>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:hay_block>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:wheat>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:bread>, 5, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.39);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/iron_golem"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_iron_golem",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/iron_golem>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:poppy>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 1, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.42);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/map"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_map",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/map>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 5, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:goat_horn>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:spyglass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:glass_pane>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:redstone>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 4, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/music"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_music",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/music>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:note_block>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:music_disc_stal>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mellohi>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mall>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_far>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_chirp>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_cat>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/potion"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_potion",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/potion>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 1, 1, 5)
        ]);

        loot_generator.generateNPotionsWithProbability(3, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/prison"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_prison",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/prison>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:apple>, 3, 2, 4),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 2, 1, 1)
        ]);

        loot_generator.generateNPotionsWithProbability(1, 0.37);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/big_rooms/stews"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_big_rooms_stews",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/big_rooms/stews>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(6, 7, 2, [
            // Note: Original includes abandoned_miners_stuff loot table reference (weight 1)
            new WeightedPoolItem(<item:minecraft:wither_rose>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:pink_tulip>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:poppy>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:oxeye_daisy>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:lily_of_the_valley>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:cornflower>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:blue_orchid>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:azure_bluet>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:allium>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 8, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO MINESHAFT BASE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/amethyst"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_amethyst",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/amethyst>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 15, [
            new WeightedPoolItem(<item:minecraft:small_amethyst_bud>, 17, 1, 5),
            new WeightedPoolItem(<item:minecraft:medium_amethyst_bud>, 17, 1, 5),
            new WeightedPoolItem(<item:minecraft:large_amethyst_bud>, 17, 1, 5),
            new WeightedPoolItem(<item:minecraft:amethyst_block>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 7, 0, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/archer"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_archer",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/archer>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 6, 11, [
            new WeightedPoolItem(<item:minecraft:target>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 15, 1, 5),
            new WeightedPoolItem(<item:minecraft:arrow>, 17, 1, 10),
            new WeightedPoolItem(<item:minecraft:flint>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:stick>, 5, 1, 5)
        ]);

        loot_generator.generateNWeaponsWithProbability(2, 0.87);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/armor"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_armor",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/armor>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // No weighted pool items - all armor extracted
        loot_generator.performWeightedPool(3, 6, 7, []);

        loot_generator.generateNArmorsWithProbability(4, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/bedroom"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_bedroom",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/bedroom>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 15, [
            new WeightedPoolItem(<item:minecraft:bundle>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:candle>, 12, 1, 5),
            new WeightedPoolItem(<item:minecraft:map>, 11, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 11, 1, 1),
            new WeightedPoolItem(<item:minecraft:clock>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 10, 0, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/books"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_books",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/books>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 7, [
            new WeightedPoolItem(<item:minecraft:bookshelf>, 2, 0, 2),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 16, 3, 6),
            new WeightedPoolItem(<item:minecraft:book>, 15, 0, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/brown_mushroom"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_brown_mushroom",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/brown_mushroom>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 7, [
            new WeightedPoolItem(<item:minecraft:mycelium>, 1, 0, 1),
            new WeightedPoolItem(<item:minecraft:brown_mushroom_block>, 6, 1, 2),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 8, 1, 4)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/copper"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_copper",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/copper>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 6, 12, [
            new WeightedPoolItem(<item:minecraft:raw_copper_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:copper_ore>, 15, 1, 6),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 17, 0, 9)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/crafting"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_crafting",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/crafting>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 10, [
            new WeightedPoolItem(<item:minecraft:flint>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:feather>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 8, 2, 8)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/diamond"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_diamond",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/diamond>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 8, [
            new WeightedPoolItem(<item:minecraft:diamond_ore>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 17, 0, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/emerald"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_emerald",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/emerald>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 5, [
            new WeightedPoolItem(<item:minecraft:emerald_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:emerald_ore>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 17, 1, 10)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/food"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/food>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 10, [
            new WeightedPoolItem(<item:minecraft:chicken>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:beef>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:mutton>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:glow_berries>, 12, 1, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 12, 1, 5),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 12, 1, 5),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 7, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/fossils"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_fossils",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/fossils>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 10, [
            new WeightedPoolItem(<item:minecraft:bone_block>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 12, 1, 9)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/gold"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_gold",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/gold>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 10, [
            new WeightedPoolItem(<item:minecraft:raw_gold_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:gold_ore>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 17, 0, 4),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 17, 20, 40)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/iron"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_iron",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/iron>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 10, [
            new WeightedPoolItem(<item:minecraft:raw_iron_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:iron_ore>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 17, 0, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 17, 20, 40)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/lapis"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_lapis",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/lapis>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 8, 15, [
            new WeightedPoolItem(<item:minecraft:lapis_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:lapis_ore>, 15, 1, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 17, 1, 9)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/potions"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_potions",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/potions>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 2, [
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:sugar>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:phantom_membrane>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:redstone>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 3, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/prison"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_prison",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/prison>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 5, [
            new WeightedPoolItem(<item:minecraft:lead>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 4, 0, 2),
            new WeightedPoolItem(<item:minecraft:paper>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:bucket>, 4, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/red_mushroom"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_red_mushroom",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/red_mushroom>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 4, [
            new WeightedPoolItem(<item:minecraft:mycelium>, 1, 0, 1),
            new WeightedPoolItem(<item:minecraft:red_mushroom_block>, 6, 1, 2),
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 8, 1, 4)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/redstone"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_redstone",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/redstone>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 8, 15, [
            new WeightedPoolItem(<item:minecraft:redstone_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:redstone_ore>, 15, 1, 6),
            new WeightedPoolItem(<item:minecraft:redstone>, 17, 0, 9)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/rip"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_rip",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/rip>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 6, [
            new WeightedPoolItem(<item:minecraft:flower_banner_pattern>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:smooth_stone_slab>, 4, 0, 2),
            new WeightedPoolItem(<item:minecraft:poppy>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:red_tulip>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:rose_bush>, 6, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/smelting"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_smelting",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/smelting>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 5, [
            new WeightedPoolItem(<item:minecraft:lava_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:coal_block>, 1, 0, 1),
            new WeightedPoolItem(<item:minecraft:torch>, 7, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 10, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/tnt"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_tnt",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/tnt>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 5, 5, [
            new WeightedPoolItem(<item:minecraft:tnt>, 4, 3, 6),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 2, 10),
            new WeightedPoolItem(<item:minecraft:sand>, 10, 2, 10)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/tools"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_tools",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/tools>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // No weighted pool items - all tools extracted
        loot_generator.performWeightedPool(4, 6, 15, []);

        loot_generator.generateNToolsWithProbability(4, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/mineshaft/base/weapons"}]
loot.modifiers.register(
    "hopo_chests_mineshaft_base_weapons",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/mineshaft/base/weapons>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // No weighted pool items - all weapons and shields extracted
        loot_generator.performWeightedPool(4, 6, 15, []);

        loot_generator.generateNWeaponsWithProbability(4, 0.9);
        loot_generator.generateNArmorsWithProbability(1, 0.4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);