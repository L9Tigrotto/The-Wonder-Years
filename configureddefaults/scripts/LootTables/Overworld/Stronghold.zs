import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT STRONGHOLD LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/stronghold_corridor"}]
loot.modifiers.register(
    "minecraft_chests_stronghold_corridor",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_corridor>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 9, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:apple>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:bread>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 5, 4, 9),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.05);
        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateNArmorsWithProbability(1, 0.24);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/stronghold_crossing"}]
loot.modifiers.register(
    "minecraft_chests_stronghold_crossing",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_crossing>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 4, 8, [
            new WeightedPoolItem(<item:minecraft:coal>, 10, 3, 8),
            new WeightedPoolItem(<item:minecraft:bread>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:redstone>, 5, 4, 9)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/stronghold_library"}]
loot.modifiers.register(
    "minecraft_chests_stronghold_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 100, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 5, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTER STRONGHOLDS DATAPACK LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/armoury"}]
loot.modifiers.register(
    "betterstrongholds_chests_armoury",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/armoury>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 15, [
            new WeightedPoolItem(<item:minecraft:coal>, 7, 2, 7),
            new WeightedPoolItem(<item:minecraft:charcoal>, 7, 2, 7),
            new WeightedPoolItem(<item:minecraft:shield>, 6, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.20);
        loot_generator.generateNArmorsWithProbability(2, 0.67);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/cmd_yung"}]
loot.modifiers.register(
    "betterstrongholds_chests_cmd_yung",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/cmd_yung>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, []);

        loot_generator.generateNWeaponsWithProbability(1, 1.00);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(6, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/common"}]
loot.modifiers.register(
    "betterstrongholds_chests_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 10, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:redstone>, 5, 4, 9),
            new WeightedPoolItem(<item:minecraft:coal>, 10, 3, 8),
            new WeightedPoolItem(<item:minecraft:bread>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:potato>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:cobweb>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:torch>, 5, 2, 4)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.02);
        loot_generator.generateNArmorsWithProbability(1, 0.03);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/crypt"}]
loot.modifiers.register(
    "betterstrongholds_chests_crypt",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/crypt>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 5, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/grand_library"}]
loot.modifiers.register(
    "betterstrongholds_chests_grand_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/grand_library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/library_md"}]
loot.modifiers.register(
    "betterstrongholds_chests_library_md",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/library_md>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 10, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/mess"}]
loot.modifiers.register(
    "betterstrongholds_chests_mess",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/mess>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 10, 0, [
            new WeightedPoolItem(<item:minecraft:bread>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cookie>, 3, 3, 7),
            new WeightedPoolItem(<item:minecraft:beetroot>, 3, 3, 7),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 3, 5, 7),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 2, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/prison_lg"}]
loot.modifiers.register(
    "betterstrongholds_chests_prison_lg",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/prison_lg>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 6, 0, [
            new WeightedPoolItem(<item:minecraft:iron_bars>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:chain>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/trap"}]
loot.modifiers.register(
    "betterstrongholds_chests_trap",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/trap>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 5, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 4, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 4, 6),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:bone>, 1, 5, 7),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/treasure"}]
loot.modifiers.register(
    "betterstrongholds_chests_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "underground");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 3, 2, 7),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 3, 2, 7),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:redstone>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 4, 3, 6)
        ]);

        loot_generator.generateArtifact(18);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(5, 0.30);

        return loot_context.loot;
    }
);