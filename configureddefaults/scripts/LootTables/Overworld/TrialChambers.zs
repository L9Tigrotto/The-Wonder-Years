import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT TRIAL CHAMBERS LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"chests/trial_chambers/corridor"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_corridor",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/corridor>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(9, 9, 0, [
            new WeightedPoolItem(<item:minecraft:cobweb>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:scaffolding>, 3, 2, 2),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 2, 2),
            new WeightedPoolItem(<item:minecraft:bamboo>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:honeycomb>, 2, 2, 2),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 2, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateNWeaponsWithProbability(1, 0.20);
        loot_generator.generateNArmorsWithProbability(1, 0.15);
        loot_generator.generateNPotionsWithProbability(1, 0.10);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/intersection_barrel"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_intersection_barrel",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/intersection_barrel>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(15, 15, 0, [
            new WeightedPoolItem(<item:minecraft:bamboo>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:slowness"}), 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:honeycomb>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_block>, 6, 1, 1),
            new WeightedPoolItem(<item:minecraft:trial_key>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:ominous_bottle>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.20);
        loot_generator.generateNWeaponsWithProbability(1, 0.15);
        loot_generator.generateNArmorsWithProbability(1, 0.10);
        loot_generator.generateNPotionsWithProbability(1, 0.25);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward_common"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 3, 3, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 4, 4),
            new WeightedPoolItem(<item:minecraft:wind_charge>, 2, 5, 5),
            new WeightedPoolItem(<item:minecraft:ominous_bottle>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 2, 3, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 2, 6, 6)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateNArmorsWithProbability(1, 0.35);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward_rare"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward_rare",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward_rare>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 2, 6, 6),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 3, 6, 6)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.45);
        loot_generator.generateNArmorsWithProbability(1, 0.40);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward_unique"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward_unique",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward_unique>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bolt_armor_trim_smithing_template>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:guster_banner_pattern>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_precipice>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 2, 6, 6),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.55);
        loot_generator.generateNArmorsWithProbability(1, 0.50);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 5, 8, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 12, 4, 4),
            new WeightedPoolItem(<item:minecraft:diamond>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:ominous_bottle>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 2, 6, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 4, 3, 3),
            new WeightedPoolItem(<item:minecraft:bolt_armor_trim_smithing_template>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:guster_banner_pattern>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_precipice>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(2, 0.65);
        loot_generator.generateNArmorsWithProbability(2, 0.65);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward_ominous_common"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward_ominous_common",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward_ominous_common>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 2, 6, 6),
            new WeightedPoolItem(<item:minecraft:wind_charge>, 4, 8, 12),
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:ominous_bottle>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.40);
        loot_generator.generateNWeaponsWithProbability(1, 0.35);
        loot_generator.generateNArmorsWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward_ominous_rare"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward_ominous_rare",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward_ominous_rare>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_block>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 2, 6, 6),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond_block>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(2, 0.70);
        loot_generator.generateNWeaponsWithProbability(2, 0.65);
        loot_generator.generateNArmorsWithProbability(2, 0.80);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward_ominous_unique"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward_ominous_unique",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward_ominous_unique>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 2, 6, 6),
            new WeightedPoolItem(<item:minecraft:flow_armor_trim_smithing_template>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:flow_banner_pattern>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_creator>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:heavy_core>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(2, 0.75);
        loot_generator.generateNWeaponsWithProbability(2, 0.70);
        loot_generator.generateNArmorsWithProbability(2, 0.65);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/trial_chambers/reward_ominous"}]
loot.modifiers.register(
    "minecraft_chests_trial_chambers_reward_ominous",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/trial_chambers/reward_ominous>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 6, 5, [
            new WeightedPoolItem(<item:minecraft:wind_charge>, 16, 8, 12),
            new WeightedPoolItem(<item:minecraft:diamond>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_block>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 6, 1, 1),
            new WeightedPoolItem(<item:minecraft:ominous_bottle>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond_block>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:flow_armor_trim_smithing_template>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:flow_banner_pattern>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_creator>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:heavy_core>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(3, 0.85);
        loot_generator.generateNWeaponsWithProbability(3, 0.80);
        loot_generator.generateNArmorsWithProbability(3, 0.90);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:pots/trial_chambers/corridor"}]
loot.modifiers.register(
    "minecraft_pots_trial_chambers_corridor",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:pots/trial_chambers/corridor>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber");
        val loot_generator = new LootGenerator(loot_context);

        // NOTE: Exact weights need verification - using placeholder values based on estimated rarity
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 6, 1, 1),
            new WeightedPoolItem(<item:minecraft:arrow>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:trial_key>, 1, 1, 1),    // ~2.8% chance mentioned in sources
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_block>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond_block>, 1, 1, 1)
        ]);

        loot_generator.generateNWeaponsWithProbability(4, 1.0);

        return loot_context.loot;
    }
);

// =============================================================================
// CRAZY CHAMBERS CUSTOM LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"resource:crazy_chambers:boss_reward"}]
loot.modifiers.register(
    "crazy_chambers_boss_reward",
    LootConditions.only(LootTableIdLootCondition.create(<resource:crazy_chambers:boss_reward>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber_spawner");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:ominous_trial_key>, 2, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(4, 0.90);
        loot_generator.generateNWeaponsWithProbability(4, 0.85);
        loot_generator.generateNArmorsWithProbability(4, 0.80);
        loot_generator.generateNPotionsWithProbability(4, 0.70);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"crazy_chambers:boss_reward_ominous"}]
loot.modifiers.register(
    "crazy_chambers_boss_reward_ominous",
    LootConditions.only(LootTableIdLootCondition.create(<resource:crazy_chambers:boss_reward_ominous>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "trial_chamber");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:ominous_trial_key>, 2, 2, 2)
        ]);

        loot_generator.generateNToolsWithProbability(6, 0.95);
        loot_generator.generateNWeaponsWithProbability(6, 0.90);
        loot_generator.generateNArmorsWithProbability(6, 0.85);
        loot_generator.generateNPotionsWithProbability(5, 0.80);

        return loot_context.loot;
    }
);