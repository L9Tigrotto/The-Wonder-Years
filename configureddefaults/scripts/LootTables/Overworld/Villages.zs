import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// UPDATED VANILLA MINECRAFT VILLAGE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:savanna_common"}]
loot.modifiers.register(
    "revampedvillages_savanna_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:savanna_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "savanna");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:acacia_sapling>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:torch>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:tall_grass>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:short_grass>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/armorer"}]
loot.modifiers.register(
    "revampedvillages_professions_armorer",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/armorer>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 4, 1, 4)
        ]);

        // Generation functions with vanilla-appropriate rates
        loot_generator.generateNArmorsWithProbability(1, 0.125);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/butcher"}]
loot.modifiers.register(
    "minecraft_chests_village_butcher",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/butcher>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:beef>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:porkchop>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:mutton>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/cartographer_librarian"}]
loot.modifiers.register(
    "revampedvillages_professions_cartographer_librarian",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/cartographer_librarian>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:stick>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:map>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 15, 1, 5),
            new WeightedPoolItem(<item:minecraft:bread>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:compass>, 5, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:desert_common"}]
loot.modifiers.register(
    "revampedvillages_desert_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:desert_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cactus>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:dead_bush>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:green_dye>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:book>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/fisherman"}]
loot.modifiers.register(
    "revampedvillages_professions_fisherman",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/fisherman>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:cod>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:barrel>, 1, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/fletcher"}]
loot.modifiers.register(
    "revampedvillages_professions_fletcher",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/fletcher>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:arrow>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:feather>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:egg>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:flint>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 6, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/mason"}]
loot.modifiers.register(
    "revampedvillages_professions_mason",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/mason>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:stone>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:smooth_stone>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 4, 1, 4),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:stone_bricks>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:flower_pot>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:plains_common"}]
loot.modifiers.register(
    "revampedvillages_plains_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:plains_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:feather>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:poppy>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:dandelion>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/shepherd"}]
loot.modifiers.register(
    "revampedvillages_professions_shepherd",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/shepherd>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 6, 1, 6),
            new WeightedPoolItem(<item:minecraft:white_wool>, 6, 1, 8),
            new WeightedPoolItem(<item:minecraft:black_wool>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gray_wool>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:light_gray_wool>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:brown_wool>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.043);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:snowy_common"}]
loot.modifiers.register(
    "revampedvillages_snowy_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:snowy_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "snowy");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:furnace>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:snowball>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:coal>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:snow_block>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:blue_ice>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 10, 1, 5)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:taiga_common"}]
loot.modifiers.register(
    "revampedvillages_taiga_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:taiga_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "taiga");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:spruce_sapling>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:fern>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:pumpkin_pie>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:large_fern>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:spruce_log>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:spruce_sign>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 4),
            new WeightedPoolItem(<item:minecraft:pumpkin_seeds>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:sweet_berries>, 5, 1, 7)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/leatherworker"}]
loot.modifiers.register(
    "revampedvillages_professions_leatherworker",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/leatherworker>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(1, 5, 0, [
            new WeightedPoolItem(<item:minecraft:leather>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bread>, 5, 1, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateNArmorsWithProbability(4, 0.50);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

/*
// Village Temple (3-8 rolls, total weight: 19)
loot.modifiers.register(
    "minecraft_chests_village_temple",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/village/village_temple>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 7, 1, 4),
            new WeightedPoolItem(<item:minecraft:redstone>, 2, 1, 4),
            new WeightedPoolItem(<item:minecraft:bread>, 7, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 4)
        ]);

        loot_generator.generateNEssences(2, 6);
        loot_generator.generateHatBagWithProbability(0.15);
        loot_generator.generateMoneyBagWithProbability(2, 0.22);

        return loot_context.loot;
    }
);
*/

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/toolsmith"}]
loot.modifiers.register(
    "revampedvillages_professions_toolsmith",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/toolsmith>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:stick>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:bread>, 15, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(2, 0.19);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"revampedvillages:professions/weaponsmith"}]
loot.modifiers.register(
    "revampedvillages_professions_weaponsmith",
    LootConditions.only(LootTableIdLootCondition.create(<resource:revampedvillages:professions/weaponsmith>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "village");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:obsidian>, 5, 3, 7),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 5, 3, 7),
            new WeightedPoolItem(<item:minecraft:bread>, 15, 1, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:bundle>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.053);
        loot_generator.generateNWeaponsWithProbability(1, 0.053);
        loot_generator.generateNArmorsWithProbability(7, 0.245);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// TERRALITH GLACIAL RUIN LOOT TABLES
// =============================================================================

loot.modifiers.register(
    "terralith_ruin_glacial_main_cs",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:ruin/glacial/main_cs>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "snowy");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/weapons/books/potions)
        loot_generator.performWeightedPool(5, 5, 0, [
            new WeightedPoolItem(<item:minecraft:porkchop>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 6, 0, 3),
            new WeightedPoolItem(<item:minecraft:beef>, 4, 2, 4),
            new WeightedPoolItem(<item:minecraft:cooked_beef>, 6, 0, 4),
            new WeightedPoolItem(<item:minecraft:snow_block>, 4, 2, 8),
            new WeightedPoolItem(<item:minecraft:ice>, 5, 1, 7)
        ]);

        loot_generator.performWeightedPool(3, 3, 9, [
            new WeightedPoolItem(<item:minecraft:chicken>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:cooked_chicken>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:apple>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:bread>, 1, 1, 4)
        ]);

        // Generation functions (from original tool/armor pools)
        loot_generator.generateNToolsWithProbability(1, 0.857);
        loot_generator.generateNWeaponsWithProbability(1, 0.143);
        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateArtifact(0.15);
        loot_generator.generateHatBagWithProbability(0.08);
        loot_generator.generateMoneyBagWithProbability(2, 0.12);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:ruin/glacial/junk"}]
loot.modifiers.register(
    "terralith_ruin_glacial_junk",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:ruin/glacial/junk>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "snowy");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/weapons/books/potions)
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:snow_block>, 4, 2, 8),
            new WeightedPoolItem(<item:minecraft:powder_snow_bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:snowball>, 6, 4, 7),
            new WeightedPoolItem(<item:minecraft:ice>, 5, 1, 7)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:porkchop>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 6, 0, 3),
            new WeightedPoolItem(<item:minecraft:beef>, 4, 2, 4),
            new WeightedPoolItem(<item:minecraft:cooked_beef>, 6, 0, 4),
            new WeightedPoolItem(<item:minecraft:snow_block>, 4, 2, 8),
            new WeightedPoolItem(<item:minecraft:ice>, 5, 1, 7)
        ]);

        loot_generator.performWeightedPool(2, 2, 9, [
            new WeightedPoolItem(<item:minecraft:chicken>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:cooked_chicken>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:apple>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:bread>, 1, 1, 4)
        ]);

        // Generation functions (reduced rates for junk chest)
        loot_generator.generateNToolsWithProbability(1, 0.857);
        loot_generator.generateNWeaponsWithProbability(1, 0.143);
        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);