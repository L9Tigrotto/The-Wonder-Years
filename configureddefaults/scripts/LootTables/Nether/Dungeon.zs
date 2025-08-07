import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// REPURPOSED STRUCTURES DUNGEON LOOT TABLES  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/nether"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_nether",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/nether>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 6, 20, [
            new WeightedPoolItem(<item:minecraft:coal>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:quartz>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 4, 8),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 2, 7),
            new WeightedPoolItem(<item:minecraft:redstone>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 5, 1, 10),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 3, 90, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_13>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_blocks>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_chirp>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_pigstep>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 3, 15, [
            new WeightedPoolItem(<item:minecraft:coal>, 15, 1, 9),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:quartz>, 5, 2, 9),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 4, 8),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 3, 9),
            new WeightedPoolItem(<item:minecraft:redstone>, 2, 2, 9),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 5, 6, 10)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.30);
        loot_generator.generateNArmorsWithProbability(2, 0.60);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDUNGEONS SMALL DUNGEON LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:small_dungeon/chests/nether_loot_piles"}]
loot.modifiers.register(
    "betterdungeons_small_dungeon_nether_loot_piles",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:small_dungeon/chests/nether_loot_piles>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:netherrack>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:quartz>, 1, 1, 5)
        ]);

        loot_generator.generateNEssences(2, 2);
        loot_generator.generateArtifact(2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);