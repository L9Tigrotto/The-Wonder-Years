import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// HOPO SMALL RUIN COLD LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/small_ruin_cold"}]
loot.modifiers.register(
    "hopo_chests_small_ruin_cold",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/small_ruin_cold>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - structure-specific and utility items only
        loot_generator.performWeightedPool(4, 7, 0, [
            new WeightedPoolItem(<item:minecraft:bread>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:lead>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:moss_block>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:sea_pickle>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:cod_bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:prismarine>, 2, 3, 12),
            new WeightedPoolItem(<item:minecraft:mossy_stone_bricks>, 2, 6, 12),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:nautilus_shell>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:prismarine_crystals>, 4, 2, 5),
            new WeightedPoolItem(<item:minecraft:prismarine_shard>, 4, 2, 5),
            new WeightedPoolItem(<item:minecraft:seagrass>, 3, 2, 10),
            new WeightedPoolItem(<item:minecraft:kelp>, 3, 5, 10),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 6, 4, 12),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 6, 4, 12),
            new WeightedPoolItem(<item:minecraft:firework_rocket>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 0, 4),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:long_slowness"}), 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:long_weakness"}), 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:map>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:bundle>, 2, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.10);
        loot_generator.generateNArmorsWithProbability(1, 0.15);
        loot_generator.generateNPotionsWithProbability(1, 0.20);
        loot_generator.generateNEssences(2, 110);
        loot_generator.generateArtifact(110);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO SMALL RUIN WARM LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/small_ruin_warm"}]
loot.modifiers.register(
    "hopo_chests_small_ruin_warm",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/small_ruin_warm>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - coral and warm ocean items
        loot_generator.performWeightedPool(3, 7, 0, [
            new WeightedPoolItem(<item:minecraft:sea_pickle>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:horn_coral_fan>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:horn_coral_block>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:horn_coral>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:fire_coral_fan>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:fire_coral_block>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:fire_coral>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:bubble_coral_fan>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:bubble_coral_block>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:bubble_coral>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:brain_coral_fan>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:brain_coral_block>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:brain_coral>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:tube_coral_fan>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:tube_coral_block>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:tube_coral>, 4, 4, 15),
            new WeightedPoolItem(<item:minecraft:tropical_fish_bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:prismarine>, 2, 3, 12),
            new WeightedPoolItem(<item:minecraft:sandstone>, 2, 3, 12),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:nautilus_shell>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:prismarine_crystals>, 4, 2, 5),
            new WeightedPoolItem(<item:minecraft:prismarine_shard>, 4, 2, 5),
            new WeightedPoolItem(<item:minecraft:seagrass>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:kelp>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:wheat>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:bone>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 4, 2, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 6, 4, 12),
            new WeightedPoolItem(<item:minecraft:firework_rocket>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 2, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 4, 2, 4),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:tropical_fish>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:pufferfish_bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:bundle>, 3, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.15);
        loot_generator.generateNArmorsWithProbability(1, 0.15);
        loot_generator.generateNPotionsWithProbability(1, 0.20);
        loot_generator.generateNEssences(2, 110);
        loot_generator.generateArtifact(110);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO MATERIALS LOOT TABLE
// =============================================================================

loot.modifiers.register(
    "hopo_chests_materials",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/materials>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - materials and utility items (NO nested loot table calls)
        loot_generator.performWeightedPool(4, 7, 0, [
            new WeightedPoolItem(<item:minecraft:map>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_block>, 1, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_iron_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 6, 1, 7),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 6, 0, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 6, 0, 3),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 8, 10, 40),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 8, 10, 40),
            new WeightedPoolItem(<item:minecraft:turtle_scute>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 7, 1, 4),
            new WeightedPoolItem(<item:minecraft:feather>, 4, 1, 5),
            new WeightedPoolItem(<item:minecraft:name_tag>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 4, 3, 30),
            new WeightedPoolItem(<item:minecraft:brick>, 5, 3, 15),
            new WeightedPoolItem(<item:minecraft:paper>, 8, 3, 15),
            new WeightedPoolItem(<item:minecraft:arrow>, 7, 1, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 8, 2, 6),
            new WeightedPoolItem(<item:minecraft:emerald_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 12, 2, 5),
            new WeightedPoolItem(<item:minecraft:flint>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:chiseled_stone_bricks>, 4, 4, 12),
            new WeightedPoolItem(<item:minecraft:sea_pickle>, 4, 2, 10),
            new WeightedPoolItem(<item:minecraft:stripped_oak_log>, 4, 2, 10),
            new WeightedPoolItem(<item:minecraft:sand>, 4, 4, 12),
            new WeightedPoolItem(<item:minecraft:tnt>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:coal>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 4, 3, 9),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 6, 2, 6),
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.10);
        loot_generator.generateNWeaponsWithProbability(1, 0.10);
        loot_generator.generateNArmorsWithProbability(1, 0.15);
        loot_generator.generateNPotionsWithProbability(1, 0.05);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO FOOD LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/food"}]
