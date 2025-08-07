import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT SHIPWRECK LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/shipwreck_treasure"}]
loot.modifiers.register(
    "minecraft_chests_shipwreck_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (structure-specific items only)
        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 90, 1, 5),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:emerald>, 40, 1, 5),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 5, 1, 1)
        ]);

        loot_generator.performWeightedPool(2, 5, 0, [
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 50, 1, 10),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 1, 10),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 20, 1, 10)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.12);
        loot_generator.generateNWeaponsWithProbability(1, 0.15);
        loot_generator.generateNArmorsWithProbability(1, 0.20);
        loot_generator.generateNPotionsWithProbability(1, 0.08);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/shipwreck_supply"}]
loot.modifiers.register(
    "minecraft_chests_shipwreck_supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_supply>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (food and supplies only, armor moved to generation functions)
        loot_generator.performWeightedPool(3, 10, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 7, 8, 21),
            new WeightedPoolItem(<item:minecraft:carrot>, 7, 4, 8),
            new WeightedPoolItem(<item:minecraft:potato>, 7, 2, 6),
            new WeightedPoolItem(<item:minecraft:coal>, 6, 2, 8),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 5, 5, 24),
            new WeightedPoolItem(<item:minecraft:paper>, 8, 1, 12),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:bamboo>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:pumpkin>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:poisonous_potato>, 7, 2, 6),
            new WeightedPoolItem(<item:minecraft:tnt>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:moss_block>, 7, 1, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions (armor and potions moved from weighted pools)
        loot_generator.generateNToolsWithProbability(1, 0.08);
        loot_generator.generateNWeaponsWithProbability(1, 0.06);
        loot_generator.generateNArmorsWithProbability(1, 0.15); // 12 weight moved from pool
        loot_generator.generateNPotionsWithProbability(1, 0.14); // 11 weight suspicious_stew moved
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/shipwreck_map"}]
loot.modifiers.register(
    "minecraft_chests_shipwreck_map",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_map>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (navigation items only, books moved to generation functions)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:clock>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 1, 10),
            new WeightedPoolItem(<item:minecraft:feather>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 5, 1, 5)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions (enchanted books moved from weighted pools)
        loot_generator.generateNToolsWithProbability(1, 0.04);
        loot_generator.generateNWeaponsWithProbability(1, 0.04);
        loot_generator.generateNArmorsWithProbability(1, 0.06);
        loot_generator.generateNPotionsWithProbability(1, 0.04);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// DUNGEONS ARISE SEVEN SEAS CORSAIR CORVETTE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/corsair_corvette"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_corsair_corvette_barrels",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/corsair_corvette/corsair_corvette_barrels>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 2, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:string>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:charcoal>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 8, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:flint>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/corsair_corvette/corsair_corvette_normal"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_corsair_corvette_normal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/corsair_corvette/corsair_corvette_normal>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 20, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 4, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.3);
        loot_generator.generateNArmorsWithProbability(1, 0.6);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/corsair_corvette/corsair_corvette_treasure"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_corsair_corvette_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/corsair_corvette/corsair_corvette_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 12, 24),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 20, 6, 12),
            new WeightedPoolItem(<item:minecraft:diamond>, 15, 2, 5),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 4, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.35);
        loot_generator.generateNArmorsWithProbability(2, 0.8);
        loot_generator.generateNEssences(2, 3);
        loot_generator.generateArtifact(3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// DUNGEONS ARISE SEVEN SEAS PIRATE JUNK LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_barrels"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_pirate_junk_barrels",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_barrels>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 2, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:string>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:charcoal>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 8, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:flint>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_normal"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_pirate_junk_normal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_normal>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 12, 24),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 20, 6, 12),
            new WeightedPoolItem(<item:minecraft:diamond>, 15, 2, 5),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 4, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateNArmorsWithProbability(1, 0.6);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_supply"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_pirate_junk_supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_supply>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:beef>, 200, 8, 12),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 150, 8, 12),
            new WeightedPoolItem(<item:minecraft:pumpkin_pie>, 200, 4, 5),
            new WeightedPoolItem(<item:minecraft:cod>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:salmon>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:tropical_fish>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:milk_bucket>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:wet_sponge>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 50, 2, 3),
            new WeightedPoolItem(<item:minecraft:honeycomb>, 150, 4, 16),
            new WeightedPoolItem(<item:minecraft:honey_bottle>, 100, 3, 6),
            new WeightedPoolItem(<item:minecraft:baked_potato>, 200, 4, 8),
            new WeightedPoolItem(<item:minecraft:bread>, 250, 1, 7)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_treasure"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_pirate_junk_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/pirate_junk/pirate_junk_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 15, 3, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 7, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// DUNGEONS ARISE SEVEN SEAS SMALL YACHT LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/small_yacht/small_yacht_barrels"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_small_yacht_barrels",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/small_yacht/small_yacht_barrels>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 2, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:string>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:charcoal>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 8, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:flint>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/small_yacht/small_yacht_normal"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_small_yacht_normal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/small_yacht/small_yacht_normal>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 12, 24),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 20, 6, 12),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 4, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.25);
        loot_generator.generateNArmorsWithProbability(1, 0.6);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/small_yacht/small_yacht_treasure"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_small_yacht_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/small_yacht/small_yacht_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 20, 1, 2),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 4, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.3);
        loot_generator.generateNArmorsWithProbability(1, 0.8);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// DUNGEONS ARISE SEVEN SEAS UNICORN GALLEON LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_barrels"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_unicorn_galleon_barrels",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_barrels>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 2, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:string>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:charcoal>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 8, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:flint>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_normal"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_unicorn_galleon_normal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_normal>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 12, 24),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 20, 6, 12),
            new WeightedPoolItem(<item:minecraft:diamond>, 15, 2, 5),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 4, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.3);
        loot_generator.generateNArmorsWithProbability(1, 0.8);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_supply"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_unicorn_galleon_supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_supply>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:beef>, 200, 8, 12),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 150, 8, 12),
            new WeightedPoolItem(<item:minecraft:pumpkin_pie>, 200, 4, 5),
            new WeightedPoolItem(<item:minecraft:cod>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:salmon>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:tropical_fish>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:milk_bucket>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:wet_sponge>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 50, 2, 3),
            new WeightedPoolItem(<item:minecraft:honeycomb>, 150, 4, 16),
            new WeightedPoolItem(<item:minecraft:honey_bottle>, 100, 3, 6),
            new WeightedPoolItem(<item:minecraft:baked_potato>, 200, 4, 8),
            new WeightedPoolItem(<item:minecraft:bread>, 250, 1, 7)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_treasure"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_unicorn_galleon_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/unicorn_galleon/unicorn_galleon_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 15, 3, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 7, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// DUNGEONS ARISE SEVEN SEAS VICTORY FRIGATE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_barrels"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_victory_frigate_barrels",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_barrels>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 2, 4)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:string>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:charcoal>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 8, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:flint>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:bowl>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:salmon_bucket>, 1, 1, 1)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_normal_lower"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_victory_frigate_normal_lower",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_normal_lower>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 15, 3, 6),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 7, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_normal_upper"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_victory_frigate_normal_upper",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_normal_upper>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 15, 12, 24),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 20, 6, 12),
            new WeightedPoolItem(<item:minecraft:diamond>, 15, 2, 5),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 4, 16)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNWeaponsWithProbability(1, 0.35);
        loot_generator.generateNArmorsWithProbability(2, 0.9);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_supply"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_victory_frigate_supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_supply>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(4, 4, 0, [
            new WeightedPoolItem(<item:minecraft:beef>, 200, 8, 12),
            new WeightedPoolItem(<item:minecraft:melon_slice>, 150, 8, 12),
            new WeightedPoolItem(<item:minecraft:pumpkin_pie>, 200, 4, 5),
            new WeightedPoolItem(<item:minecraft:cod>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:salmon>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:tropical_fish>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 50, 2, 16),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:milk_bucket>, 100, 1, 3),
            new WeightedPoolItem(<item:minecraft:wet_sponge>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:mushroom_stew>, 50, 2, 3),
            new WeightedPoolItem(<item:minecraft:honeycomb>, 150, 4, 16),
            new WeightedPoolItem(<item:minecraft:honey_bottle>, 100, 3, 6),
            new WeightedPoolItem(<item:minecraft:baked_potato>, 200, 4, 8),
            new WeightedPoolItem(<item:minecraft:bread>, 250, 1, 7)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_treasure"}]
loot.modifiers.register(
    "dungeons_arise_seven_seas_chests_victory_frigate_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_arise_seven_seas:chests/victory_frigate/victory_frigate_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 4, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 3, 6)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bone>, 2, 1, 8),
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:cobweb>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:book>, 2, 1, 16),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 2, 4, 32)
        ]);

        loot_generator.generateNArmorsWithProbability(2, 1.0);
        loot_generator.generateNEssences(2, 3);
        loot_generator.generateArtifact(3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);