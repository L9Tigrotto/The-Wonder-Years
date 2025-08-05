import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// BETTER DESERT TEMPLES - BADLANDS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:trapped_chests/pyramids/badlands"}]
loot.modifiers.register(
    "repurposed_structures_trapped_chests_pyramids_badlands",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:trapped_chests/pyramids/badlands>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Main treasure pool (2-4 rolls) - Remove tools/armor/books/potions
        loot_generator.performWeightedPool(2, 4, 15, [
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 25, 3, 7),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 2, 7),
            new WeightedPoolItem(<item:minecraft:leather>, 20, 1, 5),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone>, 25, 4, 6),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 1, 5),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 25, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 3)
        ]);

        // Pool 2: Basic materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:sand>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 8)
        ]);

        // Generation functions - calculated from vanilla probabilities
        loot_generator.generateNArmorsWithProbability(1, 0.13);
        loot_generator.generateNPotionsWithProbability(1, 0.20);
        loot_generator.generateNEssences(3, 4);
        loot_generator.generateArtifact(4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(5, 0.30);

        loot_context.addLootWithProbability(<item:endrem:old_eye>, 0.30 / 4.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/pot"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_pot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/pot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:orange_terracotta>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:coarse_dirt>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:wheat>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 4, 6),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 5, 6, 12)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/statue"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_statue",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/statue>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 2, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (removed enchanted book and horse armor)
        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:red_sand>, 50, 4, 8),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:weathered_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:oxidized_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 50, 2, 6),
            new WeightedPoolItem(<item:minecraft:bone>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:string>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 10, 1, 1)
        ]);

        // Original weights: enchanted_book(10) + horse_armors(15+10+10=35) = 45/305 total
        loot_generator.generateNArmorsWithProbability(1, 0.115); // 35/305
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/tomb"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_tomb",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/tomb>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1 - Treasure items (removed enchanted book)
        loot_generator.performWeightedPool(1, 3, 10, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:cobweb>, 15, 1, 1)
        ]);

        // Pool 2 - Basic materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:red_sand>, 5, 1, 8)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/tomb_pharaoh"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_tomb_pharaoh",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/tomb_pharaoh>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1 - High-value treasure (removed enchanted book, golden sword, diamond horse armor)
        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 3, 8),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 5, 1, 1)
        ]);

        // Pool 2 - Basic materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:red_sand>, 5, 1, 8)
        ]);

        // Original weights: enchanted_book(5) + golden_sword(5) + diamond_horse_armor(5) = 15/35 total
        loot_generator.generateNWeaponsWithProbability(1, 0.143); // 5/35 cursed golden sword
        loot_generator.generateNArmorsWithProbability(1, 0.143); // 5/35 diamond horse armor
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/wardrobe"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_wardrobe",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/wardrobe>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (removed all leather armor pieces)
        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:red_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:blue_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:orange_dye>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:red_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:blue_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:feather>, 5, 4, 6)
        ]);

        // Original: leather armor pieces had weights 2+2+2+2+1+1+1+1+1+1+1+1 = 16 out of 44 total
        loot_generator.generateNArmorsWithProbability(2, 0.36); // 16/44 = 0.36
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/food_storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_food_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/food_storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 7, 0, [
            new WeightedPoolItem(<item:minecraft:potato>, 4, 6, 12),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:wheat>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:bread>, 5, 4, 6),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:dried_kelp>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 5, 6, 12)
        ]);

        // Original: honey_bottle weight 5 out of 39 total
        loot_generator.generateNPotionsWithProbability(1, 0.128); // 5/39
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/lab"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_lab",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/lab>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1 - Brewing ingredients (removed water potions)
        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 10, 2, 5),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 4, 2, 3),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:carrot>, 10, 3, 8),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 4, 3, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 6, 1, 3)
        ]);

        // Pool 2 - Basic materials
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:stick>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:cobweb>, 10, 3, 6)
        ]);

        // Original: water potion weight 10 out of 55 total
        loot_generator.generateNPotionsWithProbability(1, 0.18); // 10/55
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/library"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (removed enchanted books)
        loot_generator.performWeightedPool(2, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1)
        ]);

        // Original: enchanted books level 10 (weight 3) + level 20 (weight 3) = 6 out of 48 total
        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/badlands/pharaoh_hidden"}]
loot.modifiers.register(
    "betterdeserttemples_chests_badlands_pharaoh_hidden",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/badlands/pharaoh_hidden>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 2 - Red sand (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:red_sand>, 5, 4, 8)
        ]);

        // Original: Pool 1 had 1 roll with golden sword (weight 1) - 100% chance
        loot_generator.generateNWeaponsWithProbability(1, 1.0); // Guaranteed cursed golden sword
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);