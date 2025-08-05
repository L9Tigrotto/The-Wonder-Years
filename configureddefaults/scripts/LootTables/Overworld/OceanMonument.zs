import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// BETTEROCEANMONUMENTS UPPER SIDE CHAMBER LOOT TABLE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betteroceanmonuments:chests/upper_side_chamber"}]
loot.modifiers.register(
    "betteroceanmonuments_chests_upper_side_chamber",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betteroceanmonuments:chests/upper_side_chamber>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "ocean");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - structure-specific ocean monument materials
        loot_generator.performWeightedPool(8, 10, 0, [
            new WeightedPoolItem(<item:minecraft:nautilus_shell>, 1, 1, 1)
        ]);
        
        loot_generator.performWeightedPool(3, 6, 0, [
            new WeightedPoolItem(<item:minecraft:prismarine_shard>, 1, 10, 16),
            new WeightedPoolItem(<item:minecraft:prismarine_crystals>, 1, 10, 16)
        ]);

        // Generation functions for ocean monument difficulty
        loot_generator.generateNToolsWithProbability(1, 0.25);
        loot_generator.generateNWeaponsWithProbability(1, 0.30);
        loot_generator.generateNArmorsWithProbability(1, 0.20);
        loot_generator.generateNPotionsWithProbability(1, 0.15);
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);