loot.modifiers.register(
    "hopo_chests_food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/food>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - food and utility items
        loot_generator.performWeightedPool(5, 6, 0, [
            new WeightedPoolItem(<item:minecraft:cooked_salmon>, 9, 3, 10),
            new WeightedPoolItem(<item:minecraft:cooked_cod>, 9, 3, 10),
            new WeightedPoolItem(<item:minecraft:apple>, 8, 1, 5),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 6, 2, 7),
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 6, 2, 7),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:oak_boat>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:spruce_boat>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:lily_pad>, 5, 1, 10),
            new WeightedPoolItem(<item:minecraft:coal>, 9, 1, 6),
            new WeightedPoolItem(<item:minecraft:coal_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 3, 2, 6),
            new WeightedPoolItem(<item:minecraft:nautilus_shell>, 4, 0, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 9, 3, 16),
            new WeightedPoolItem(<item:minecraft:string>, 7, 3, 12),
            new WeightedPoolItem(<item:minecraft:ink_sac>, 4, 3, 15),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 6, 4, 15),
            new WeightedPoolItem(<item:minecraft:bone_block>, 4, 0, 2),
            new WeightedPoolItem(<item:minecraft:bone>, 6, 2, 5),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 3, 0, 2),
            new WeightedPoolItem(<item:minecraft:cod>, 8, 2, 10),
            new WeightedPoolItem(<item:minecraft:salmon>, 8, 2, 10),
            new WeightedPoolItem(<item:minecraft:tropical_fish>, 6, 2, 7),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:pufferfish_bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:cod_bucket>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:dried_kelp_block>, 6, 0, 1),
            new WeightedPoolItem(<item:minecraft:dried_kelp>, 9, 3, 12),
            new WeightedPoolItem(<item:minecraft:seagrass>, 6, 12, 22),
            new WeightedPoolItem(<item:minecraft:kelp>, 7, 12, 32),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 5, 5, 15),
            new WeightedPoolItem(<item:minecraft:wheat>, 6, 10, 30),
            new WeightedPoolItem(<item:minecraft:hay_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_iron_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 2, 1, 7),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 2, 0, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 2, 0, 3),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 4, 10, 40),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 4, 10, 40),
            new WeightedPoolItem(<item:minecraft:turtle_scute>, 3, 0, 2),
            new WeightedPoolItem(<item:minecraft:feather>, 4, 1, 5),
            new WeightedPoolItem(<item:minecraft:name_tag>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 4, 3, 30),
            new WeightedPoolItem(<item:minecraft:brick>, 5, 3, 15),
            new WeightedPoolItem(<item:minecraft:paper>, 8, 3, 15),
            new WeightedPoolItem(<item:minecraft:arrow>, 7, 1, 6),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 8, 2, 6),
            new WeightedPoolItem(<item:minecraft:emerald_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 12, 2, 5),
            new WeightedPoolItem(<item:minecraft:flint>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:chiseled_stone_bricks>, 4, 4, 12),
            new WeightedPoolItem(<item:minecraft:sea_pickle>, 4, 2, 10),
            new WeightedPoolItem(<item:minecraft:stripped_oak_log>, 4, 2, 10),
            new WeightedPoolItem(<item:minecraft:sand>, 4, 4, 12),
            new WeightedPoolItem(<item:minecraft:tnt>, 5, 1, 2)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.10);
        loot_generator.generateNArmorsWithProbability(1, 0.05);
        loot_generator.generateNPotionsWithProbability(1, 0.05);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO CORAL LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/coral"}]
