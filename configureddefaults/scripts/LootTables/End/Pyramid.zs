import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// REPURPOSED STRUCTURES END PYRAMID LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:trapped_chests/pyramids/end"}]
loot.modifiers.register(
    "repurposed_structures_chests_end_pyramid",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:trapped_chests/pyramids/end>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(2, 4, 145, [
            new WeightedPoolItem(<item:minecraft:obsidian>, 65, 1, 6),
            new WeightedPoolItem(<item:minecraft:purpur_block>, 65, 1, 6),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 65, 1, 2),
            new WeightedPoolItem(<item:minecraft:phantom_membrane>, 40, 1, 2),
            new WeightedPoolItem(<item:minecraft:shulker_shell>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 105, 1, 8),
            new WeightedPoolItem(<item:minecraft:emerald>, 105, 3, 8),
            new WeightedPoolItem(<item:minecraft:end_crystal>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:elytra>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:purple_dye>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 15, 2, 9),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 10, 4, 16),
            new WeightedPoolItem(<item:minecraft:ender_eye>, 30, 2, 8),
            new WeightedPoolItem(<item:minecraft:dune_armor_trim_smithing_template>, 2, 2, 2)
        ]);

        // Generation functions with enhanced rates for end-tier structure
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.18);
        loot_generator.generateNArmorsWithProbability(1, 0.25);
        loot_generator.generateNPotionsWithProbability(1, 0.12);
        loot_generator.generateNEssences(3, 4);
        loot_generator.generateArtifact(4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTER DESERT TEMPLES END VARIANT LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/food_storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_food_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/food_storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(5, 7, 5, [
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 15, 6, 12),
            new WeightedPoolItem(<item:minecraft:popped_chorus_fruit>, 10, 6, 10),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 5, 2, 4)
        ]);

        // Generation functions with food storage appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.05);
        loot_generator.generateNWeaponsWithProbability(1, 0.03);
        loot_generator.generateNArmorsWithProbability(1, 0.08);
        loot_generator.generateNPotionsWithProbability(2, 0.45);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/lab"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_lab",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/lab>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 5, 15, [
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 10, 2, 6),
            new WeightedPoolItem(<item:minecraft:phantom_membrane>, 10, 2, 7),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 4, 2, 6),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:sugar>, 10, 3, 8),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 4, 3, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 10, 6, 12),
            new WeightedPoolItem(<item:minecraft:stick>, 10, 4, 8)
        ]);

        // Generation functions with lab appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.08);
        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateNArmorsWithProbability(1, 0.10);
        loot_generator.generateNPotionsWithProbability(4, 0.85);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/library"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(2, 10, 10, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1)
        ]);

        // Generation functions with library appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.06);
        loot_generator.generateNWeaponsWithProbability(1, 0.04);
        loot_generator.generateNArmorsWithProbability(1, 0.08);
        loot_generator.generateNPotionsWithProbability(1, 0.10);
        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/pharaoh_hidden"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_pharaoh_hidden",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/pharaoh_hidden>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(4, 4, 5, [
            new WeightedPoolItem(<item:minecraft:ender_eye>, 5, 4, 8)
        ]);

        // Generation functions with hidden pharaoh appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.10);
        loot_generator.generateNWeaponsWithProbability(1, 1.0);
        loot_generator.generateNArmorsWithProbability(1, 0.15);
        loot_generator.generateNPotionsWithProbability(1, 0.08);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/pot"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_pot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/pot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(4, 6, 5, [
            new WeightedPoolItem(<item:minecraft:purple_terracotta>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:magenta_terracotta>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:beetroot>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 4, 6),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 5, 6, 12)
        ]);

        // Generation functions with pot appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.04);
        loot_generator.generateNWeaponsWithProbability(1, 0.03);
        loot_generator.generateNArmorsWithProbability(1, 0.06);
        loot_generator.generateNPotionsWithProbability(1, 0.08);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/statue"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_statue",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/statue>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 2, 5, [
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 2, 9),
            new WeightedPoolItem(<item:minecraft:diamond>, 10, 2, 6)
        ]);

        // Generation functions with statue appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.06);
        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateNArmorsWithProbability(1, 0.10);
        loot_generator.generateNPotionsWithProbability(1, 0.04);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(2, 4, 25, [
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 50, 4, 8),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 3, 9),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 8, 16),
            new WeightedPoolItem(<item:minecraft:weathered_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:oxidized_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 50, 2, 6),
            new WeightedPoolItem(<item:minecraft:bone>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:string>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:end_rod>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 10, 1, 1)
        ]);

        // Generation functions with storage appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.08);
        loot_generator.generateNWeaponsWithProbability(1, 0.06);
        loot_generator.generateNArmorsWithProbability(1, 0.25);
        loot_generator.generateNPotionsWithProbability(1, 0.08);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/tomb"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_tomb",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/tomb>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 3, 10, [
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 8),
            new WeightedPoolItem(<item:minecraft:saddle>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:cobweb>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:popped_chorus_fruit>, 5, 1, 8)
        ]);

        // Generation functions with tomb appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.06);
        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateNArmorsWithProbability(1, 0.08);
        loot_generator.generateNPotionsWithProbability(1, 0.06);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/tomb_pharaoh"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_tomb_pharaoh",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/tomb_pharaoh>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 4, 15, [
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 3, 8),
            new WeightedPoolItem(<item:minecraft:diamond>, 8, 3, 8),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:popped_chorus_fruit>, 5, 1, 8)
        ]);

        // Generation functions with pharaoh tomb appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.10);
        loot_generator.generateNWeaponsWithProbability(1, 0.35);
        loot_generator.generateNArmorsWithProbability(1, 0.30);
        loot_generator.generateNPotionsWithProbability(1, 0.08);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/end/wardrobe"}]
loot.modifiers.register(
    "betterdeserttemples_chests_end_wardrobe",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/end/wardrobe>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_themed");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 6, 25, [
            new WeightedPoolItem(<item:minecraft:purple_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:magenta_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:black_dye>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:purple_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:magenta_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:pink_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:feather>, 5, 4, 6)
        ]);

        // Generation functions with wardrobe appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.05);
        loot_generator.generateNWeaponsWithProbability(1, 0.04);
        loot_generator.generateNArmorsWithProbability(4, 0.90);
        loot_generator.generateNPotionsWithProbability(1, 0.06);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);