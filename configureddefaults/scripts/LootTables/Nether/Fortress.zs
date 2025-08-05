import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT NETHER BRIDGE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/nether_bridge"}]
loot.modifiers.register(
    "minecraft_chests_nether_bridge",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/nether_bridge>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (structure-specific items only)
        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 5, 3, 7),
            new WeightedPoolItem(<item:minecraft:saddle>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:obsidian>, 2, 2, 4)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(1, 0.07);
        loot_generator.generateNArmorsWithProbability(1, 0.29);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTER FORTRESSES NETHER FORTRESS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/beacon"}]
loot.modifiers.register(
    "betterfortresses_chests_beacon",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/beacon>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (structure-specific items only)
        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:arrow>, 5, 4, 8),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 5, 2, 3)
        ]);

        // Generation functions (beacon specializes in weapons)
        loot_generator.generateNWeaponsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/extra"}]
loot.modifiers.register(
    "betterfortresses_chests_extra",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/extra>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(2, 5, 0, [
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 25, 2, 4),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 25, 2, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:leather>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 50, 3, 6),
            new WeightedPoolItem(<item:minecraft:quartz>, 50, 3, 6)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/hall"}]
loot.modifiers.register(
    "betterfortresses_chests_hall",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/hall>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(2, 5, 0, [
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 25, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:leather>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 50, 3, 6)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/keep"}]
loot.modifiers.register(
    "betterfortresses_chests_keep",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/keep>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (structure-specific items only)
        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:flint>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 10, 1, 1)
        ]);

        // Generation functions (keep is the main fortress chest)
        loot_generator.generateNWeaponsWithProbability(1, 0.09);
        loot_generator.generateNArmorsWithProbability(1, 0.39);
        loot_generator.generateNEssences(1, 35);
        loot_generator.generateArtifact(35);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        loot_context.addLootWithProbability(<item:endrem:nether_eye>, 0.30 / 15.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/obsidian"}]
loot.modifiers.register(
    "betterfortresses_chests_obsidian",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/obsidian>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:obsidian>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 50, 1, 3)
        ]);

        loot_generator.performWeightedPool(0, 1, 0, [
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/puzzle"}]
loot.modifiers.register(
    "betterfortresses_chests_puzzle",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/puzzle>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 50, 1, 2)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/quarters"}]
loot.modifiers.register(
    "betterfortresses_chests_quarters",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/quarters>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 25, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/storage"}]
loot.modifiers.register(
    "betterfortresses_chests_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 50, 2, 3),
            new WeightedPoolItem(<item:minecraft:quartz>, 50, 3, 8)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:magma_cream>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 50, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterfortresses:chests/worship"}]
loot.modifiers.register(
    "betterfortresses_chests_worship",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterfortresses:chests/worship>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 50, 2, 4)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 50, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);