loot.modifiers.register(
    "hopo_chests_coral",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/coral>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - coral items and materials
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:horn_coral_fan>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:horn_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:dead_horn_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:horn_coral>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:fire_coral_fan>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:fire_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:dead_fire_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:fire_coral>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:bubble_coral_fan>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:bubble_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:dead_bubble_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:bubble_coral>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:brain_coral_fan>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:brain_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:dead_brain_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:brain_coral>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:tube_coral_fan>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:tube_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:dead_tube_coral_block>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:tube_coral>, 5, 5, 25),
            new WeightedPoolItem(<item:minecraft:iron_block>, 1, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_iron_block>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 6, 0, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 6, 0, 3),
            new WeightedPoolItem(<item:minecraft:turtle_scute>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 7, 1, 4),
            new WeightedPoolItem(<item:minecraft:feather>, 4, 1, 5),
            new WeightedPoolItem(<item:minecraft:name_tag>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 4, 3, 30),
            new WeightedPoolItem(<item:minecraft:paper>, 8, 3, 15),
            new WeightedPoolItem(<item:minecraft:arrow>, 7, 1, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 8, 2, 6),
            new WeightedPoolItem(<item:minecraft:flint>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:chiseled_stone_bricks>, 4, 4, 12),
            new WeightedPoolItem(<item:minecraft:sea_pickle>, 4, 2, 10),
            new WeightedPoolItem(<item:minecraft:sand>, 4, 4, 12),
            new WeightedPoolItem(<item:minecraft:tnt>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:coal>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 4, 3, 9)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.20);
        loot_generator.generateNWeaponsWithProbability(1, 0.15);
        loot_generator.generateNArmorsWithProbability(1, 0.05);
        loot_generator.generateNPotionsWithProbability(1, 0.05);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO COPPER LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/copper"}]
