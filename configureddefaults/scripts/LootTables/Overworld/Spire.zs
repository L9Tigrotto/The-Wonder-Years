import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// TERRALITH SPIRE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:spire/junk"}]
loot.modifiers.register(
    "terralith_spire_junk",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:spire/junk>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "cold");
        val loot_generator = new LootGenerator(loot_context);

        // Basic materials pool
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 5, 2, 8),
            new WeightedPoolItem(<item:minecraft:string>, 6, 4, 7),
            new WeightedPoolItem(<item:minecraft:cobweb>, 4, 2, 4),
            new WeightedPoolItem(<item:minecraft:snowball>, 6, 4, 12),
            new WeightedPoolItem(<item:minecraft:snow_block>, 4, 2, 8),
            new WeightedPoolItem(<item:minecraft:ice>, 5, 1, 7)
        ]);

        // Food items pool (40% chance)
        loot_generator.performWeightedPool(1, 1, 60, [
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:apple>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:bread>, 1, 1, 4)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.857);
        loot_generator.generateNWeaponsWithProbability(1, 0.143);
        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:spire/common"}]
loot.modifiers.register(
    "terralith_spire_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:spire/common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "cold");
        val loot_generator = new LootGenerator(loot_context);

        // Utility items pool
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:candle>, 6, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 8, 3, 12),
            new WeightedPoolItem(<item:minecraft:paper>, 12, 4, 11),
            new WeightedPoolItem(<item:minecraft:book>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:leather>, 5, 2, 8),
            new WeightedPoolItem(<item:minecraft:bone_block>, 2, 1, 5)
        ]);

        // Ice items pool
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:powder_snow_bucket>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:packed_ice>, 3, 3, 12),
            new WeightedPoolItem(<item:minecraft:blue_ice>, 4, 3, 7),
            new WeightedPoolItem(<item:minecraft:snowball>, 5, 2, 6)
        ]);

        // Metal resources pool
        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 3, 8),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 7, 4, 12),
            new WeightedPoolItem(<item:minecraft:copper_block>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 9, 4, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 9, 7, 15),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 2, 7),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.75);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:spire/rare"}]
loot.modifiers.register(
    "terralith_spire_rare",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:spire/rare>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "cold");
        val loot_generator = new LootGenerator(loot_context);

        // Ice items pool
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:snow_block>, 5, 1, 7),
            new WeightedPoolItem(<item:minecraft:powder_snow_bucket>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:packed_ice>, 3, 3, 12),
            new WeightedPoolItem(<item:minecraft:blue_ice>, 4, 3, 7),
            new WeightedPoolItem(<item:minecraft:snowball>, 5, 2, 6)
        ]);

        // Precious materials pool
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 3, 7, 11),
            new WeightedPoolItem(<item:minecraft:iron_block>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:copper_block>, 1, 4, 7),
            new WeightedPoolItem(<item:minecraft:weathered_copper>, 1, 4, 7),
            new WeightedPoolItem(<item:minecraft:exposed_copper>, 1, 4, 7),
            new WeightedPoolItem(<item:minecraft:oxidized_copper>, 1, 4, 7)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:spire/treasure"}]
loot.modifiers.register(
    "terralith_spire_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:spire/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "cold");
        val loot_generator = new LootGenerator(loot_context);

        // Ice items pool
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:snow_block>, 5, 1, 7),
            new WeightedPoolItem(<item:minecraft:powder_snow_bucket>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:packed_ice>, 3, 3, 12),
            new WeightedPoolItem(<item:minecraft:blue_ice>, 4, 3, 7),
            new WeightedPoolItem(<item:minecraft:snowball>, 5, 2, 6)
        ]);

        // Diamond items pool
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:diamond_block>, 1, 1, 2)
        ]);

        // Utility items pool
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:tnt>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1875);
        loot_generator.generateNWeaponsWithProbability(1, 0.125);
        loot_generator.generateNArmorsWithProbability(1, 0.1875);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);