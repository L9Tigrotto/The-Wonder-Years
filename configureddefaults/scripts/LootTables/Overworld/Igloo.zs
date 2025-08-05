import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// VANILLA MINECRAFT IGLOO LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/igloo_chest"}]
loot.modifiers.register(
    "minecraft_chests_igloo_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/igloo_chest>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "snowy");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Weighted items (stone_axe removed, moved to generation function)
        // Original total weight: 63, new weight: 61 (removed stone_axe weight 2)
        loot_generator.performWeightedPool(2, 8, 0, [
            // Structure-specific and utility items (61 total weight)
            new WeightedPoolItem(<item:minecraft:apple>, 15, 1, 3),
            new WeightedPoolItem(<item:minecraft:coal>, 15, 1, 4),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:emerald>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:wheat>, 10, 2, 3)
        ]);

        // Generation functions with original rates
        // Stone axe probability: (2/63) * 5 avg rolls ≈ 0.159
        loot_generator.generateNToolsWithProbability(1, 0.159);
        
        // Standard vanilla rates
        loot_generator.generateNEssences(2, 1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        loot_context.addLoot(<item:minecraft:golden_apple>);
        loot_context.addLoot(<item:minecraft:splash_potion>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:weakness"}));

        loot_context.addLootWithProbability(<item:endrem:cold_eye>, 0.30 / 1.0 + loot_context.player_luck / 100.0);
        return loot_context.loot;
    }
);