import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// REPURPOSED STRUCTURES NETHER CITIES LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"repurposed_structures:chests/cities/nether"}]
loot.modifiers.register(
    "repurposed_structures_chests_cities_nether",
    LootConditions.only(LootTableIdLootCondition.create(<resource:repurposed_structures:chests/cities/nether>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (NO tools/armor/books/potions)
        loot_generator.performWeightedPool(4, 7, 25, [
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 50, 1, 3),
            new WeightedPoolItem(<item:minecraft:magma_block>, 20, 5, 15),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 18, 8, 18),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 18, 4, 10),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 12, 10, 20),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 12, 3, 12),
            new WeightedPoolItem(<item:minecraft:flint_and_steel>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:firework_star>, 8, 4, 12),
            new WeightedPoolItem(<item:minecraft:netherite_ingot>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 5, 4, 12),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 5, 40, 60),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 3, 1, 1)
        ]);

        // Second pool
        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:magma_cream>, 3, 3, 9),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 3, 2, 6),
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 2, 5, 10),
            new WeightedPoolItem(<item:minecraft:netherite_ingot>, 1, 1, 1)
        ]);

        // Armor trim pool
        loot_generator.performWeightedPool(1, 1, 14, [
            new WeightedPoolItem(<item:minecraft:spire_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Generation functions with custom rates
        loot_generator.generateNToolsWithProbability(2, 0.60); // 5 golden tools total
        loot_generator.generateNWeaponsWithProbability(1, 0.12); // 1 golden sword 
        loot_generator.generateNArmorsWithProbability(3, 0.48); // 4 golden armor + 1 horse armor
        loot_generator.generateNEssences(2, 4);
        loot_generator.generateArtifact(4);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);