loot.modifiers.register(
    "hopo_chests_copper",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/copper>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - includes references to other loot tables
        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:trial_key>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:honeycomb>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:lightning_rod>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:oxidized_cut_copper>, 6, 5, 15),
            new WeightedPoolItem(<item:minecraft:oxidized_copper>, 7, 1, 3),
            new WeightedPoolItem(<item:minecraft:weathered_cut_copper>, 6, 5, 15),
            new WeightedPoolItem(<item:minecraft:weathered_copper>, 7, 1, 3),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 7, 5, 15),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 8, 7, 17),
            new WeightedPoolItem(<item:minecraft:raw_copper_block>, 4, 0, 2),
            new WeightedPoolItem(<item:minecraft:copper_ore>, 3, 3, 10),
            new WeightedPoolItem(<item:minecraft:deepslate_copper_ore>, 2, 1, 10),
            new WeightedPoolItem(<item:minecraft:granite>, 5, 16, 32),
            new WeightedPoolItem(<item:minecraft:oxidized_copper_bulb>, 4, 1, 7),
            new WeightedPoolItem(<item:minecraft:weathered_copper_bulb>, 4, 1, 7),
            new WeightedPoolItem(<item:minecraft:ominous_bottle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:oxidized_copper_grate>, 3, 3, 8),
            new WeightedPoolItem(<item:minecraft:waxed_weathered_copper_grate>, 3, 3, 8)
        ]);

        // Additional pools for loot table references (simulated)
        loot_generator.performWeightedPool(0, 1, 14, [
            new WeightedPoolItem(<item:minecraft:coal>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:wheat>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateNArmorsWithProbability(1, 0.05);
        loot_generator.generateNPotionsWithProbability(1, 0.05);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO PRISMARINE LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/prismarine"}]
loot.modifiers.register(
    "hopo_chests_prismarine",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/prismarine>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - prismarine items and ocean materials
        loot_generator.performWeightedPool(5, 6, 0, [
            new WeightedPoolItem(<item:minecraft:gold_block>, 2, 0, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 9, 0, 3),
            new WeightedPoolItem(<item:minecraft:prismarine_crystals>, 8, 8, 20),
            new WeightedPoolItem(<item:minecraft:prismarine_shard>, 7, 8, 20),
            new WeightedPoolItem(<item:minecraft:wet_sponge>, 6, 1, 4),
            new WeightedPoolItem(<item:minecraft:sponge>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:sea_lantern>, 8, 2, 7),
            new WeightedPoolItem(<item:minecraft:prismarine>, 11, 6, 16),
            new WeightedPoolItem(<item:minecraft:dark_prismarine>, 10, 6, 16),
            new WeightedPoolItem(<item:minecraft:prismarine_bricks>, 10, 6, 16),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 0, 3),
            new WeightedPoolItem(<item:minecraft:turtle_scute>, 2, 0, 2),
            new WeightedPoolItem(<item:minecraft:name_tag>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:long_slowness"}), 3, 4, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:emerald_block>, 1, 0, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:flint>, 2, 1, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 2, 7),
            new WeightedPoolItem(<item:minecraft:chiseled_stone_bricks>, 2, 4, 12),
            new WeightedPoolItem(<item:minecraft:sea_pickle>, 2, 2, 10),
            new WeightedPoolItem(<item:minecraft:sand>, 2, 4, 12),
            new WeightedPoolItem(<item:minecraft:tnt>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:coal>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 3, 9),
            new WeightedPoolItem(<item:minecraft:diamond>, 8, 0, 2),
            new WeightedPoolItem(<item:minecraft:barrel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.10);
        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateNArmorsWithProbability(1, 0.05);
        loot_generator.generateNPotionsWithProbability(1, 0.30);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// HOPO UNDERWATER RUINS SMALL POT LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:pots/underwater_ruins/small_ruins"}]
loot.modifiers.register(
    "hopo_pots_underwater_ruins_small_ruins",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:pots/underwater_ruins/small_ruins>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Single weighted pool (1 roll) - underwater/ocean themed items (removed splash potions)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:slowness"}), 1, 0, 5),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:water_breathing"}), 1, 0, 5),
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 5, 3, 5),
            new WeightedPoolItem(<item:minecraft:nautilus_shell>, 3, 0, 1),
            new WeightedPoolItem(<item:minecraft:prismarine_crystals>, 4, 2, 5),
            new WeightedPoolItem(<item:minecraft:prismarine_shard>, 4, 2, 5),
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:emerald>, 6, 1, 5),
            new WeightedPoolItem(<item:minecraft:firework_rocket>
                .withJsonComponent(<componenttype:minecraft:item_name>, "{\"color\":\"gold\",\"italic\":false,\"text\":\"Marine Glow Rocket\"}")
                .withJsonComponent(<componenttype:minecraft:fireworks>, {
                    flight_duration: 2,
                    explosions: [{
                        shape: "large_ball",
                        colors: [2651799, 16351261],
                        fade_colors: [16645372],
                        has_trail: true,
                        has_twinkle: false
                    }]
                }), 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:firework_rocket>
                .withJsonComponent(<componenttype:minecraft:item_name>, "{\"color\":\"gold\",\"italic\":false,\"text\":\"Multicolor Glow Rocket\"}")
                .withJsonComponent(<componenttype:minecraft:fireworks>, {
                    flight_duration: 2,
                    explosions: [{
                        shape: "star",
                        colors: [11250603, 6719955],
                        fade_colors: [11743532, 1537522, 8073150, 14602026, 12801229, 15790320],
                        has_trail: true,
                        has_twinkle: true
                    }]
                }), 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 0, 2)
        ]);

        // Generation functions - potions had combined weight 7 out of total 56 = ~12.5%
        loot_generator.generateNPotionsWithProbability(1, 0.125);

        return loot_context.loot;
    }
);

