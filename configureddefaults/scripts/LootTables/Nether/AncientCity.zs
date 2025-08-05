import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// REPURPOSED STRUCTURES ANCIENT CITIES NETHER LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ancient_cities/nether"}]
loot.modifiers.register(
    "repurposed_structures_chests_ancient_cities_nether",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ancient_cities/nether>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_biomes");
        val loot_generator = new LootGenerator(loot_context);

        // Main weighted pool (5-10 rolls) - structure-specific and utility items only
        loot_generator.performWeightedPool(5, 10, 0, [
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:disc_fragment_5>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:compass>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:coal_block>, 4, 2, 4),
            new WeightedPoolItem(<item:minecraft:name_tag>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_blocks>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_pigstep>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:black_candle>, 6, 1, 4),
            new WeightedPoolItem(<item:minecraft:red_candle>, 6, 1, 4),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 6, 1, 15),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:quartz>, 6, 1, 15),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:book>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 15),
            new WeightedPoolItem(<item:minecraft:glowstone>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 14, 6, 15)
        ]);

        // Armor trim pool (1 roll)
        loot_generator.performWeightedPool(1, 1, 75, [
            new WeightedPoolItem(<item:minecraft:ward_armor_trim_smithing_template>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:silence_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Lucky pool reference (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 8, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 1, 2)
        ]);

        // Banner pool (1 bonus roll)
        loot_generator.performWeightedPool(0, 1, 130, [
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:bricks"},
                {color: "red", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:square_bottom_left"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "red", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:triangles_bottom"}
            ]), 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 1, 1)
        ]);

        // Generation functions (corrected probabilities)
        loot_generator.generateNToolsWithProbability(1, 0.023); // netherite_hoe 4/175
        loot_generator.generateNArmorsWithProbability(1, 0.080); // golden + iron armor 14/175
        loot_generator.generateNPotionsWithProbability(1, 0.091); // potions 16/175
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/ancient_cities/nether_magma_box"}]
loot.modifiers.register(
    "repurposed_structures_chests_ancient_cities_nether_magma_box",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/ancient_cities/nether_magma_box>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_biomes");
        val loot_generator = new LootGenerator(loot_context);

        // Utility chest pool (4-10 rolls)
        loot_generator.performWeightedPool(4, 10, 0, [
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 1, 10),
            new WeightedPoolItem(<item:minecraft:glowstone>, 1, 3, 13),
            new WeightedPoolItem(<item:minecraft:obsidian>, 2, 3, 12),
            new WeightedPoolItem(<item:minecraft:lava_bucket>, 4, 1, 3)
        ]);

        // Lucky pool reference
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 8, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 1, 2)
        ]);

        // Banner pool (1 bonus roll)
        loot_generator.performWeightedPool(0, 1, 130, [
            new WeightedPoolItem(<item:minecraft:red_banner>.withJsonComponent(<componenttype:minecraft:banner_patterns>, [
                {color: "black", pattern: "minecraft:bricks"},
                {color: "red", pattern: "minecraft:small_stripes"},
                {color: "black", pattern: "minecraft:gradient_up"},
                {color: "red", pattern: "minecraft:gradient_up"},
                {color: "black", pattern: "minecraft:rhombus"},
                {color: "red", pattern: "minecraft:square_bottom_right"},
                {color: "black", pattern: "minecraft:square_bottom_right"},
                {color: "red", pattern: "minecraft:square_bottom_left"},
                {color: "black", pattern: "minecraft:square_bottom_left"},
                {color: "red", pattern: "minecraft:triangles_bottom"},
                {color: "red", pattern: "minecraft:triangles_bottom"},
                {color: "black", pattern: "minecraft:triangles_bottom"}
            ]), 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);