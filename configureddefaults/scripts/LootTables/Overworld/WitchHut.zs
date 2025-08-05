import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// BETTER WITCH HUTS WITCH HUT LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterwitchhuts:chests/hut_0"}]
loot.modifiers.register(
    "betterwitchhuts_chests_hut_0",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterwitchhuts:chests/hut_0>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "swamp");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pool - brewing materials and witch hut specific items
        loot_generator.performWeightedPool(3, 5, 10, [
            new WeightedPoolItem(<item:minecraft:sugar>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 2, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 10, 3, 6),
            new WeightedPoolItem(<item:minecraft:rabbit_foot>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:pufferfish>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:phantom_membrane>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:redstone>, 10, 4, 7),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:slime_ball>, 10, 4, 8)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.15);
        loot_generator.generateNWeaponsWithProbability(1, 0.10);
        loot_generator.generateNArmorsWithProbability(1, 0.10);
        loot_generator.generateNPotionsWithProbability(3, 1.0);
        loot_generator.generateNEssences(2, 3);
        loot_generator.generateArtifact(3);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);