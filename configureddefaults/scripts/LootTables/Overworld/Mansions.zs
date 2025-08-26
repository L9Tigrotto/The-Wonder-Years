import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT WOODLAND MANSION LOOT TABLE  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/woodland_mansion"}]
loot.modifiers.register(
    "minecraft_chests_woodland_mansion",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/woodland_mansion>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        // WARNING: Incomplete data - requires access to actual vanilla JSON file
        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:lead>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 1, 8),
            new WeightedPoolItem(<item:minecraft:bone>, 16, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 16, 1, 8),
            new WeightedPoolItem(<item:minecraft:string>, 16, 1, 8)
        ]);

        loot_generator.performWeightedPool(1, 4, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 100, 1, 4),
            new WeightedPoolItem(<item:minecraft:bread>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:coal>, 75, 1, 4),
            new WeightedPoolItem(<item:minecraft:redstone>, 75, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 25, 1, 4)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1); // Estimated diamond hoe + other tools
        loot_generator.generateNArmorsWithProbability(1, 0.08); // Chain chestplate + diamond chestplate
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// CUSTOM ILLAGER MANSION LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/evoker_chest"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_evoker_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/evoker_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:totem_of_undying>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 15, 2, 5)
        ]);

        loot_generator.generateNEssences(2, 1);
        loot_generator.generateNPotionsWithProbability(1, 0.6);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/generic"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_generic",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/generic>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:bread>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 1, 5),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.3);
        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateNArmorsWithProbability(1, 0.2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:minecraft:chests/illager_mansion/kitchen"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_kitchen",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/kitchen>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:bread>, 25, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:carrot>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:potato>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:wheat>, 15, 1, 6),
            new WeightedPoolItem(<item:minecraft:sugar>, 10, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/library_chest"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_library_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/library_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:paper>, 25, 2, 6),
            new WeightedPoolItem(<item:minecraft:feather>, 15, 1, 2),
            new WeightedPoolItem(<item:minecraft:ink_sac>, 10, 1, 3)
        ]);

        loot_generator.generateNEssences(2, 5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/map_chest"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_map_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/map_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:map>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 25, 2, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:filled_map>, 10, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/pillager_chest"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_pillager_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/pillager_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:arrow>, 25, 4, 12),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:string>, 20, 1, 5)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.6);
        loot_generator.generateNArmorsWithProbability(1, 0.4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/ravager_chest"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_ravager_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/ravager_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:saddle>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 20, 2, 5),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 2, 4)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.7);
        loot_generator.generateNArmorsWithProbability(1, 0.8);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/secret_room"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_secret_room",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/secret_room>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 2, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 3, 6),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(2, 5);
        loot_generator.generateArtifact(5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/smithing_room"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_smithing_room",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/smithing_room>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 25, 1, 5),
            new WeightedPoolItem(<item:minecraft:coal>, 20, 2, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(2, 0.8);
        loot_generator.generateNWeaponsWithProbability(1, 0.6);
        loot_generator.generateNArmorsWithProbability(1, 0.5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/vindicator_chest"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_vindicator_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/vindicator_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        // PLACEHOLDER: Requires actual JSON data
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:name_tag>, 15, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.7);
        loot_generator.generateNArmorsWithProbability(1, 0.5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/witch_chest"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_witch_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/witch_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 25, 1, 6),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:sugar>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:redstone>, 15, 1, 5),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 5, 1, 2)
        ]);

        loot_generator.generateNPotionsWithProbability(2, 0.8);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/illager_mansion/wool"}]
loot.modifiers.register(
    "minecraft_chests_illager_mansion_wool",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/illager_mansion/wool>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        // PLACEHOLDER: Requires actual JSON data  
        // Decorative blocks stay in weighted pools
        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:white_wool>, 15, 2, 8),
            new WeightedPoolItem(<item:minecraft:black_wool>, 15, 2, 8),
            new WeightedPoolItem(<item:minecraft:gray_wool>, 15, 2, 8),
            new WeightedPoolItem(<item:minecraft:string>, 20, 3, 9),
            new WeightedPoolItem(<item:minecraft:white_carpet>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:black_carpet>, 5, 1, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// REVAMPEDVILLAGES MANSION LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:mansion_common"}]
loot.modifiers.register(
    "revampedvillages_chests_mansion_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:mansion_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        // This just calls vanilla woodland mansion, so apply same logic as vanilla
        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:lead>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 75, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_13>, 75, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_cat>, 75, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 100, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 4, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 50, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 25, 1, 4),
            new WeightedPoolItem(<item:minecraft:bread>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:wheat>, 100, 1, 4),
            new WeightedPoolItem(<item:minecraft:bucket>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 75, 1, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 75, 1, 4),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 50, 2, 4),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 50, 2, 4)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 50, 1, 8),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 50, 1, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 50, 1, 8),
            new WeightedPoolItem(<item:minecraft:string>, 50, 1, 8)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.12);
        loot_generator.generateNArmorsWithProbability(1, 0.12);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:mansion_junk"}]
