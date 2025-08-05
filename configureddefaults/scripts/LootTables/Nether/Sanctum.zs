import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// INCENDIUM SANCTUM LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/banners"}]
loot.modifiers.register(
    "incendium_sanctum_banners",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/banners>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(10, 10, 0, [
            new WeightedPoolItem(<item:minecraft:name_tag>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:glow_ink_sac>, 60, 1, 1),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:emerald>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:piglin_banner_pattern>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:skull_banner_pattern>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:mojang_banner_pattern>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:globe_banner_pattern>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 60, 1, 1),
            new WeightedPoolItem(<item:minecraft:orange_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:white_dye>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:black_dye>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:magenta_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:purple_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:yellow_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:cyan_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:light_gray_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:gray_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:brown_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:lime_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:green_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:pink_dye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:light_blue_dye>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:red_dye>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:blue_dye>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:loom>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:flower_banner_pattern>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:white_banner>, 70, 1, 1),
            new WeightedPoolItem(<item:minecraft:blue_banner>, 70, 1, 1),
            new WeightedPoolItem(<item:minecraft:red_banner>, 70, 1, 1),
            new WeightedPoolItem(<item:minecraft:red_wool>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:white_wool>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:blue_wool>, 100, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 300, 1, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/brewery"}]
loot.modifiers.register(
    "incendium_sanctum_brewery",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/brewery>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:nether_wart>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:diamond>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:writable_book>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:turtle_egg>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:cobweb>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 60, 1, 4),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 40, 1, 2),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 60, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:lava_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:stick>, 40, 1, 4),
            new WeightedPoolItem(<item:minecraft:cauldron>, 70, 1, 1),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 50, 1, 2),
            new WeightedPoolItem(<item:minecraft:brewing_stand>, 20, 1, 1)
        ]);

        loot_generator.generateNPotionsWithProbability(2, 0.7);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/coffin"}]
loot.modifiers.register(
    "incendium_sanctum_coffin",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/coffin>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(0, 3, 50, [
            new WeightedPoolItem(<item:minecraft:music_disc_ward>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:writable_book>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 40, 1, 2),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:slime_ball>, 30, 1, 5),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 20, 1, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 40, 1, 2),
            new WeightedPoolItem(<item:minecraft:poppy>, 100, 1, 1)
        ]);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:cobweb>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:brown_mushroom>, 40, 3, 5),
            new WeightedPoolItem(<item:minecraft:red_mushroom>, 30, 3, 5),
            new WeightedPoolItem(<item:minecraft:zombie_head>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 60, 3, 10),
            new WeightedPoolItem(<item:minecraft:bone>, 60, 3, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 20, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1);
        loot_generator.generateNWeaponsWithProbability(1, 0.24);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/common_loot"}]
loot.modifiers.register(
    "incendium_sanctum_common_loot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/common_loot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 8, 20, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 8, 1, 2),
            new WeightedPoolItem(<item:minecraft:leather>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 40, 1, 2),
            new WeightedPoolItem(<item:minecraft:lava_bucket>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 45, 7, 27),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 60, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 45, 7, 27),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:raw_iron>, 60, 1, 4),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 80, 1, 4),
            new WeightedPoolItem(<item:minecraft:emerald>, 120, 1, 3)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.94);
        loot_generator.generateNWeaponsWithProbability(3, 1.0);
        loot_generator.generateNPotionsWithProbability(1, 0.7);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/junk_loot"}]
loot.modifiers.register(
    "incendium_sanctum_junk_loot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/junk_loot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:warped_planks>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_cluster>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 60, 1, 2),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 40, 1, 10),
            new WeightedPoolItem(<item:minecraft:bone>, 70, 1, 5),
            new WeightedPoolItem(<item:minecraft:coal>, 90, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 90, 2, 4),
            new WeightedPoolItem(<item:minecraft:cobweb>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 70, 1, 4),
            new WeightedPoolItem(<item:minecraft:glow_ink_sac>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 80, 1, 4),
            new WeightedPoolItem(<item:minecraft:quartz>, 100, 2, 5)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/lower_loot"}]
loot.modifiers.register(
    "incendium_sanctum_lower_loot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/lower_loot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(6, 9, 15, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>, 100, 1, 8),
            new WeightedPoolItem(<item:minecraft:emerald_block>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:chiseled_quartz_block>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:quartz>, 200, 5, 20),
            new WeightedPoolItem(<item:minecraft:bread>, 200, 3, 6),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 150, 5, 15),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 200, 2, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 45, 1, 3),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:stone>, 300, 1, 4),
            new WeightedPoolItem(<item:minecraft:emerald>, 250, 1, 5)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.43);
        loot_generator.generateNWeaponsWithProbability(3, 0.98);
        loot_generator.generateNArmorsWithProbability(4, 0.85);
        loot_generator.generateNPotionsWithProbability(1, 0.85);
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/potions"}]
loot.modifiers.register(
    "incendium_sanctum_potions",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/potions>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNPotionsWithProbability(1, 1.0);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/potionsfull"}]
loot.modifiers.register(
    "incendium_sanctum_potionsfull",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/potionsfull>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNPotionsWithProbability(27, 1.0);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:sanctum/tax_collector"}]
loot.modifiers.register(
    "incendium_sanctum_tax_collector",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:sanctum/tax_collector>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "basalt_deltas");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(5, 7, 30, [
            new WeightedPoolItem(<item:minecraft:ender_eye>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 120, 1, 4),
            new WeightedPoolItem(<item:minecraft:clock>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:spyglass>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:compass>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 100, 3, 10),
            new WeightedPoolItem(<item:minecraft:enchanting_table>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:damaged_anvil>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:end_rod>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:glow_ink_sac>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:writable_book>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:raw_gold_block>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 60, 1, 4),
            new WeightedPoolItem(<item:minecraft:emerald>, 150, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 100, 4, 18),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 50, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 70, 1, 4),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 100, 1, 5),
            new WeightedPoolItem(<item:minecraft:netherite_upgrade_smithing_template>, 120, 1, 2)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.26);
        loot_generator.generateNWeaponsWithProbability(1, 0.18);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);