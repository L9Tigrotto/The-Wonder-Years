import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// TERRALITH MAGE STRUCTURE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:mage/barracks"}]
loot.modifiers.register(
    "terralith_chests_mage_barracks",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:mage/barracks>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "magical_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Binomial n=3, p=0.4 ≈ 1.2 expected rolls
        loot_generator.performWeightedPool(1, 2, 4, [
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 4, 3, 9),
            new WeightedPoolItem(<item:minecraft:bread>, 5, 3, 11)
        ]);

        // Pool 3: Arrow pool (2-3 rolls) - arrows have binomial distributions
        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:slowness"}), 1, 6, 12), // binomial n=15, p=0.6 range
            new WeightedPoolItem(<item:minecraft:arrow>, 9, 18, 30) // binomial n=40, p=0.6 range
        ]);

        // Generation functions - Pool 2 guaranteed weapon
        loot_generator.generateNWeaponsWithProbability(1, 1.0); // guaranteed bow or crossbow
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// MISSING LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:mage/extras"}]
loot.modifiers.register(
    "terralith_chests_mage_extras", 
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:mage/extras>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "magical_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (crossbow removed, moved to generation function)
        loot_generator.performWeightedPool(2, 4, 100, [
            new WeightedPoolItem(<item:minecraft:warped_planks>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_cluster>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 60, 1, 2),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 40, 1, 10),
            new WeightedPoolItem(<item:minecraft:bone>, 70, 1, 5),
            new WeightedPoolItem(<item:minecraft:coal>, 90, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 90, 2, 4),
            new WeightedPoolItem(<item:minecraft:cobweb>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 70, 1, 4),
            new WeightedPoolItem(<item:minecraft:glow_ink_sac>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 80, 1, 4),
            new WeightedPoolItem(<item:minecraft:arrow>, 100, 6, 17)
        ]);

        // Generation functions  
        loot_generator.generateNWeaponsWithProbability(1, 0.039);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"terralith:mage/treasure"}]
loot.modifiers.register(
    "terralith_chests_mage_treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:terralith:mage/treasure>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "magical_forest");
        val loot_generator = new LootGenerator(loot_context);

        // Inherits extras table (pool 1) - crossbow removed, moved to generation function
        loot_generator.performWeightedPool(2, 4, 100, [
            new WeightedPoolItem(<item:minecraft:warped_planks>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_cluster>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:leather>, 60, 1, 2),
            new WeightedPoolItem(<item:minecraft:bone_meal>, 40, 1, 10),
            new WeightedPoolItem(<item:minecraft:bone>, 70, 1, 5),
            new WeightedPoolItem(<item:minecraft:coal>, 90, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 90, 2, 4),
            new WeightedPoolItem(<item:minecraft:cobweb>, 60, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 70, 1, 4),
            new WeightedPoolItem(<item:minecraft:glow_ink_sac>, 40, 1, 3),
            new WeightedPoolItem(<item:minecraft:amethyst_shard>, 80, 1, 4),
            new WeightedPoolItem(<item:minecraft:arrow>, 100, 6, 17)
        ]);

        // Diamond pool (guaranteed) - binomial n=6, p=0.45 ≈ 0-6 range, 2.7 expected
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 0, 6) // binomial distribution range
        ]);

        // Generation functions 
        loot_generator.generateNWeaponsWithProbability(1, 0.039);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);