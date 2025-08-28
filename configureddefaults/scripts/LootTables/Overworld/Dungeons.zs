import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// REPURPOSED STRUCTURES DUNGEON LOOT TABLES  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/badlands"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_badlands",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/badlands>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "badlands");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 90, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_13>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_blocks>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 20, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 15, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 2, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 4, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:red_dye>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:dead_bush>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 15, 1, 6)
        ]);

        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 2, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 2, 9),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 2, 9),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:cobweb>, 5, 1, 6),
            new WeightedPoolItem(<item:minecraft:red_sand>, 10, 1, 8)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.12);
        loot_generator.generateNWeaponsWithProbability(1, 0.10);
        loot_generator.generateNArmorsWithProbability(1, 0.25);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/dark_forest"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_dark_forest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/dark_forest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 85, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_ward>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_stal>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:totem_of_undying>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 12, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:green_dye>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:beetroot>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 7, 2, 6),
            new WeightedPoolItem(<item:minecraft:potato>, 7, 2, 6),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 10, 1, 1)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:cobweb>, 10, 1, 2)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateNWeaponsWithProbability(1, 0.15);
        loot_generator.generateNArmorsWithProbability(2, 0.45);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/deep"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_deep",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/deep>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "deep");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 80, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_stal>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_11>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 20, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 15, [
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 15, 2, 6),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 15, 4, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:glow_berries>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 2, 8),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 10, 1, 5)
        ]);

        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 2, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 2, 9),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 2, 9),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:cobweb>, 5, 1, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.18);
        loot_generator.generateNWeaponsWithProbability(1, 0.12);
        loot_generator.generateNArmorsWithProbability(1, 0.35);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/desert"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_desert",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/desert>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 85, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_13>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_strad>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 20, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 15, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:leather>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 9),
            new WeightedPoolItem(<item:minecraft:rabbit_hide>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:dead_bush>, 10, 4, 8)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 3, 12),
            new WeightedPoolItem(<item:minecraft:stick>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:sand>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:cobweb>, 5, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.30);
        loot_generator.generateNWeaponsWithProbability(1, 0.15);
        loot_generator.generateNArmorsWithProbability(1, 0.25);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/icy"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_icy",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/icy>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "icy");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 80, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_strad>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_wait>, 25, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 18, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 13, 1, 4),
            new WeightedPoolItem(<item:minecraft:cookie>, 28, 1, 3),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:light_blue_dye>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:light_gray_dye>, 15, 2, 4)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:ice>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:packed_ice>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:blue_ice>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:cobweb>, 10, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.12);
        loot_generator.generateNWeaponsWithProbability(1, 0.20);
        loot_generator.generateNArmorsWithProbability(1, 0.40);
        loot_generator.generateNPotionsWithProbability(1, 0.35);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/jungle"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_jungle",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/jungle>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "jungle");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 75, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_far>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_cat>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:writable_book>, 10, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 15, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:bread>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:wheat>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:torch>, 15, 2, 8),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 10, 4, 8),
            new WeightedPoolItem(<item:minecraft:melon>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:cocoa_beans>, 10, 2, 4)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:bamboo>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 5, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(2, 0.50);
        loot_generator.generateNWeaponsWithProbability(1, 0.12);
        loot_generator.generateNArmorsWithProbability(1, 0.20);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/mushroom"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_mushroom",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/mushroom>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "mushroom");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 80, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mellohi>, 25, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:clock>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:oak_boat>, 5, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 15, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:mycelium>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:torch>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:red_dye>, 7, 2, 4),
            new WeightedPoolItem(<item:minecraft:purple_dye>, 7, 2, 4),
            new WeightedPoolItem(<item:minecraft:brown_dye>, 7, 2, 4),
            new WeightedPoolItem(<item:minecraft:bowl>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 20, 2, 4)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.12);
        loot_generator.generateNArmorsWithProbability(1, 0.20);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/ocean"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_ocean",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/ocean>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Ocean dungeons reference multiple vanilla loot tables via weighted selection
        // Pool 1: References vanilla loot tables (buried_treasure, underwater_ruins, etc.)
        // Pool 2: Ocean-specific items
        loot_generator.performWeightedPool(1, 3, 50, [
            new WeightedPoolItem(<item:minecraft:music_disc_wait>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mall>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:nautilus_shell>, 16, 3, 6),
            new WeightedPoolItem(<item:minecraft:name_tag>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:prismarine_crystals>, 16, 1, 2),
            new WeightedPoolItem(<item:minecraft:prismarine_shard>, 16, 1, 6)
        ]);

        // Note: Ocean dungeons pull from vanilla loot tables (buried_treasure, underwater_ruins, etc.)
        // This provides varied loot without custom generation functions
        loot_generator.generateNToolsWithProbability(1, 0.20);
        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateNArmorsWithProbability(1, 0.30);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/snow"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_snow",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/snow>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "snow");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 80, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_strad>, 25, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_wait>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 15, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 12, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:cookie>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:sweet_berries>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:white_dye>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:light_gray_dye>, 15, 2, 4)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:snowball>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:snow_block>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:ice>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:cobweb>, 10, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.12);
        loot_generator.generateNWeaponsWithProbability(1, 0.20);
        loot_generator.generateNArmorsWithProbability(1, 0.40);
        loot_generator.generateNPotionsWithProbability(1, 0.25);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/dungeons/swamp"}]
