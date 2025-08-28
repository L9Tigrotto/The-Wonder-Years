import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT BURIED TREASURE LOOT TABLES - JAVA EDITION
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/buried_treasure"}]
loot.modifiers.register(
    "minecraft_chests_buried_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/buried_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "beach");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Guaranteed Heart of the Sea (100% chance)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:heart_of_the_sea>, 1, 1, 1)
        ]);

        // Pool 2-6: Need exact Java Edition pool data to complete transformation
        // Currently using estimated structure - REQUIRES VERIFICATION
        loot_generator.performWeightedPool(3, 8, 15, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:prismarine_crystals>, 5, 1, 5)
        ]);

        // Structure-specific items pool
        loot_generator.performWeightedPool(1, 3, 20, [
            new WeightedPoolItem(<item:minecraft:tnt>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:cooked_cod>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:cooked_salmon>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:music_disc_wait>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mellohi>, 5, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.10);
        loot_generator.generateNWeaponsWithProbability(1, 0.10);
        loot_generator.generateNArmorsWithProbability(1, 0.15);
        loot_generator.generateNPotionsWithProbability(1, 0.20);
        loot_generator.generateNEssences(3, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(5, 0.30);

        loot_context.addLootWithProbability(<item:endrem:black_eye>, 0.30 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);