import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// REPURPOSED STRUCTURES ANCIENT CITIES END LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ancient_cities/end"}]
loot.modifiers.register(
    "repurposed_structures_chests_ancient_cities_end",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ancient_cities/end>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_biomes");
        val loot_generator = new LootGenerator(loot_context);

        // Main weighted pool (5-10 rolls) - structure-specific and utility items only
        loot_generator.performWeightedPool(5, 10, 0, [
            new WeightedPoolItem(<item:minecraft:ender_chest>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:disc_fragment_5>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:compass>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:end_crystal>, 4, 2, 4),
            new WeightedPoolItem(<item:minecraft:name_tag>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mellohi>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_stal>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:black_candle>, 6, 1, 4),
            new WeightedPoolItem(<item:minecraft:yellow_candle>, 6, 1, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 6, 1, 8),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:ender_eye>, 6, 1, 9),
            new WeightedPoolItem(<item:minecraft:pearlescent_froglight>, 8, 1, 2),
            new WeightedPoolItem(<item:minecraft:bookshelf>, 8, 3, 10),
            new WeightedPoolItem(<item:minecraft:bone_block>, 8, 1, 15),
            new WeightedPoolItem(<item:minecraft:end_rod>, 8, 1, 6),
            new WeightedPoolItem(<item:minecraft:book>, 10, 1, 2)
        ]);

        // Armor trim pool (1 roll)
        loot_generator.performWeightedPool(1, 1, 75, [
            new WeightedPoolItem(<item:minecraft:ward_armor_trim_smithing_template>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:silence_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 8, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 1, 2)
        ]);

        // Banner pool (1 bonus roll) - preserving complex patterns
        loot_generator.performWeightedPool(0, 1, 130, [
            new WeightedPoolItem(<item:minecraft:magenta_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:bricks"},
                {color: "magenta", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "magenta", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_right"},
                {color: "magenta", pattern: "minecraft:square_bottom_left"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "magenta", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangles_bottom"}
            ]), 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:dragon_breath>, 3, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 90, [
            new WeightedPoolItem(<item:mythicupgrades:jade_upgrade_smithing_template>, 10, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 90, [
            new WeightedPoolItem(<item:mythicupgrades:ametrine_upgrade_smithing_template>, 10, 1, 1)
        ]);

        // Generation functions (corrected probabilities)
        loot_generator.generateNToolsWithProbability(1, 0.023); // diamond_hoe 4/173
        loot_generator.generateNArmorsWithProbability(1, 0.081); // diamond armor 14/173 (CORRECTED)
        loot_generator.generateNPotionsWithProbability(2, 0.162); // potions + tipped arrows 28/173
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ancient_cities/end_spawner_box"}]
loot.modifiers.register(
    "repurposed_structures_chests_ancient_cities_end_spawner_box",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ancient_cities/end_spawner_box>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_biomes");
        val loot_generator = new LootGenerator(loot_context);

        // Utility chest pool (4-10 rolls)
        loot_generator.performWeightedPool(4, 10, 0, [
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 1, 10),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 1, 1, 10),
            new WeightedPoolItem(<item:minecraft:pearlescent_froglight>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 4, 2, 6)
        ]);

        // Lucky pool reference
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 8, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 1, 2)
        ]);

        // Banner pool (1 bonus roll)
        loot_generator.performWeightedPool(0, 1, 130, [
            new WeightedPoolItem(<item:minecraft:magenta_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:bricks"},
                {color: "magenta", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "magenta", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "magenta", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_right"},
                {color: "magenta", pattern: "minecraft:square_bottom_left"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "magenta", pattern: "minecraft:triangles_bottom"},
                {color: "purple", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:triangles_bottom"}
            ]), 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:dragon_breath>, 3, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);