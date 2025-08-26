import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;


// =============================================================================
// TERRALITH FORTIFIED VILLAGE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/archer"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_archer",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/archer>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 6, 1, [
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 1, 8, 16),
            new WeightedPoolItem(<item:minecraft:arrow>, 10, 8, 16),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:rabbit_hide>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:flint>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:feather>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 3, 1, 3)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.9);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/attic"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_attic",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/attic>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 7, 0, [
            new WeightedPoolItem(<item:minecraft:cobweb>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/butcher"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_butcher",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/butcher>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:charcoal>, 1, 5, 8),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:rabbit>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:chicken>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:beef>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:porkchop>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:rabbit_hide>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:stripped_oak_wood>, 1, 4, 8),
            new WeightedPoolItem(<item:minecraft:oak_wood>, 1, 4, 8)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.8);
        loot_generator.generateNPotionsWithProbability(1, 0.3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/cartographer"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_cartographer",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/cartographer>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:spyglass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bundle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:writable_book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 3, 1, 3)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/fisherman"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_fisherman",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/fisherman>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:string>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 80, 1, 8),
            new WeightedPoolItem(<item:minecraft:cod>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:salmon>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 60, 1, 1),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 30, 1, 6),
            new WeightedPoolItem(<item:minecraft:tropical_fish>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:cod_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:tadpole_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:axolotl_bucket>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:pufferfish_bucket>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1)
        ]);

        loot_generator.generateNPotionsWithProbability(1, 0.5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/food"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/food>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 150, 3, 6),
            new WeightedPoolItem(<item:minecraft:bread>, 150, 3, 6),
            new WeightedPoolItem(<item:minecraft:cooked_beef>, 150, 3, 6),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 2, 4)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/generic"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_generic",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/generic>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:dandelion>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:poppy>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:feather>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:rabbit_hide>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:leather>, 2, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/generic_low"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_generic_low",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/generic_low>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:dandelion>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:poppy>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:feather>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 5, 1, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/junk"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_junk",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/junk>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:hanging_roots>, 1, 3, 7),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 1, 3, 7),
            new WeightedPoolItem(<item:minecraft:rooted_dirt>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:coarse_dirt>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:dirt>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:mossy_cobblestone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:cobblestone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:stripped_oak_log>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:spruce_fence>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:oak_door>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 1, 5)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/library"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 6, 10, 20),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:candle>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:painting>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:glow_item_frame>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:item_frame>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:bookshelf>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:writable_book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 1, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/mason"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_mason",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/mason>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:axolotl_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:flower_pot>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:brick>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:clay>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:smooth_stone>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:stone_bricks>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:stone>, 1, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.7);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/smith/novice"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_smith_novice",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/smith/novice>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:copper_ore>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ore>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_ore>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cobblestone>, 3, 3, 4),
            new WeightedPoolItem(<item:minecraft:stone>, 3, 3, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_block>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 3, 10),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 15, 3, 10),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.9);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/smith"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_smith",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/smith>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        // Meta-table: 95% chance novice (weight 19), 5% chance expert (weight 1)
        val isExpert = loot_context.random.nextFloat() < 0.30;
        
        if (isExpert) {
            // Expert smith loot (same as expert table)
            loot_generator.performWeightedPool(3, 5, 0, [
                new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2),
                new WeightedPoolItem(<item:minecraft:obsidian>, 1, 3, 10),
                new WeightedPoolItem(<item:minecraft:deepslate_diamond_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:gold_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:deepslate_lapis_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:cobbled_deepslate>, 3, 3, 4),
                new WeightedPoolItem(<item:minecraft:deepslate>, 3, 3, 5),
                new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:iron_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 6)
            ]);
            loot_generator.generateNToolsWithProbability(1, 1.0);
            loot_generator.generateHatBagWithProbability(0.30);
            loot_generator.generateMoneyBagWithProbability(3, 0.30);
        } else {
            // Novice smith loot (same as novice table)
            loot_generator.performWeightedPool(3, 5, 0, [
                new WeightedPoolItem(<item:minecraft:copper_ore>, 1, 1, 1),
                new WeightedPoolItem(<item:minecraft:gold_ore>, 1, 1, 1),
                new WeightedPoolItem(<item:minecraft:iron_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:cobblestone>, 3, 3, 4),
                new WeightedPoolItem(<item:minecraft:stone>, 3, 3, 5),
                new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
                new WeightedPoolItem(<item:minecraft:iron_block>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:copper_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:iron_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 6)
            ]);
            loot_generator.generateNToolsWithProbability(1, 0.9);
            loot_generator.generateHatBagWithProbability(0.30);
            loot_generator.generateMoneyBagWithProbability(2, 0.30);
        }

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/tavern_downstairs"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_tavern_downstairs",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/tavern_downstairs>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(6, 9, 0, [
            new WeightedPoolItem(<item:minecraft:melon_slice>, 70, 1, 2),
            new WeightedPoolItem(<item:minecraft:cookie>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 80, 1, 2),
            new WeightedPoolItem(<item:minecraft:bread>, 80, 1, 1),
            new WeightedPoolItem(<item:minecraft:baked_potato>, 70, 1, 2),
            new WeightedPoolItem(<item:minecraft:carrot>, 90, 1, 3),
            new WeightedPoolItem(<item:minecraft:sweet_berries>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:cooked_chicken>, 60, 1, 1),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:cooked_mutton>, 60, 1, 1),
            new WeightedPoolItem(<item:minecraft:cooked_beef>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:rabbit_stew>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:pumpkin_pie>, 80, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/tavern_upstairs"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_tavern_upstairs",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/tavern_upstairs>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:milk_bucket>, 50, 1, 2),
            new WeightedPoolItem(<item:minecraft:potato>, 80, 1, 5),
            new WeightedPoolItem(<item:minecraft:sweet_berries>, 80, 1, 5),
            new WeightedPoolItem(<item:minecraft:beetroot>, 60, 1, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 80, 1, 5),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 60, 1, 5),
            new WeightedPoolItem(<item:minecraft:wheat>, 80, 1, 5),
            new WeightedPoolItem(<item:minecraft:apple>, 80, 1, 3),
            new WeightedPoolItem(<item:minecraft:pumpkin>, 70, 1, 2),
            new WeightedPoolItem(<item:minecraft:egg>, 60, 1, 10),
            new WeightedPoolItem(<item:minecraft:honey_bottle>, 50, 1, 2),
            new WeightedPoolItem(<item:minecraft:sugar>, 70, 1, 3),
            new WeightedPoolItem(<item:minecraft:cocoa_beans>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:mutton>, 50, 1, 5),
            new WeightedPoolItem(<item:minecraft:porkchop>, 50, 1, 5),
            new WeightedPoolItem(<item:minecraft:beef>, 50, 1, 5),
            new WeightedPoolItem(<item:minecraft:chicken>, 50, 1, 5),
            new WeightedPoolItem(<item:minecraft:rabbit>, 50, 1, 5)
        ]);

        loot_generator.generateNPotionsWithProbability(1, 0.4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/fortified/treasure"}]
loot.modifiers.register(
    "terralith_chests_village_fortified_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/fortified/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "fortified_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:cobbled_deepslate>, 70, 7, 12),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 50, 1, 5),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 60, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 60, 4, 9),
            new WeightedPoolItem(<item:minecraft:chain>, 40, 2, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 60, 1, 8),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 70, 1, 4),
            new WeightedPoolItem(<item:minecraft:obsidian>, 80, 8, 14),
            new WeightedPoolItem(<item:minecraft:diamond>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_block>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:vine>, 80, 1, 4),
            new WeightedPoolItem(<item:minecraft:oak_leaves>, 60, 1, 6),
            new WeightedPoolItem(<item:minecraft:carved_pumpkin>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:lantern>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:dark_oak_sapling>, 10, 1, 6),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:apple>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 10, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// TERRALITH DESERT VILLAGE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/archer"}]
