import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// BETTERDESERTTEMPLES NETHER DESERT TEMPLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:trapped_chests/pyramids/nether"}]
loot.modifiers.register(
    "repurposed_structures_trapped_chests_pyramids_nether",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:trapped_chests/pyramids/nether>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Structure-specific and utility items (3-5 rolls, enhanced for nether)
        loot_generator.performWeightedPool(3, 5, 10, [
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 20, 3, 7),
            new WeightedPoolItem(<item:minecraft:leather>, 15, 1, 5),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 25, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 25, 3, 8),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 20, 2, 6),
            new WeightedPoolItem(<item:minecraft:diamond>, 8, 1, 5),
            new WeightedPoolItem(<item:minecraft:gold_block>, 12, 1, 7),
            new WeightedPoolItem(<item:minecraft:iron_block>, 15, 1, 10),
            new WeightedPoolItem(<item:minecraft:blackstone>, 25, 4, 8),
            new WeightedPoolItem(<item:minecraft:quartz>, 30, 6, 12),
            new WeightedPoolItem(<item:minecraft:quartz_block>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 25, 3, 8)
        ]);

        // Pool 2: Basic materials with redstone (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:sand>, 8, 1, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 2, 6)
        ]);

        // Pool 3: Armor trim (1 roll)
        loot_generator.performWeightedPool(1, 1, 6, [
            new WeightedPoolItem(<item:minecraft:dune_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions - enhanced for nether richness
        loot_generator.generateNArmorsWithProbability(1, 0.18);
        loot_generator.generateNEssences(3, 4);
        loot_generator.generateArtifact(4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        loot_context.addLootWithProbability(<item:endrem:old_eye>, 0.30 / 4.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/pot"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_pot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/pot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:black_terracotta>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:magma_block>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 5, 4, 6)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/statue"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_statue",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/statue>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_block>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 2, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:magma_block>, 50, 4, 8),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_block>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:weathered_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:oxidized_copper>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 50, 2, 6),
            new WeightedPoolItem(<item:minecraft:bone>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:string>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 10, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.30); 
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/tomb"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_tomb",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/tomb>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Main items (1-3 rolls)
        loot_generator.performWeightedPool(1, 3, 10, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:cobweb>, 15, 1, 1)
        ]);

        // Pool 2: Materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:magma_block>, 5, 1, 8)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/tomb_pharaoh"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_tomb_pharaoh",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/tomb_pharaoh>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Pharaoh treasures (3-4 rolls)
        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 3, 8),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 5, 1, 1)
        ]);

        // Pool 2: Materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:magma_block>, 5, 1, 8)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.14);
        loot_generator.generateNArmorsWithProbability(1, 0.14);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/wardrobe"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_wardrobe",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/wardrobe>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:orange_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:red_wool>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 2, 2, 6),
            new WeightedPoolItem(<item:minecraft:orange_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:red_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:black_dye>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:feather>, 5, 4, 6)
        ]);

        loot_generator.generateNArmorsWithProbability(2, 0.36); // Leather armor pieces total weight ~12/33
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/food_storage"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_food_storage",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/food_storage>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 7, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:porkchop>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 5, 4, 6),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:coal>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 5, 6, 12)
        ]);

        loot_generator.generateNPotionsWithProbability(1, 0.19);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/lab"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_lab",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/lab>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Brewing materials (3-5 rolls)
        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 10, 2, 5),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 10, 3, 8),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 4, 3, 8)
        ]);

        // Pool 2: Fuel materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:magma_block>, 4, 3, 6)
        ]);

        loot_generator.generateNPotionsWithProbability(2, 0.23);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/library"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
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

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/nether/pharaoh_hidden"}]
loot.modifiers.register(
    "betterdeserttemples_chests_nether_pharaoh_hidden",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/nether/pharaoh_hidden>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 2: Materials (4 rolls)
        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:magma_block>, 5, 4, 8)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);