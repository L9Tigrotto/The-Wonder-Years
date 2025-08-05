import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// BETTERSTRONGHOLDS NETHER STRONGHOLD LOOT TABLES  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/armoury"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_armoury",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/armoury>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 5, 20, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 7, 2, 7),
            new WeightedPoolItem(<item:minecraft:gold_block>, 7, 2, 7)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.65);
        loot_generator.generateNArmorsWithProbability(3, 0.8);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/cmd_yung"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_cmd_yung",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/cmd_yung>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNWeaponsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/common"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 25, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 11, 1, 8),
            new WeightedPoolItem(<item:minecraft:quartz>, 5, 4, 9),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:torch>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:soul_torch>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.08);
        loot_generator.generateNArmorsWithProbability(1, 0.12);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/crypt"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_crypt",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/crypt>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 7, 15, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 2, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.29);
        loot_generator.generateNEssences(2, 5.5);
        loot_generator.generateHatBagWithProbability(0.12);
        loot_generator.generateMoneyBagWithProbability(1, 0.1);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/grand_library"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_grand_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/grand_library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 10, 30, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lodestone>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:respawn_anchor>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/library_md"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_library_md",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/library_md>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 10, 35, [
            new WeightedPoolItem(<item:minecraft:book>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 10, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lodestone>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:respawn_anchor>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/mess"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_mess",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/mess>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 10, 25, [
            new WeightedPoolItem(<item:minecraft:nether_wart>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 3, 3, 7),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 3, 3, 7),
            new WeightedPoolItem(<item:minecraft:beetroot>, 3, 5, 7),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 2, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/prison_lg"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_prison_lg",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/prison_lg>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 7, 20, [
            new WeightedPoolItem(<item:minecraft:iron_bars>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:chain>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/trap"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_trap",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/trap>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 7, 15, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 4, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 4, 6),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:bone>, 1, 5, 7),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 6.0);
        loot_generator.generateHatBagWithProbability(0.15);
        loot_generator.generateMoneyBagWithProbability(2, 0.2);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/nether/treasure"}]
loot.modifiers.register(
    "betterstrongholds_chests_nether_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/nether/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 5, 10, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:gold_block>, 3, 2, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 3, 2, 7),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:quartz>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:respawn_anchor>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_pigstep>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(3, 3.5);
        loot_generator.generateArtifact(18);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);