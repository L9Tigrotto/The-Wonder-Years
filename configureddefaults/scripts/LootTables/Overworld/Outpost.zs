import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT PILLAGER OUTPOST LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/pillager_outpost"}]
loot.modifiers.register(
    "minecraft_chests_pillager_outpost",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/pillager_outpost>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        // Food pool (2-3 rolls)
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 7, 3, 5),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 3, 5)
        ]);

        // Dark oak logs pool (1-3 rolls)
        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 3)
        ]);

        // Mixed utility pool (2-3 rolls)
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:arrow>, 4, 2, 7),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 1, 3)
        ]);

        // Armor trim pool (based on wiki mentions - estimated structure)
        loot_generator.performWeightedPool(1, 1, 10, [
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(1, 0.5);
        loot_generator.generateNEssences(2, 25);
        loot_generator.generateNWeaponsWithProbability(1, 0.5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:pillager_treasure"}]
loot.modifiers.register(
    "revampedvillages_pillager_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:pillager_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        // Food pool (2-3 rolls)
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 7, 3, 5),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 3, 5)
        ]);

        // Dark oak logs pool (1-3 rolls)
        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 3)
        ]);

        // Mixed utility pool (2-3 rolls)
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:arrow>, 4, 2, 7),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 1, 3)
        ]);

        // Armor trim pool (based on wiki mentions - estimated structure)
        loot_generator.performWeightedPool(1, 1, 10, [
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(1, 0.5);
        loot_generator.generateNEssences(3, 5);
        loot_generator.generateArtifact(5);
        loot_generator.generateGoatHornWithProbability(0.50);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        loot_context.addLootWithProbability(<item:endrem:corrupted_eye>, 0.30 / 5.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// =============================================================================
// TERRALITH DESERT OUTPOST LOOT TABLES  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:desert_outpost"}]
loot.modifiers.register(
    "terralith_chests_desert_outpost",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:desert_outpost>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Food pool (2-3 rolls)
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 7, 3, 5),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 3, 5)
        ]);

        // Desert materials pool (1-4 rolls)
        loot_generator.performWeightedPool(1, 4, 0, [
            new WeightedPoolItem(<item:minecraft:orange_wool>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:sandstone>, 1, 2, 3)
        ]);

        // Mixed utility pool (2-3 rolls)
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:arrow>, 4, 2, 7),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 1, 3)
        ]);

        // Armor trim pool (1 roll, 12 empty weight, 2 trim types)
        loot_generator.performWeightedPool(1, 1, 12, [
            new WeightedPoolItem(<item:minecraft:dune_armor_trim_smithing_template>, 1, 2, 2),
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions with custom rates
        loot_generator.generateNWeaponsWithProbability(1, 1.0);
        loot_generator.generateNEssences(3, 5);
        loot_generator.generateArtifact(5);
        loot_generator.generateNWeaponsWithProbability(1, 0.5);
        loot_generator.generateHatBagWithProbability(0.12);
        loot_generator.generateMoneyBagWithProbability(1, 0.18);

        loot_context.addLootWithProbability(<item:endrem:corrupted_eye>, 0.30 / 10.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);