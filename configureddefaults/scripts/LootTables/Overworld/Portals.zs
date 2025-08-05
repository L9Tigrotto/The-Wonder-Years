import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// HOPO BETTER RUINED PORTAL LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/portal/better_ruined_portal"}]
loot.modifiers.register(
    "hopo_chests_portal_better_ruined_portal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/portal/better_ruined_portal>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "portal_vicinity");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - structure-specific items only
        loot_generator.performWeightedPool(4, 6, 5, [
            new WeightedPoolItem(<item:minecraft:obsidian>, 70, 0, 2),
            new WeightedPoolItem(<item:minecraft:flint>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 27, 9, 27),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 22, 1, 1),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 18, 40),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:light_weighted_pressure_plate>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 7, 6, 12),
            new WeightedPoolItem(<item:minecraft:clock>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 7, 4, 8),
            new WeightedPoolItem(<item:minecraft:bell>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 1, 2)
        ]);

        // Generation functions - enhanced rates for custom content
        loot_generator.generateNToolsWithProbability(1, 0.196); // 50/255 weight proportion
        loot_generator.generateNWeaponsWithProbability(1, 0.039); // 10/255 weight proportion
        loot_generator.generateNArmorsWithProbability(1, 0.157); // 40/255 weight proportion
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/portal/ruined_portal_cool"}]
loot.modifiers.register(
    "hopo_chests_portal_ruined_portal_cool",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/portal/ruined_portal_cool>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "portal_vicinity");
        val loot_generator = new LootGenerator(loot_context);

        // This chest references better_ruined_portal with 2 rolls, so use same logic with higher rolls
        loot_generator.performWeightedPool(8, 12, 5, [
            new WeightedPoolItem(<item:minecraft:obsidian>, 70, 0, 2),
            new WeightedPoolItem(<item:minecraft:flint>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 27, 9, 27),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 22, 1, 1),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 50, 2, 5),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 18, 40),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 5, 6, 12),
            new WeightedPoolItem(<item:minecraft:light_weighted_pressure_plate>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 7, 6, 12),
            new WeightedPoolItem(<item:minecraft:clock>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 7, 4, 8),
            new WeightedPoolItem(<item:minecraft:bell>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 1, 2)
        ]);

        loot_generator.generateNToolsWithProbability(2, 0.196);
        loot_generator.generateNWeaponsWithProbability(1, 0.039);
        loot_generator.generateNArmorsWithProbability(2, 0.157);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/portal/lush_portal"}]
loot.modifiers.register(
    "hopo_chests_portal_lush_portal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/portal/lush_portal>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "lush_caves");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - lush cave themed items only
        loot_generator.performWeightedPool(7, 9, 10, [
            new WeightedPoolItem(<item:minecraft:flowering_azalea>, 35, 1, 3),
            new WeightedPoolItem(<item:minecraft:azalea>, 40, 1, 4),
            new WeightedPoolItem(<item:minecraft:moss_block>, 45, 1, 6),
            new WeightedPoolItem(<item:minecraft:glow_berries>, 60, 2, 6),
            new WeightedPoolItem(<item:minecraft:obsidian>, 100, 3, 5),
            new WeightedPoolItem(<item:minecraft:flint>, 40, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 40, 9, 18),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 8, 32),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 5, 4, 12),
            new WeightedPoolItem(<item:minecraft:light_weighted_pressure_plate>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 5, 4, 12),
            new WeightedPoolItem(<item:minecraft:clock>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 8),
            new WeightedPoolItem(<item:minecraft:bell>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 1, 2)
        ]);

        // Generation functions - lush cave appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.094); // 60/638 weight proportion (4 tools × 15 each)
        loot_generator.generateNWeaponsWithProbability(1, 0.024); // 15/638 weight proportion (1 weapon × 15)
        loot_generator.generateNArmorsWithProbability(1, 0.102); // 65/638 weight proportion (4 armor × 15 + horse armor × 5)
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/portal/dripstone_portal"}]
loot.modifiers.register(
    "hopo_chests_portal_dripstone_portal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/portal/dripstone_portal>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "dripstone_caves");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - dripstone cave themed items only
        loot_generator.performWeightedPool(7, 9, 10, [
            new WeightedPoolItem(<item:minecraft:raw_copper>, 40, 4, 12),
            new WeightedPoolItem(<item:minecraft:dripstone_block>, 35, 8, 16),
            new WeightedPoolItem(<item:minecraft:pointed_dripstone>, 55, 8, 16),
            new WeightedPoolItem(<item:minecraft:obsidian>, 100, 3, 6),
            new WeightedPoolItem(<item:minecraft:flint>, 40, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 40, 9, 18),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 40, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 15, 8, 32),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 5, 4, 12),
            new WeightedPoolItem(<item:minecraft:light_weighted_pressure_plate>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 5, 4, 12),
            new WeightedPoolItem(<item:minecraft:clock>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 8),
            new WeightedPoolItem(<item:minecraft:bell>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 1, 2)
        ]);

        // Generation functions - dripstone cave appropriate rates
        loot_generator.generateNToolsWithProbability(1, 0.092); // 60/653 weight proportion (4 tools × 15 each)
        loot_generator.generateNWeaponsWithProbability(1, 0.023); // 15/653 weight proportion (1 weapon × 15)
        loot_generator.generateNArmorsWithProbability(1, 0.099); // 65/653 weight proportion (4 armor × 15 + horse armor × 5)
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);