loot.modifiers.register(
    "repurposed_structures_chests_dungeons_swamp",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/dungeons/swamp>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "swamp");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 80, [
            new WeightedPoolItem(<item:minecraft:saddle>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_cat>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_ward>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:slime_block>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:dark_oak_boat>, 15, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 15, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:slime_ball>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:pumpkin>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:carved_pumpkin>, 2, 2, 4),
            new WeightedPoolItem(<item:minecraft:carrot>, 10, 2, 4)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:lily_pad>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 8),
            new WeightedPoolItem(<item:minecraft:string>, 10, 1, 8)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.20);
        loot_generator.generateNArmorsWithProbability(1, 0.20);
        loot_generator.generateNPotionsWithProbability(1, 0.18);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDUNGEONS SMALL DUNGEON LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:small_dungeon/chests/end_loot_piles"}]
loot.modifiers.register(
    "betterdungeons_small_dungeon_end_loot_piles",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:small_dungeon/chests/end_loot_piles>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "the_end");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:end_stone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:end_stone_bricks>, 1, 1, 5)
        ]);

        loot_generator.generateNEssences(2, 2);
        loot_generator.generateArtifact(2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDUNGEONS SPIDER DUNGEON LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:spider_dungeon/chests/egg_room"}]
loot.modifiers.register(
    "betterdungeons_spider_dungeon_egg_room",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:spider_dungeon/chests/egg_room>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:spider_eye>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:lead>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:cobweb>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:string>, 10, 3, 6)
        ]);

        loot_generator.generateNPotionsWithProbability(4, 1.0);
        loot_generator.generateNEssences(2, 3);
        loot_generator.generateArtifact(3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDUNGEONS ZOMBIE DUNGEON LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:zombie_dungeon/chests/common"}]
loot.modifiers.register(
    "betterdungeons_zombie_dungeon_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:zombie_dungeon/chests/common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(0, 2, 5, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 2, 3, 6)
        ]);

        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:apple>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:torch>, 3, 4, 6),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 3, 2, 4),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 3, 2, 4),
            new WeightedPoolItem(<item:minecraft:cornflower>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:dead_bush>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:poppy>, 3, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 1, 2)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.60);
        loot_generator.generateNWeaponsWithProbability(1, 0.30);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:zombie_dungeon/chests/special"}]
loot.modifiers.register(
    "betterdungeons_zombie_dungeon_special",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:zombie_dungeon/chests/special>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(0, 2, 5, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 2, 3, 6)
        ]);

        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:apple>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:torch>, 3, 4, 6),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 3, 2, 4),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 3, 2, 4),
            new WeightedPoolItem(<item:minecraft:cornflower>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:dead_bush>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:poppy>, 3, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 1, 2)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.60);
        loot_generator.generateNWeaponsWithProbability(1, 0.30);
        loot_generator.generateNArmorsWithProbability(1, 0.40);
        loot_generator.generateNEssences(2, 2);
        loot_generator.generateArtifact(2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:zombie_dungeon/chests/tombstone"}]
loot.modifiers.register(
    "betterdungeons_zombie_dungeon_tombstone",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:zombie_dungeon/chests/tombstone>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERDUNGEONS SKELETON DUNGEON LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:skeleton_dungeon/chests/common"}]
loot.modifiers.register(
    "betterdungeons_skeleton_dungeon_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:skeleton_dungeon/chests/common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 5, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:slowness"}), 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:leaping"}), 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:fire_resistance"}), 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:swiftness"}), 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:long_swiftness"}), 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:harming"}), 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:poison"}), 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:weakness"}), 1, 2, 6)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 2, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 4),
            new WeightedPoolItem(<item:minecraft:redstone>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:name_tag>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 10, 2, 8),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 10, 2, 8)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.31);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdungeons:skeleton_dungeon/chests/middle"}]
loot.modifiers.register(
    "betterdungeons_skeleton_dungeon_middle",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterdungeons:skeleton_dungeon/chests/middle>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:charcoal>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:torch>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 10, 3, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 10, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 2);
        loot_generator.generateArtifact(2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);