loot.modifiers.register(
    "revampedvillages_chests_mansion_junk",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:mansion_junk>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        // All items stay in weighted pool (basic materials)
        loot_generator.performWeightedPool(14, 14, 0, [
            new WeightedPoolItem(<item:minecraft:cobweb>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:stick>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 1)
        ]);

        // No generation functions needed (junk chest)
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:mansion_treasure"}]
loot.modifiers.register(
    "revampedvillages_chests_mansion_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:mansion_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: 18 rolls - treasure items (NO enchanted books)
        loot_generator.performWeightedPool(18, 18, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 25, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_block>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:totem_of_undying>, 5, 1, 1)
        ]);

        // Pool 2: 1 guaranteed vex armor trim
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:vex_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNEssences(3, 5); // enchanted_book: 8/134 = 6%
        loot_generator.generateArtifact(5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// NOVA_STRUCTURES ILLAGER HIDEOUT LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_brewing"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_brewing",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_brewing>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:redstone>, 1, 2, 8),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 1, 5, 8),
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 3, 5)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_fishing"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_fishing",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_fishing>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:nautilus_shell>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:turtle_scute>, 1, 3, 3)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:cod>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:salmon>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:cooked_cod>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:cooked_salmon>, 1, 2, 5)
        ]);

        loot_generator.generateNToolsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_heart_loot"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_heart_loot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_heart_loot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:globe_banner_pattern>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:music_disc_otherside>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 5, 8),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 6, 10)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 2, 5)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.83);
        loot_generator.generateArtifact(5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_lesser_tresure"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_lesser_tresure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_lesser_tresure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:music_disc_ward>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_11>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:book>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2)
        ]);

        loot_generator.performWeightedPool(1, 1, 100, [
            new WeightedPoolItem(<item:minecraft:vex_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_library"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:paper>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:feather>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:clock>, 1, 1, 1)
        ]);

        loot_generator.generateNEssences(3, 12);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_meat"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_meat",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_meat>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:porkchop>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:mutton>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:beef>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:chicken>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:rabbit>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cooked_mutton>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cooked_beef>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cooked_chicken>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cooked_rabbit>, 1, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// Random Chest - Originally references other loot tables (cannot be directly converted)
// This chest should use a different approach or be handled separately
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_random",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_random>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        // NOTE: Original randomly selects from 11 other loot tables - cannot convert directly
        // Only implementing the armor trim roll from original
        loot_generator.performWeightedPool(1, 1, 80, [
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_raw_ores"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_raw_ores",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_raw_ores>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:raw_iron>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:raw_copper>, 1, 2, 5)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_trash"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_trash",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_trash>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:beetroot>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 1, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_tresure"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_tresure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_tresure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 2, 2)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 5, 3, 5),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 10, 2, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 3, 5)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:vex_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_utility"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_utility",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_utility>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:lead>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:name_tag>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 1, 1, 4)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 2, 5)
        ]);

        loot_generator.performWeightedPool(1, 1, 100, [
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_vegitarian"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_vegitarian",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_vegitarian>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:apple>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:glow_berries>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:sweet_berries>, 1, 2, 8),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:potato>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:bread>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:honey_bottle>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:pumpkin_pie>, 1, 1, 4)
        ]);

        // Original has nested loot table: pick 1 seed type, then 2-6 quantity
        // Approximating with individual weighted entries
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 1, 2, 6)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/illager_hideout_weaponry"}]
loot.modifiers.register(
    "nova_structures_chests_illager_hideout_weaponry",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_weaponry>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:arrow>, 10, 2, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 80, [
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.235);
        loot_generator.generateNWeaponsWithProbability(1, 0.206);
        loot_generator.generateNArmorsWithProbability(1, 0.118);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:pots/pot_illager_manor"}]
loot.modifiers.register(
    "nova_structures_pots_pot_illager_manor",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:pots/pot_illager_manor>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dark_forest");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 10, [
            new WeightedPoolItem(<item:minecraft:light_blue_dye>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:cyan_dye>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:blue_dye>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:red_dye>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 4, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:arrow>, 5, 1, 10),
            new WeightedPoolItem(<item:minecraft:beetroot>, 2, 1, 14),
            new WeightedPoolItem(<item:minecraft:pumpkin_pie>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:cookie>, 5, 1, 10),
            new WeightedPoolItem(<item:minecraft:name_tag>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:redstone>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:sugar>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:glowstone>, 3, 1, 4)
        ]);

        return loot_context.loot;
    }
);