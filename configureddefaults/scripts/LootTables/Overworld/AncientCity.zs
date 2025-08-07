import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT ANCIENT CITY LOOT TABLES
// =============================================================================

loot.modifiers.register(
    "minecraft_chests_ancient_city",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/ancient_city>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Main loot (1-3 rolls, weight 75 empty)
        loot_generator.performWeightedPool(1, 3, 75, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:sculk_catalyst>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:echo_shard>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:disc_fragment_5>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 7, 6, 15),
            new WeightedPoolItem(<item:minecraft:bone>, 5, 1, 15),
            new WeightedPoolItem(<item:minecraft:soul_torch>, 5, 1, 15),
            new WeightedPoolItem(<item:minecraft:sculk_sensor>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:candle>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 3, 1, 15),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:compass>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 2, 1, 5)
        ]);

        // Pool 2: Armor trims (1 roll, weight 183 empty)
        loot_generator.performWeightedPool(1, 1, 183, [
            new WeightedPoolItem(<item:minecraft:ward_armor_trim_smithing_template>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:silence_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(2, 0.02);
        loot_generator.generateNWeaponsWithProbability(1, 0.01);
        loot_generator.generateNArmorsWithProbability(3, 0.03);
        loot_generator.generateNPotionsWithProbability(1, 0.02);
        loot_generator.generateNEssences(2, 15);
        loot_generator.generateHatBagWithProbability(0.15);
        loot_generator.generateMoneyBagWithProbability(4, 0.20);

        return loot_context.loot;
    }
);

loot.modifiers.register(
    "minecraft_chests_ancient_city_ice_box",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/ancient_city_ice_box>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Food items (4-10 rolls, total weight 9)
        loot_generator.performWeightedPool(4, 10, 0, [
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 1, 10),
            new WeightedPoolItem(<item:minecraft:baked_potato>, 1, 1, 10),
            new WeightedPoolItem(<item:minecraft:packed_ice>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:snowball>, 4, 2, 6)
        ]);

        loot_generator.generateNEssences(2, 8);
        loot_generator.generateHatBagWithProbability(0.10);
        loot_generator.generateMoneyBagWithProbability(1, 0.15);

        return loot_context.loot;
    }
);

// =============================================================================
// NOVA STRUCTURES ANCIENT CITY LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/ancient_city"}]
loot.modifiers.register(
    "nova_structures_chests_ancient_city",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/ancient_city>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // Main weighted pool (4 rolls) - NO tools/armor/books/potions
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:dragon_breath>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 4, 10),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 5, 8),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 10, 6, 15),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 4, 10),
            new WeightedPoolItem(<item:minecraft:sculk_catalyst>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:name_tag>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_13>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_cat>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:sculk>, 15, 4, 8),
            new WeightedPoolItem(<item:minecraft:sculk_sensor>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:candle>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 10, 1, 6),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:glow_berries>, 13, 1, 15),
            new WeightedPoolItem(<item:minecraft:echo_shard>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:disc_fragment_5>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 25, 1, 15),
            new WeightedPoolItem(<item:minecraft:soul_torch>, 15, 1, 15),
            new WeightedPoolItem(<item:minecraft:coal>, 30, 6, 15)
        ]);

        // Rare armor trims (1 roll, 93.6% empty)
        loot_generator.performWeightedPool(1, 1, 131, [
            new WeightedPoolItem(<item:minecraft:ward_armor_trim_smithing_template>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:silence_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Generation functions with calculated probabilities (main chest ÷2 scaling)
        loot_generator.generateNToolsWithProbability(4, 0.086);
        loot_generator.generateNWeaponsWithProbability(1, 0.009);
        loot_generator.generateNArmorsWithProbability(11, 0.138);
        loot_generator.generateNPotionsWithProbability(5, 0.108);
        loot_generator.generateNEssences(5, 100);
        loot_generator.generateArtifact(50); // ONLY in main custom chest
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(5, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/ancient_city_ice_box"}]
loot.modifiers.register(
    "nova_structures_chests_ancient_city_ice_box",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/ancient_city_ice_box>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        // Food storage (5 rolls) - same items as datapack
        loot_generator.performWeightedPool(5, 5, 0, [
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 5, 10),
            new WeightedPoolItem(<item:minecraft:baked_potato>, 1, 5, 15),
            new WeightedPoolItem(<item:minecraft:packed_ice>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:snowball>, 4, 2, 6)
        ]);

        // Very rare armor trims (1 roll, 98% empty)
        loot_generator.performWeightedPool(1, 1, 150, [
            new WeightedPoolItem(<item:minecraft:ward_armor_trim_smithing_template>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:silence_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Secondary chest - no artifacts, reduced rates (÷3 scaling)
        loot_generator.generateNEssences(2, 6);
        loot_generator.generateHatBagWithProbability(0.15);
        loot_generator.generateMoneyBagWithProbability(2, 0.20);

        return loot_context.loot;
    }
);