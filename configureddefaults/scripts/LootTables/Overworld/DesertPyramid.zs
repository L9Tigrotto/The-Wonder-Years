import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT DESERT PYRAMID LOOT TABLE  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/desert_pyramid"}]
loot.modifiers.register(
    "minecraft_chests_desert_pyramid",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/desert_pyramid>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
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
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 15, 1, 3),
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

        // Pool 4: Topaz upgrade template (1 roll)
        loot_generator.performWeightedPool(1, 1, 6, [
            new WeightedPoolItem(<item:mythicupgrades:topaz_upgrade_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions - calculated from vanilla probabilities
        loot_generator.generateNArmorsWithProbability(1, 0.13);
        loot_generator.generateNPotionsWithProbability(1, 0.20);
        loot_generator.generateNEssences(3, 8);
        loot_generator.generateArtifact(8);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(5, 0.30);

        loot_context.addLootWithProbability(<item:endrem:old_eye>, 0.30 / 6.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES POT LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:betterdeserttemples:chests/pot"}]
loot.modifiers.register(
    "betterdeserttemples_chests_pot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/pot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:terracotta>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:dirt>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 2, 3),
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

// =============================================================================
// BETTERDESERTTEMPLES STATUE LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/statue"}]
loot.modifiers.register(
    "betterdeserttemples_chests_statue",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/statue>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 2, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES STORAGE LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:sand>, 50, 4, 8),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 20, 2, 4),
            new WeightedPoolItem(<item:minecraft:weathered_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:oxidized_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 50, 2, 6),
            new WeightedPoolItem(<item:minecraft:bone>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:string>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 10, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.16);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES TOMB LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/tomb"}]
loot.modifiers.register(
    "betterdeserttemples_chests_tomb",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/tomb>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Treasure items (1-3 rolls)
        loot_generator.performWeightedPool(1, 3, 10, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:cobweb>, 15, 1, 1)
        ]);

        // Pool 2: Basic materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:sand>, 5, 1, 8)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES TOMB PHARAOH LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/tomb_pharaoh"}]
loot.modifiers.register(
    "betterdeserttemples_chests_tomb_pharaoh",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/tomb_pharaoh>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: High-value treasure (3-4 rolls)
        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 3, 8),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 5, 1, 1)
        ]);

        // Pool 2: Basic materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:sand>, 5, 1, 8)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.14);
        loot_generator.generateNArmorsWithProbability(1, 0.14);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES WARDROBE LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/wardrobe"}]
loot.modifiers.register(
    "betterdeserttemples_chests_wardrobe",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/wardrobe>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:yellow_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:blue_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:orange_dye>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:blue_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:green_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:feather>, 5, 4, 6)
        ]);

        loot_generator.generateNArmorsWithProbability(2, 0.35);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES FOOD STORAGE LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/food_storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_food_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/food_storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 7, 0, [
            new WeightedPoolItem(<item:minecraft:potato>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:wheat>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:bread>, 5, 4, 6),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:dried_kelp>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:honey_bottle>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 5, 6, 12)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES LAB LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/lab"}]
loot.modifiers.register(
    "betterdeserttemples_chests_lab",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/lab>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Alchemy ingredients (3-5 rolls) - Remove potions
        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 10, 2, 5),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 4, 2, 3),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:carrot>, 10, 3, 8),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 4, 3, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 6, 1, 3)
        ]);

        // Pool 2: Basic materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:stick>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:cobweb>, 10, 3, 6)
        ]);

        loot_generator.generateNPotionsWithProbability(1, 0.22); // Water potions: 10 weight / 45 total
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES LIBRARY LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/library"}]
loot.modifiers.register(
    "betterdeserttemples_chests_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDESERTTEMPLES PHARAOH HIDDEN LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/pharaoh_hidden"}]
loot.modifiers.register(
    "betterdeserttemples_chests_pharaoh_hidden",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/pharaoh_hidden>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:sand>, 5, 4, 8)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 1.0); // Guaranteed cursed golden sword
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);