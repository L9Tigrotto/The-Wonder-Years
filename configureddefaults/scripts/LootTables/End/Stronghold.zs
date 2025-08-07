import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// BETTERSTRONGHOLDS END STRUCTURE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/armoury"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_armoury",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/armoury>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 8, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 7, 2, 7),
            new WeightedPoolItem(<item:minecraft:diamond>, 7, 2, 7)
        ]);

        loot_generator.generateNWeaponsWithProbability(2, 0.80);
        loot_generator.generateNArmorsWithProbability(3, 0.90);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/cmd_yung"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_cmd_yung",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/cmd_yung>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNWeaponsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/common"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 8, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 20, 1, 8),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 4, 9),
            new WeightedPoolItem(<item:minecraft:lodestone>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_eye>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:chain>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:end_rod>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.40);
        loot_generator.generateNArmorsWithProbability(1, 0.50);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/crypt"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_crypt",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/crypt>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 8, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/grand_library"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_grand_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/grand_library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lodestone>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:respawn_anchor>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 45, [
            new WeightedPoolItem(<item:minecraft:filled_map>, 2, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/library_md"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_library_md",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/library_md>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 10, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lodestone>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:respawn_anchor>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 45, [
            new WeightedPoolItem(<item:minecraft:filled_map>, 2, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/mess"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_mess",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/mess>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 10, 0, [
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 3, 3, 7),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 3, 1, 7),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 3, 1, 7),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.generateNPotionsWithProbability(1, 0.55);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/prison_lg"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_prison_lg",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/prison_lg>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 8, 0, [
            new WeightedPoolItem(<item:minecraft:iron_bars>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:chain>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/trap"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_trap",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/trap>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 8, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 4, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 4, 6),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:bone>, 1, 5, 7),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterstrongholds:chests/end/treasure"}]
loot.modifiers.register(
    "betterstrongholds_chests_end_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterstrongholds:chests/end/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_city");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 8, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 12, 2, 7),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mall>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_stal>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_11>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.60);
        loot_generator.generateNWeaponsWithProbability(1, 0.60);
        loot_generator.generateNArmorsWithProbability(2, 0.75);
        loot_generator.generateArtifact(18);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);