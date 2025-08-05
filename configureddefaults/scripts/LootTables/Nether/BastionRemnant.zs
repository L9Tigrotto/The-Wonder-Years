import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT BASTION LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/bastion_bridge"}]
loot.modifiers.register(
    "minecraft_chests_bastion_bridge",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_bridge>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "bastion");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Guaranteed lodestone (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:lodestone>, 1, 1, 1)
        ]);

        // Pool 2: Main items (1-2 rolls) - Non-equipment items only
        loot_generator.performWeightedPool(1, 2, 5, [
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 1, 10, 28),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 4, 9),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 1, 8, 12),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 1, 3, 8),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 1, 4, 9)
        ]);

        // Extracted equipment - Bridge has high armor/weapon rates
        loot_generator.generateNToolsWithProbability(1, 0.08); // golden axe
        loot_generator.generateNWeaponsWithProbability(1, 0.15); // crossbow + golden sword  
        loot_generator.generateNArmorsWithProbability(2, 0.31); // helmet + chestplate + leggings + boots
        loot_generator.generateNPotionsWithProbability(1, 0.12);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/bastion_treasure"}]
loot.modifiers.register(
    "minecraft_chests_bastion_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "bastion");
        val loot_generator = new LootGenerator(loot_context);

        // High-value treasure items (2-4 rolls)
        loot_generator.performWeightedPool(2, 4, 5, [
            new WeightedPoolItem(<item:minecraft:netherite_ingot>, 15, 1, 1),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 10, 2, 5),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 5, 3, 8),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 5, 5, 15),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:snout_armor_trim_smithing_template>, 8, 1, 1),
            new WeightedPoolItem(<item:minecraft:netherite_upgrade_smithing_template>, 10, 1, 1)
        ]);

        // Treasure chests have highest equipment rates
        loot_generator.generateNToolsWithProbability(2, 0.45);
        loot_generator.generateNWeaponsWithProbability(2, 0.50);
        loot_generator.generateNArmorsWithProbability(3, 0.65);
        loot_generator.generateNPotionsWithProbability(2, 0.30);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        loot_context.addLootWithProbability(<item:endrem:cursed_eye>, 0.30 / 1.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/bastion_hoglin_stable"}]
loot.modifiers.register(
    "minecraft_chests_bastion_hoglin_stable",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_hoglin_stable>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "bastion");
        val loot_generator = new LootGenerator(loot_context);

        // Stable-specific items (1-2 rolls)
        loot_generator.performWeightedPool(1, 2, 15, [
            new WeightedPoolItem(<item:minecraft:saddle>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 11, 8, 17),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 7, 2, 7),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 7, 2, 7),
            new WeightedPoolItem(<item:minecraft:leather>, 7, 1, 3),
            new WeightedPoolItem(<item:minecraft:arrow>, 7, 5, 17),
            new WeightedPoolItem(<item:minecraft:string>, 7, 1, 6),
            new WeightedPoolItem(<item:minecraft:bone>, 7, 1, 8)
        ]);

        // Hoglin stables have lowest equipment rates
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.20);
        loot_generator.generateNArmorsWithProbability(1, 0.25);
        loot_generator.generateNPotionsWithProbability(1, 0.12);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/bastion_other"}]
loot.modifiers.register(
    "minecraft_chests_bastion_other",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/bastion_other>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "bastion");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Main rare items (1 roll, weight 89 total)
        loot_generator.performWeightedPool(1, 1, 7, [
            new WeightedPoolItem(<item:minecraft:music_disc_pigstep>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 10, 10, 22),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:piglin_banner_pattern>, 9, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 12, 6, 17)
        ]);

        // Pool 2: Secondary items (1-2 rolls)
        loot_generator.performWeightedPool(1, 2, 8, [
            new WeightedPoolItem(<item:minecraft:iron_block>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 2, 1, 6),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 2, 1, 5)
        ]);

        // Pool 3: Basic materials (2-4 rolls)
        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:leather>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 1, 1, 6),
            new WeightedPoolItem(<item:minecraft:arrow>, 1, 5, 17),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 1, 2, 6),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 2, 6)
        ]);

        // Pool 4: Snout armor trim (1 roll, 8.3% chance)
        loot_generator.performWeightedPool(1, 1, 92, [
            new WeightedPoolItem(<item:minecraft:snout_armor_trim_smithing_template>, 8, 1, 1)
        ]);

        // Pool 5: Netherite upgrade template (1 roll, 10% chance)  
        loot_generator.performWeightedPool(1, 1, 90, [
            new WeightedPoolItem(<item:minecraft:netherite_upgrade_smithing_template>, 10, 1, 1)
        ]);

        // Extracted equipment based on actual generic loot data
        loot_generator.generateNToolsWithProbability(1, 0.13); // diamond shovel + diamond pickaxe (combined 6.7% + 6.7%)
        loot_generator.generateNWeaponsWithProbability(1, 0.09); // crossbow + iron sword (combined 6.7% + 2.2%)
        loot_generator.generateNArmorsWithProbability(1, 0.13); // golden helmet + boots + leggings + soul speed boots 
        loot_generator.generateNPotionsWithProbability(1, 0.18);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);