loot.modifiers.register(
    "terralith_chests_village_desert_archer",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/archer>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 6, 1, [
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 1, 8, 16),
            new WeightedPoolItem(<item:minecraft:arrow>, 10, 8, 16),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:rabbit_hide>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:flint>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:feather>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 3, 1, 3)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.9);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/attic"}]
loot.modifiers.register(
    "terralith_chests_village_desert_attic",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/attic>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 7, 0, [
            new WeightedPoolItem(<item:minecraft:cobweb>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/butcher"}]
loot.modifiers.register(
    "terralith_chests_village_desert_butcher",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/butcher>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:charcoal>, 1, 5, 8),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:rabbit>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:chicken>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:beef>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:porkchop>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:rabbit_hide>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:leather>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:stripped_oak_wood>, 1, 4, 8),
            new WeightedPoolItem(<item:minecraft:oak_wood>, 1, 4, 8)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.8);
        loot_generator.generateNPotionsWithProbability(1, 0.3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/cartographer"}]
loot.modifiers.register(
    "terralith_chests_village_desert_cartographer",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/cartographer>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:spyglass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:saddle>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bundle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:lead>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:writable_book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 3, 1, 3)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 0.3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/fisherman"}]
loot.modifiers.register(
    "terralith_chests_village_desert_fisherman",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/fisherman>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 6, 0, [
            new WeightedPoolItem(<item:minecraft:string>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 80, 1, 8),
            new WeightedPoolItem(<item:minecraft:cod>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:salmon>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 60, 1, 1),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 30, 1, 6),
            new WeightedPoolItem(<item:minecraft:tropical_fish>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:cod_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:tadpole_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:axolotl_bucket>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:pufferfish_bucket>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 20, 1, 1)
        ]);

        loot_generator.generateNPotionsWithProbability(1, 0.5);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:terralith:village/desert/food"}]
loot.modifiers.register(
    "terralith_chests_village_desert_food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/food>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 150, 3, 6),
            new WeightedPoolItem(<item:minecraft:bread>, 150, 3, 6),
            new WeightedPoolItem(<item:minecraft:cooked_beef>, 150, 3, 6),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 2, 4)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/generic"}]
loot.modifiers.register(
    "terralith_chests_village_desert_generic",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/generic>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:dandelion>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:poppy>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:feather>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:rabbit_hide>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:leather>, 2, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/generic_low"}]
loot.modifiers.register(
    "terralith_chests_village_desert_generic_low",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/generic_low>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:dandelion>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:poppy>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:potato>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:feather>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 5, 1, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/junk"}]
loot.modifiers.register(
    "terralith_chests_village_desert_junk",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/junk>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:hanging_roots>, 1, 3, 7),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 1, 3, 7),
            new WeightedPoolItem(<item:minecraft:rooted_dirt>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:coarse_dirt>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:dirt>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:mossy_cobblestone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:cobblestone>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:stripped_oak_log>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:spruce_fence>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:oak_door>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 1, 5)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/library"}]
loot.modifiers.register(
    "terralith_chests_village_desert_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 6, 10, 20),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:candle>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:painting>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:glow_item_frame>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:item_frame>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:bookshelf>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:writable_book>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 1, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/mason"}]
loot.modifiers.register(
    "terralith_chests_village_desert_mason",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/mason>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:axolotl_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:flower_pot>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:brick>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:clay_ball>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:clay>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:smooth_stone>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:stone_bricks>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:stone>, 1, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.7);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/shepherd"}]
loot.modifiers.register(
    "terralith_chests_village_desert_shepherd",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/shepherd>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:orange_wool>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:white_wool>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:shears>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:wheat>, 5, 1, 5),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 3, 1, 7),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:mutton>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:cooked_mutton>, 3, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/smith"}]