// =============================================================================
// REPURPOSED STRUCTURES COLD RUINS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_cold/large"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_cold_large",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_cold/large>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "cold");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls)
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (3 rolls) - removed tools/weapons/armor/enchanted books
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:pumpkin>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:arrow>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(2, 0.89);
        loot_generator.generateNWeaponsWithProbability(1, 0.21);
        loot_generator.generateNArmorsWithProbability(1, 0.41);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_cold/small"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_cold_small",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_cold/small>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "cold");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls)
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (2 rolls) - removed tools/weapons/armor, kept regular books
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:saddle>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:arrow>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions - no artifacts in small chest
        loot_generator.generateNToolsWithProbability(2, 0.77);
        loot_generator.generateNWeaponsWithProbability(1, 0.11);
        loot_generator.generateNArmorsWithProbability(1, 0.44);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// REPURPOSED STRUCTURES HOT RUINS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_hot/large"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_hot_large",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_hot/large>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "hot");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls) - removed stone_shovel
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:bone>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (3 rolls) - removed tools/armor/enchanted books
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:compass>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:clay>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:writable_book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:painting>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:lead>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions - 1.142 expected tools
        loot_generator.generateNToolsWithProbability(2, 0.57);
        loot_generator.generateNArmorsWithProbability(1, 0.48);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_hot/small"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_hot_small",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_hot/small>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "hot");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls) - removed stone_shovel
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:bone>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (2 rolls) - removed tools/armor, kept regular books
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:compass>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:clay>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:saddle>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:painting>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:lead>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions - no artifacts in small chest
        loot_generator.generateNToolsWithProbability(1, 0.90);
        loot_generator.generateNArmorsWithProbability(1, 0.39);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// REPURPOSED STRUCTURES ICY RUINS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_icy/large"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_icy_large",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_icy/large>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "icy");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls) - removed stone_shovel
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:cookie>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:sweet_berries>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:beetroot>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (3 rolls) - removed tools/armor/enchanted books
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:spruce_log>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:campfire>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions - 1.496 expected tools
        loot_generator.generateNToolsWithProbability(2, 0.75);
        loot_generator.generateNArmorsWithProbability(1, 0.68);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_icy/small"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_icy_small",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_icy/small>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "icy");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls) - removed stone_shovel
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:cookie>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:sweet_berries>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:beetroot>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (2 rolls) - removed tools/armor, kept regular books
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:spruce_log>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:campfire>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions - no artifacts in small chest
        loot_generator.generateNToolsWithProbability(2, 0.59);
        loot_generator.generateNArmorsWithProbability(1, 0.51);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// REPURPOSED STRUCTURES WARM RUINS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_warm/large"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_warm_large",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_warm/large>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "warm");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls) - removed stone_hoe
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:wheat>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:apple>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (3 rolls) - removed tools/armor/enchanted books
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:hay_block>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions - 1.982 expected tools
        loot_generator.generateNToolsWithProbability(2, 0.99);
        loot_generator.generateNArmorsWithProbability(1, 0.48);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/land_warm/small"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_land_warm_small",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/land_warm/small>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "warm");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Basic materials (2-8 rolls) - removed stone_hoe
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:wheat>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:apple>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        // Pool 2: Structure items (2 rolls) - removed tools/armor, kept regular books
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:saddle>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),
            
            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),
            
            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),
            
            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),
            
            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),
            
            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),
            
            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),
            
            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),
            
            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),
            
            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),
            
            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),
            
            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),
            
            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),
            
            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),
            
            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),
            
            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),
            
            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),
            
            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),
            
            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),
            
            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions - no artifacts in small chest
        loot_generator.generateNToolsWithProbability(2, 0.83);
        loot_generator.generateNArmorsWithProbability(1, 0.44);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// REPURPOSED STRUCTURES NETHER RUINS LOOT TABLES  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ruins/nether"}]
