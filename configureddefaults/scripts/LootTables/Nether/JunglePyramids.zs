import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// BETTER TEMPLES - SOUL TEMPLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/soul/campsite"}]
loot.modifiers.register(
    "bettertemples_chests_soul_campsite",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/soul/campsite>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "soul_sand_valley");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:bone_block>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 3, 7),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.045);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/soul/treasure"}]
loot.modifiers.register(
    "bettertemples_chests_soul_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/soul/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "soul_sand_valley");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 4, 7)
        ]);

        loot_generator.performWeightedPool(6, 8, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 2, 5)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(5, 30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTER TEMPLES - WARPED TEMPLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/warped/campsite"}]
loot.modifiers.register(
    "bettertemples_chests_warped_campsite",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/warped/campsite>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "warped_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 3, 7),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.045);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/warped/treasure"}]
loot.modifiers.register(
    "bettertemples_chests_warped_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/warped/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "warped_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 4, 7)
        ]);

        loot_generator.performWeightedPool(6, 8, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 2, 5)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTER TEMPLES - BASALT TEMPLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/basalt/campsite"}]
loot.modifiers.register(
    "bettertemples_chests_basalt_campsite",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/basalt/campsite>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:basalt>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 3, 7),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.045);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/basalt/treasure"}]
loot.modifiers.register(
    "bettertemples_chests_basalt_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/basalt/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 4, 7)
        ]);

        loot_generator.performWeightedPool(6, 8, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 2, 5)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTER TEMPLES - CRIMSON TEMPLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/crimson/campsite"}]
loot.modifiers.register(
    "bettertemples_chests_crimson_campsite",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/crimson/campsite>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "crimson_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 3, 7),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.045);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/crimson/treasure"}]
loot.modifiers.register(
    "bettertemples_chests_crimson_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/crimson/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "crimson_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 4, 7)
        ]);

        loot_generator.performWeightedPool(6, 8, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 2, 5)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTER TEMPLES - WASTELAND TEMPLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/wasteland/campsite"}]
loot.modifiers.register(
    "bettertemples_chests_wasteland_campsite",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/wasteland/campsite>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 3, 7),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.045);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"bettertemples:chests/wasteland/treasure"}]
loot.modifiers.register(
    "bettertemples_chests_wasteland_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:bettertemples:chests/wasteland/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 4, 7)
        ]);

        loot_generator.performWeightedPool(6, 8, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 2, 5)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);