loot.modifiers.register(
    "terralith_chests_village_desert_smith",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/smith>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        // Meta-table: 95% chance novice (weight 19), 5% chance expert (weight 1)
        val isExpert = loot_context.random.nextFloat() < 0.30;
        
        if (isExpert) {
            // Expert smith loot (same as expert table)
            loot_generator.performWeightedPool(3, 5, 0, [
                new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2),
                new WeightedPoolItem(<item:minecraft:obsidian>, 1, 3, 10),
                new WeightedPoolItem(<item:minecraft:deepslate_diamond_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:gold_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:deepslate_lapis_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:cobbled_deepslate>, 3, 3, 4),
                new WeightedPoolItem(<item:minecraft:deepslate>, 3, 3, 5),
                new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:iron_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 6)
            ]);
            loot_generator.generateNToolsWithProbability(1, 1.0);
            loot_generator.generateHatBagWithProbability(0.30);
            loot_generator.generateMoneyBagWithProbability(3, 0.30);
        } else {
            // Novice smith loot (same as novice table)
            loot_generator.performWeightedPool(3, 5, 0, [
                new WeightedPoolItem(<item:minecraft:copper_ore>, 1, 1, 1),
                new WeightedPoolItem(<item:minecraft:gold_ore>, 1, 1, 1),
                new WeightedPoolItem(<item:minecraft:iron_ore>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:cobblestone>, 3, 3, 4),
                new WeightedPoolItem(<item:minecraft:stone>, 3, 3, 5),
                new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
                new WeightedPoolItem(<item:minecraft:iron_block>, 1, 1, 3),
                new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:copper_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 6),
                new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:iron_nugget>, 15, 3, 10),
                new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 6)
            ]);
            loot_generator.generateNToolsWithProbability(1, 0.9);
            loot_generator.generateHatBagWithProbability(0.30);
            loot_generator.generateMoneyBagWithProbability(2, 0.30);
        }

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/smith/expert"}]
loot.modifiers.register(
    "terralith_chests_village_desert_smith_expert",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/smith/expert>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:obsidian>, 1, 3, 10),
            new WeightedPoolItem(<item:minecraft:deepslate_diamond_ore>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ore>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:deepslate_lapis_ore>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cobbled_deepslate>, 3, 3, 4),
            new WeightedPoolItem(<item:minecraft:deepslate>, 3, 3, 5),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 3, 10),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 15, 3, 10),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/smith/novice"}]
