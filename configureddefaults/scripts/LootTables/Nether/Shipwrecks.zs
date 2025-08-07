import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// REPURPOSED STRUCTURES NETHER SHIPWRECK LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/shipwrecks/crimson/map"}]
loot.modifiers.register(
    "repurposed_structures_chests_shipwrecks_crimson_map",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/map>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "crimson_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (nether-themed navigation items, books moved to generation)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:map>, 4, 1, 1)
        ]);

        loot_generator.performWeightedPool(10, 10, 0, [
            new WeightedPoolItem(<item:minecraft:compass>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:clock>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 18, 1, 10),
            new WeightedPoolItem(<item:minecraft:feather>, 8, 1, 5),
            new WeightedPoolItem(<item:minecraft:bone>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:writable_book>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:book>, 8, 2, 8)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        loot_generator.performWeightedPool(0, 0, 130, [
            new WeightedPoolItem(<item:minecraft:black_banner>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:writable_book>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:book>, 8, 3, 3)
        ]);

        // Generation functions (enchanted books moved from weighted pools)
        loot_generator.generateNToolsWithProbability(1, 0.05);
        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateNArmorsWithProbability(1, 0.08);
        loot_generator.generateNPotionsWithProbability(1, 0.05);
        loot_generator.generateNEssences(2, 15); // 2 weight enchanted books
        loot_generator.generateHatBagWithProbability(0.03);
        loot_generator.generateMoneyBagWithProbability(2, 0.06);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/shipwrecks/crimson/supply"}]
loot.modifiers.register(
    "repurposed_structures_chests_shipwrecks_crimson_supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/supply>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "crimson_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (nether supplies, armor and potions moved to generation)
        loot_generator.performWeightedPool(5, 11, 0, [
            new WeightedPoolItem(<item:minecraft:paper>, 8, 1, 12),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 7, 2, 12),
            new WeightedPoolItem(<item:minecraft:nether_wart_block>, 7, 1, 10),
            new WeightedPoolItem(<item:minecraft:shroomlight>, 7, 5, 10),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 6, 2, 5),
            new WeightedPoolItem(<item:minecraft:firework_star>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:warped_fungus_on_a_stick>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 10, 15),
            new WeightedPoolItem(<item:minecraft:red_stained_glass_pane>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:black_stained_glass_pane>, 2, 1, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions (armor and potions moved from weighted pools)
        loot_generator.generateNToolsWithProbability(1, 0.10);
        loot_generator.generateNWeaponsWithProbability(1, 0.08);
        loot_generator.generateNArmorsWithProbability(2, 0.18); // 12 weight iron armor moved
        loot_generator.generateNPotionsWithProbability(2, 0.16); // 11 weight suspicious_stew moved
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/shipwrecks/crimson/treasure"}]
loot.modifiers.register(
    "repurposed_structures_chests_shipwrecks_crimson_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/crimson/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "crimson_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (nether treasure, weapons and books moved to generation)
        loot_generator.performWeightedPool(3, 7, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 40, 4, 10),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 15, 2, 5),
            new WeightedPoolItem(<item:minecraft:netherite_ingot>, 13, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:coal>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 13, 1, 2),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:iron_block>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:quartz>, 1, 6, 20),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 1, 5, 10),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 1, 4, 7)
        ]);

        loot_generator.performWeightedPool(2, 5, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 20, 4, 20),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 10, 2, 15),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 2, 15),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 2, 10),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 5, 6, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        loot_generator.performWeightedPool(0, 0, 130, [
            new WeightedPoolItem(<item:minecraft:black_banner>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 10, 2, 2),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 2, 2)
        ]);

        // Generation functions (weapons and books moved from weighted pools)
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(2, 0.12); // 15 weight stone_sword moved
        loot_generator.generateNArmorsWithProbability(1, 0.18);
        loot_generator.generateNPotionsWithProbability(1, 0.12);
        loot_generator.generateNEssences(2, 2); 
        loot_generator.generateArtifact(2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/shipwrecks/warped/map"}]
loot.modifiers.register(
    "repurposed_structures_chests_shipwrecks_warped_map",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/map>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "warped_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (warped navigation items)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:map>, 4, 1, 1)
        ]);

        loot_generator.performWeightedPool(10, 10, 0, [
            new WeightedPoolItem(<item:minecraft:compass>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:clock>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:paper>, 18, 1, 10),
            new WeightedPoolItem(<item:minecraft:feather>, 8, 1, 5),
            new WeightedPoolItem(<item:minecraft:bone>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:coal>, 3, 3, 6),
            new WeightedPoolItem(<item:minecraft:writable_book>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:book>, 8, 2, 8)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        loot_generator.performWeightedPool(0, 0, 130, [
            new WeightedPoolItem(<item:minecraft:black_banner>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:writable_book>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:book>, 8, 3, 3)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.05);
        loot_generator.generateNWeaponsWithProbability(1, 0.05);
        loot_generator.generateNArmorsWithProbability(1, 0.08);
        loot_generator.generateNPotionsWithProbability(1, 0.05);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/shipwrecks/warped/supply"}]
loot.modifiers.register(
    "repurposed_structures_chests_shipwrecks_warped_supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/supply>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "warped_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (warped supplies)
        loot_generator.performWeightedPool(5, 11, 0, [
            new WeightedPoolItem(<item:minecraft:paper>, 8, 1, 12),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 7, 2, 12),
            new WeightedPoolItem(<item:minecraft:warped_wart_block>, 7, 1, 10),
            new WeightedPoolItem(<item:minecraft:shroomlight>, 7, 5, 10),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 6, 2, 5),
            new WeightedPoolItem(<item:minecraft:firework_star>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:warped_fungus_on_a_stick>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 3, 10, 15),
            new WeightedPoolItem(<item:minecraft:lime_stained_glass_pane>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:black_stained_glass_pane>, 2, 1, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.10);
        loot_generator.generateNWeaponsWithProbability(1, 0.08);
        loot_generator.generateNArmorsWithProbability(2, 0.18);
        loot_generator.generateNPotionsWithProbability(2, 0.16);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/shipwrecks/warped/treasure"}]
loot.modifiers.register(
    "repurposed_structures_chests_shipwrecks_warped_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/warped/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "warped_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (enhanced warped treasure - premium variant)
        loot_generator.performWeightedPool(4, 8, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 70, 5, 20),
            new WeightedPoolItem(<item:minecraft:coal>, 70, 6, 20),
            new WeightedPoolItem(<item:minecraft:bone>, 55, 4, 20),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 45, 2, 20),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 30, 7, 15),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 30, 1, 3),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 20, 3, 5),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 10, 8, 15),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_block>, 6, 2, 5),
            new WeightedPoolItem(<item:minecraft:iron_block>, 3, 2, 5),
            new WeightedPoolItem(<item:minecraft:netherite_ingot>, 3, 1, 4),
            new WeightedPoolItem(<item:minecraft:elytra>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:map>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:map>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 3, 2, 20)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        loot_generator.performWeightedPool(0, 0, 130, [
            new WeightedPoolItem(<item:minecraft:red_banner>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 5, 1, 1)
        ]);

        // Generation functions (premium rates for warped variant)
        loot_generator.generateNToolsWithProbability(1, 0.20);
        loot_generator.generateNWeaponsWithProbability(2, 0.15);
        loot_generator.generateNArmorsWithProbability(1, 0.22);
        loot_generator.generateNPotionsWithProbability(1, 0.15);
        loot_generator.generateNEssences(2, 2);
        loot_generator.generateArtifact(2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/shipwrecks/nether_bricks"}]
loot.modifiers.register(
    "repurposed_structures_chests_shipwrecks_nether_bricks_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/shipwrecks/nether_bricks/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (nether bricks themed treasure - similar to crimson but nether wastes context)
        loot_generator.performWeightedPool(3, 7, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 40, 4, 10),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 15, 2, 5),
            new WeightedPoolItem(<item:minecraft:netherite_ingot>, 13, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:coal>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 13, 1, 2),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:iron_block>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:quartz>, 1, 6, 20),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 1, 5, 10),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 1, 4, 7)
        ]);

        loot_generator.performWeightedPool(2, 5, 0, [
            new WeightedPoolItem(<item:minecraft:coal>, 20, 4, 20),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 10, 2, 15),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 2, 15),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 2, 10),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 5, 6, 12)
        ]);

        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:coast_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        loot_generator.performWeightedPool(0, 0, 130, [
            new WeightedPoolItem(<item:minecraft:black_banner>, 30, 1, 1),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 10, 2, 2),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 2, 2)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(2, 0.12);
        loot_generator.generateNArmorsWithProbability(1, 0.18);
        loot_generator.generateNPotionsWithProbability(1, 0.12);
        loot_generator.generateNEssences(2, 2);
        loot_generator.generateArtifact(2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);