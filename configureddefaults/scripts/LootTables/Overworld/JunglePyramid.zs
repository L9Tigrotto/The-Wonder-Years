import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT JUNGLE TEMPLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/jungle_temple"}]
loot.modifiers.register(
    "minecraft_chests_jungle_temple",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/jungle_temple>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "jungle");
        val loot_generator = new LootGenerator(loot_context);

        // Main weighted pool (excluding armor and enchanted books)
        loot_generator.performWeightedPool(2, 6, 4, [
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:bamboo>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 3, 7),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 2, 7),
            new WeightedPoolItem(<item:minecraft:leather>, 3, 1, 5),
            new WeightedPoolItem(<item:minecraft:emerald>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5)
        ]);

        // Armor trim pool
        loot_generator.performWeightedPool(1, 1, 2, [
            new WeightedPoolItem(<item:minecraft:wild_armor_trim_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions
        loot_generator.generateNArmorsWithProbability(1, 0.034); // 3/88 = ~3.4% per roll
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// BETTERJUNGLETEMPLES LOOT TABLES  
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterjungletemples:chests/treasure"}]
loot.modifiers.register(
    "betterjungletemples_chests_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterjungletemples:chests/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "jungle");
        val loot_generator = new LootGenerator(loot_context);

        // High-value treasure pool (NO items to transform - all preserved)
        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 15, 4, 7)
        ]);

        // Emerald pool 
        loot_generator.performWeightedPool(6, 8, 0, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 2, 5)
        ]);

        loot_generator.performWeightedPool(1, 1, 6, [
            new WeightedPoolItem(<item:mythicupgrades:peridot_upgrade_smithing_template>, 1, 2, 2)
        ]);

        // Generation functions for treasure chest
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(5, 0.30);

        loot_context.addLootWithProbability(<item:endrem:rogue_eye>, 0.30 / 1.0 + loot_context.player_luck / 100.0);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterjungletemples:chests/campsite"}]
loot.modifiers.register(
    "betterjungletemples_chests_campsite",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterjungletemples:chests/campsite>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "jungle");
        val loot_generator = new LootGenerator(loot_context);

        // Campsite survival items (excluding armor)
        loot_generator.performWeightedPool(1, 3, 3, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:bamboo>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 20, 4, 6),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 16, 3, 7),
            new WeightedPoolItem(<item:minecraft:saddle>, 3, 1, 1)
        ]);

        // Generation functions for campsite
        loot_generator.generateNArmorsWithProbability(1, 0.045); // 3/67 = ~4.5% per roll
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);