loot.modifiers.register(
    "terralith_chests_village_desert_smith_novice",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/smith/novice>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:copper_ore>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ore>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_ore>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:cobblestone>, 3, 3, 4),
            new WeightedPoolItem(<item:minecraft:stone>, 3, 3, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_block>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:copper_ingot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 3, 10),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 15, 3, 10),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 3, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.9);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:village/desert/treasure"}]
loot.modifiers.register(
    "terralith_chests_village_desert_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:village/desert/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "desert_village");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 5, 0, [
            new WeightedPoolItem(<item:minecraft:cobbled_deepslate>, 70, 7, 12),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 50, 1, 5),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 60, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 60, 4, 9),
            new WeightedPoolItem(<item:minecraft:chain>, 40, 2, 4),
            new WeightedPoolItem(<item:minecraft:coal>, 60, 1, 8),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 70, 1, 4),
            new WeightedPoolItem(<item:minecraft:obsidian>, 80, 8, 14),
            new WeightedPoolItem(<item:minecraft:diamond>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_block>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:vine>, 80, 1, 4),
            new WeightedPoolItem(<item:minecraft:oak_leaves>, 60, 1, 6),
            new WeightedPoolItem(<item:minecraft:carved_pumpkin>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:lantern>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:dark_oak_sapling>, 10, 1, 6),
            new WeightedPoolItem(<item:minecraft:oak_sapling>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:apple>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:sentry_armor_trim_smithing_template>, 10, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);