loot.modifiers.register(
    "repurposed_structures_chests_ruins_nether",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ruins/nether>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "ruins");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Main materials (rolls 2-8, preserved items only)
        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 8, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 7, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:quartz>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 5, 1, 5)
        ]);

        // Pool 2: Secondary items (rolls 1, preserved items only)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1)
        ]);

        // Pool 3: Maps and special items (rolls 1, preserved items only)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:map>, 8, 1, 1) // Combined map weights 3+3+2
        ]);

        // Pool 4: Lucky pool reference
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 30, 1, 1),

            // Banner 1: Black banner with lime/black pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:stripe_downleft"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "black", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),

            // Banner 2: White banner with light blue stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "light_blue", pattern: "minecraft:stripe_downleft"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"}
            ]), 1, 1, 1),

            // Banner 3: Orange banner with white stripes
            new WeightedPoolItem(<item:minecraft:orange_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:half_horizontal_bottom"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:curly_border"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),

            // Banner 4: Red banner with white rhombus
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"},
                {color: "red", pattern: "minecraft:half_vertical"}
            ]), 1, 1, 1),

            // Banner 5: White banner with purple patterns
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:piglin"},
                {color: "purple", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:border"},
                {color: "purple", pattern: "minecraft:square_bottom_left"},
                {color: "purple", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),

            // Banner 6: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_right"},
                {color: "black", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),

            // Banner 7: Lime banner with colorful squares
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:triangle_top"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"}
            ]), 1, 1, 1),

            // Banner 8: Green banner with creeper design
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:bricks"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "lime", pattern: "minecraft:creeper"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "green", pattern: "minecraft:diagonal_right"},
                {color: "green", pattern: "minecraft:diagonal_left"},
                {color: "lime", pattern: "minecraft:triangle_top"},
                {color: "orange", pattern: "minecraft:gradient"},
                {color: "green", pattern: "minecraft:gradient"}
            ]), 1, 1, 1),

            // Banner 9: Yellow banner with flower design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangle_bottom"},
                {color: "black", pattern: "minecraft:triangle_bottom"}
            ]), 1, 1, 1),

            // Banner 10: White banner with colorful squares
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "red", pattern: "minecraft:square_top_left"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "lime", pattern: "minecraft:square_top_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "yellow", pattern: "minecraft:square_bottom_right"},
                {color: "light_blue", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:straight_cross"}
            ]), 1, 1, 1),

            // Banner 11: Black banner with checkered pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_vertical_right"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "black", pattern: "minecraft:square_top_left"},
                {color: "white", pattern: "minecraft:square_top_right"},
                {color: "white", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_left"}
            ]), 1, 1, 1),

            // Banner 12: White banner with yellow/purple stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_left"}
            ]), 1, 1, 1),

            // Banner 13: Blue banner with yellow pattern
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:border"},
                {color: "blue", pattern: "minecraft:stripe_top"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_middle"},
                {color: "blue", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),

            // Banner 14: Blue banner with yellow flowers
            new WeightedPoolItem(<item:minecraft:blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "yellow", pattern: "minecraft:flower"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:small_stripes"},
                {color: "blue", pattern: "minecraft:piglin"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:circle"},
                {color: "blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),

            // Banner 15: Light blue banner with white globe pattern
            new WeightedPoolItem(<item:minecraft:light_blue_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_blue", pattern: "minecraft:half_horizontal_bottom"},
                {color: "light_blue", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:triangles_bottom"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"},
                {color: "white", pattern: "minecraft:globe"}
            ]), 1, 1, 1),

            // Banner 16: White banner with red cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "red", pattern: "minecraft:straight_cross"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),

            // Banner 17: Black banner with white/black brick pattern
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:bricks"},
                {color: "white", pattern: "minecraft:bricks"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"}
            ]), 1, 1, 1),

            // Banner 18: Black banner with red/green stripes
            new WeightedPoolItem(<item:minecraft:black_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:stripe_center"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "green", pattern: "minecraft:stripe_right"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),

            // Banner 19: White banner with tri-color stripes
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "magenta", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"},
                {color: "purple", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),

            // Banner 20: White banner with layered colors
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "gray", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "green", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "green", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),

            // Banner 21: Purple banner with magenta/blue stripes
            new WeightedPoolItem(<item:minecraft:purple_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "purple", pattern: "minecraft:stripe_center"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "blue", pattern: "minecraft:stripe_right"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "magenta", pattern: "minecraft:stripe_left"},
                {color: "purple", pattern: "minecraft:stripe_center"}
            ]), 1, 1, 1),

            // Banner 22: Yellow banner with gradient design
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:gradient"},
                {color: "red", pattern: "minecraft:gradient"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"},
                {color: "white", pattern: "minecraft:stripe_middle"}
            ]), 1, 1, 1),

            // Banner 23: Yellow banner with pink/light blue stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "pink", pattern: "minecraft:stripe_top"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),

            // Banner 24: White banner with yellow/purple pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:stripe_top"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:half_horizontal_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),

            // Banner 25: Light gray banner with black/white/purple
            new WeightedPoolItem(<item:minecraft:light_gray_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "light_gray", pattern: "minecraft:half_horizontal"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_top"}
            ]), 1, 1, 1),

            // Banner 26: Red banner with rainbow stripes
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "blue", pattern: "minecraft:stripe_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "yellow", pattern: "minecraft:half_horizontal"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),

            // Banner 27: Yellow banner with blue overlay
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:half_horizontal_bottom"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"},
                {color: "blue", pattern: "minecraft:half_horizontal"}
            ]), 1, 1, 1),

            // Banner 28: Pink banner with white/light blue (6 patterns only)
            new WeightedPoolItem(<item:minecraft:pink_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "white", pattern: "minecraft:stripe_center"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "light_blue", pattern: "minecraft:border"}
            ]), 1, 1, 1),

            // Banner 29: Green banner with cyan/black globe
            new WeightedPoolItem(<item:minecraft:green_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "cyan", pattern: "minecraft:flower"},
                {color: "cyan", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:globe"},
                {color: "green", pattern: "minecraft:globe"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:border"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),

            // Banner 30: Red banner with yellow triangles
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:triangle_top"},
                {color: "yellow", pattern: "minecraft:stripe_right"},
                {color: "yellow", pattern: "minecraft:stripe_left"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:border"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"},
                {color: "red", pattern: "minecraft:triangles_top"}
            ]), 1, 1, 1),

            // Banner 31: White banner with gray/black cross (5 patterns only)
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "gray", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "black", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:cross"}
            ]), 1, 1, 1),

            // Banner 32: Red banner with white flower/circle
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:circle"},
                {color: "red", pattern: "minecraft:flower"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"}
            ]), 1, 1, 1),

            // Banner 33: White banner with cyan circle
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:gradient_up"},
                {color: "white", pattern: "minecraft:gradient"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:circle"},
                {color: "cyan", pattern: "minecraft:circle"},
                {color: "white", pattern: "minecraft:circle"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "black", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:stripe_bottom"}
            ]), 1, 1, 1),

            // Banner 34: White banner with green/orange pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "green", pattern: "minecraft:stripe_center"},
                {color: "orange", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "white", pattern: "minecraft:small_stripes"},
                {color: "orange", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:stripe_left"},
                {color: "white", pattern: "minecraft:stripe_right"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),

            // Banner 35: White banner with light blue cross
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),

            // Banner 36: White banner with complex pattern
            new WeightedPoolItem(<item:minecraft:white_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "white", pattern: "minecraft:half_horizontal_bottom"},
                {color: "white", pattern: "minecraft:half_horizontal"},
                {color: "light_blue", pattern: "minecraft:stripe_bottom"},
                {color: "light_blue", pattern: "minecraft:stripe_top"},
                {color: "white", pattern: "minecraft:curly_border"},
                {color: "white", pattern: "minecraft:rhombus"},
                {color: "light_blue", pattern: "minecraft:cross"},
                {color: "white", pattern: "minecraft:triangle_bottom"},
                {color: "light_blue", pattern: "minecraft:curly_border"},
                {color: "light_blue", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:border"},
                {color: "white", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1),

            // Banner 37: Yellow banner with diagonal black stripes
            new WeightedPoolItem(<item:minecraft:yellow_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "yellow", pattern: "minecraft:diagonal_up_right"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_downright"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_left"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "black", pattern: "minecraft:stripe_top"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"},
                {color: "yellow", pattern: "minecraft:border"}
            ]), 1, 1, 1),

            // Banner 38: Lime banner with white cross pattern
            new WeightedPoolItem(<item:minecraft:lime_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "lime", pattern: "minecraft:half_horizontal_bottom"},
                {color: "lime", pattern: "minecraft:half_horizontal"},
                {color: "white", pattern: "minecraft:stripe_bottom"},
                {color: "white", pattern: "minecraft:stripe_top"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:stripe_bottom"},
                {color: "lime", pattern: "minecraft:rhombus"},
                {color: "white", pattern: "minecraft:cross"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"},
                {color: "lime", pattern: "minecraft:border"},
                {color: "lime", pattern: "minecraft:curly_border"}
            ]), 1, 1, 1)
        ]);

        // Generation functions with corrected rates
        loot_generator.generateNToolsWithProbability(1, 0.52); // 52% chance for tools (golden_axe + warped_fungus_on_stick + golden_hoe)
        loot_generator.generateNWeaponsWithProbability(1, 0.21); // Warped fungus on stick as weapon
        loot_generator.generateNArmorsWithProbability(1, 0.64); // 64% chance for armor pieces
        loot_generator.generateNEssences(2, 4);
        loot_generator.generateArtifact(4); 
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);