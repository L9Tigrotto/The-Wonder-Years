import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// NOVA STRUCTURES END CASTLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/castle_bar"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_castle_bar",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/castle_bar>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Food items (3 rolls)
        loot_generator.performWeightedPool(3, 3, 2, [
            new WeightedPoolItem(<item:minecraft:beetroot>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:apple>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 3, 1, 1)
        ]);

        // Pool 2: Special stew (3 rolls)
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:suspicious_stew>, 1, 1, 1)
        ]);

        // Generation functions (potions moved here)
        loot_generator.generateNPotionsWithProbability(3, 0.30); // Strong harming potions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/castle_brewing"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_castle_brewing",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/castle_brewing>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (brewing ingredients and special items)
        loot_generator.performWeightedPool(4, 4, 5, [
            new WeightedPoolItem(<item:minecraft:dragon_breath>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:glowstone>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:redstone>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:potion>, 5, 1, 1) // Water bottles
        ]);

        // Generation functions (all potions and books moved here)
        loot_generator.generateNPotionsWithProbability(8, 0.75); // Many potion types including levitation
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:nova_structures:chests/end_castle/greater_loot"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_greater_loot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/greater_loot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: High-tier materials (3 rolls)
        loot_generator.performWeightedPool(3, 3, 8, [
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:end_crystal>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 2, 5, 8),
            new WeightedPoolItem(<item:minecraft:gold_block>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 8),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 8),
            new WeightedPoolItem(<item:minecraft:emerald_block>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond_block>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:name_tag>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 2, 3, 8),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 2, 2, 3),
            new WeightedPoolItem(<item:minecraft:ender_eye>, 2, 1, 1)
        ]);

        // Pool 4: Structure-specific items (1 roll)
        loot_generator.performWeightedPool(1, 1, 100, [
            new WeightedPoolItem(<item:minecraft:spire_armor_trim_smithing_template>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:eye_armor_trim_smithing_template>, 3, 1, 1)
        ]);

        // Generation functions (all enchanted gear and potions moved here)
        loot_generator.generateNToolsWithProbability(1, 0.50); // Iron axes
        loot_generator.generateNWeaponsWithProbability(2, 0.70); // Iron/Diamond swords, crossbows, tipped arrows
        loot_generator.generateNArmorsWithProbability(6, 0.85); // Iron and diamond armor sets
        loot_generator.generateNPotionsWithProbability(4, 0.45); // Slow falling and levitation potions
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/lesser_loot"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_lesser_loot",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/lesser_loot>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Mid-tier materials (1-3 rolls)
        loot_generator.performWeightedPool(1, 3, 15, [
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:string>, 4, 2, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 1, 3, 4),
            new WeightedPoolItem(<item:minecraft:stick>, 1, 2, 3),
            new WeightedPoolItem(<item:minecraft:end_crystal>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:name_tag>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 2, 1, 2),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_eye>, 2, 1, 1)
        ]);

        // Pool 3: Structure items (1 roll)
        loot_generator.performWeightedPool(1, 1, 300, [
            new WeightedPoolItem(<item:minecraft:spire_armor_trim_smithing_template>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:eye_armor_trim_smithing_template>, 10, 1, 1)
        ]);

        // Generation functions (enchanted gear moved here)
        loot_generator.generateNToolsWithProbability(1, 0.40); // Iron axes
        loot_generator.generateNWeaponsWithProbability(2, 0.60); // Iron/Diamond swords, crossbows
        loot_generator.generateNArmorsWithProbability(4, 0.70); // Iron armor sets
        loot_generator.generateNPotionsWithProbability(3, 0.35); // Slow falling and levitation potions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/rocket_barrel"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_rocket_barrel",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/rocket_barrel>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Flight-related items (2 rolls)
        loot_generator.performWeightedPool(2, 2, 2, [
            new WeightedPoolItem(<item:minecraft:phantom_membrane>, 4, 1, 2)
        ]);

        // Pool 2: Firework rockets (3 rolls)
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:firework_rocket>, 1, 3, 5), // Duration 3
            new WeightedPoolItem(<item:minecraft:firework_rocket>, 1, 5, 8), // Duration 2  
            new WeightedPoolItem(<item:minecraft:firework_rocket>, 1, 6, 10) // Duration 1
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(1, 0.50); // Enchanted crossbow
        loot_generator.generateNPotionsWithProbability(1, 0.40); // Levitation potions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/supply"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/supply>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (building materials and supplies - 3 rolls)
        loot_generator.performWeightedPool(3, 3, 5, [
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:beetroot>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 3, 5),
            new WeightedPoolItem(<item:minecraft:magenta_dye>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:purple_dye>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 3, 2, 3),
            new WeightedPoolItem(<item:minecraft:black_dye>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:magenta_wool>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:purple_wool>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:black_wool>, 2, 1, 3),
            new WeightedPoolItem(<item:minecraft:end_stone>, 5, 5, 10),
            new WeightedPoolItem(<item:minecraft:chorus_flower>, 5, 5, 10),
            new WeightedPoolItem(<item:minecraft:pearlescent_froglight>, 5, 1, 3),
            new WeightedPoolItem(<item:minecraft:glass>, 5, 5, 10),
            new WeightedPoolItem(<item:minecraft:magenta_stained_glass>, 5, 5, 10),
            new WeightedPoolItem(<item:minecraft:purple_stained_glass_pane>, 5, 5, 10),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:emerald>, 5, 2, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 2, 3),
            new WeightedPoolItem(<item:minecraft:emerald_block>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:obsidian>, 5, 5, 10),
            new WeightedPoolItem(<item:minecraft:beetroot_seeds>, 3, 5, 10),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:apple>, 5, 3, 6),
            new WeightedPoolItem(<item:minecraft:phantom_membrane>, 3, 1, 2),
            new WeightedPoolItem(<item:minecraft:name_tag>, 5, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(1, 0.25); // Crossbow
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/treasure_lighthouse"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_treasure_lighthouse",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/treasure_lighthouse>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Lighthouse treasure items (4 rolls)
        loot_generator.performWeightedPool(4, 4, 5, [
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 10, 2, 8),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:nether_wart>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 3, 5),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 3, 5),
            new WeightedPoolItem(<item:minecraft:popped_chorus_fruit>, 10, 6, 12),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 10, 1, 2)
        ]);

        // Pool 2: Structure items (1 roll)
        loot_generator.performWeightedPool(1, 1, 40, [
            new WeightedPoolItem(<item:minecraft:spire_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/vault_brigattine"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_vault_brigattine",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/vault_brigattine>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 2: Vault treasure (2 rolls)
        loot_generator.performWeightedPool(2, 2, 3, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_eye>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_block>, 4, 2, 2),
            new WeightedPoolItem(<item:minecraft:diamond_block>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:emerald_block>, 4, 1, 1)
        ]);

        // Pool 3: Elite items (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:elytra>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:spire_armor_trim_smithing_template>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:eye_armor_trim_smithing_template>, 2, 1, 1)
        ]);

        // Generation functions (all enchanted gear moved here)
        loot_generator.generateNWeaponsWithProbability(2, 0.80); // Diamond swords and axes
        loot_generator.generateNArmorsWithProbability(6, 0.90); // Full diamond and iron armor sets
        loot_generator.generateNPotionsWithProbability(2, 0.60); // Levitation and slow falling
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/vault_galleon"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_vault_galleon",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/vault_galleon>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Premium items (2 rolls)
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 2, 2, 3),
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 2, 2, 4)
        ]);

        // Pool 2: Structure items (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:end_crystal>, 2, 3, 3)
        ]);

        // Pool 3: Guaranteed elytra (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:elytra>, 1, 1, 1)
        ]);

        // Pool 4: Treasure blocks (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_block>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:iron_block>, 4, 2, 3),
            new WeightedPoolItem(<item:minecraft:diamond_block>, 4, 1, 1),
            new WeightedPoolItem(<item:minecraft:emerald>, 4, 3, 5)
        ]);

        // Pool 5: Elite items (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:spire_armor_trim_smithing_template>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:eye_armor_trim_smithing_template>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:lodestone>, 4, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(2, 0.90); // Diamond sword, axe, crossbow
        loot_generator.generateNArmorsWithProbability(4, 0.95); // Full diamond armor
        loot_generator.generateNPotionsWithProbability(4, 0.80); // Multiple levitation potions
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_castle/vault_slope"}]
loot.modifiers.register(
    "nova_structures_chests_end_castle_vault_slope",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_castle/vault_slope>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 4: Special items (1 roll)
        loot_generator.performWeightedPool(1, 1, 5, [
            new WeightedPoolItem(<item:minecraft:golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:ender_eye>, 2, 1, 1)
        ]);

        // Pool 5: Map (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:filled_map>, 1, 1, 1) // End Lighthouse Map
        ]);

        // Pool 6: Elite gear (1 roll)
        loot_generator.performWeightedPool(1, 1, 20, [
            new WeightedPoolItem(<item:minecraft:spire_armor_trim_smithing_template>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:eye_armor_trim_smithing_template>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:elytra>, 10, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(2, 0.70); // Diamond sword, axe, crossbow
        loot_generator.generateNArmorsWithProbability(5, 0.80); // Diamond and iron armor
        loot_generator.generateNPotionsWithProbability(3, 0.50); // Experience bottles, levitation potions
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);

        return loot_context.loot;
    }
);

// =============================================================================
// NOVA STRUCTURES END LIGHTHOUSE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_lighthouse/supply_lighthouse"}]
loot.modifiers.register(
    "nova_structures_chests_end_lighthouse_supply_lighthouse",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_lighthouse/supply_lighthouse>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Lighthouse supplies (4 rolls)
        loot_generator.performWeightedPool(4, 4, 5, [
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 10, 2, 8),
            new WeightedPoolItem(<item:minecraft:beetroot>, 10, 5, 7),
            new WeightedPoolItem(<item:minecraft:melon_seeds>, 10, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:emerald>, 10, 2, 5),
            new WeightedPoolItem(<item:minecraft:string>, 10, 2, 3),
            new WeightedPoolItem(<item:minecraft:stick>, 10, 2, 3)
        ]);

        // Pool 2: Structure items (1 roll)
        loot_generator.performWeightedPool(1, 1, 100, [
            new WeightedPoolItem(<item:minecraft:eye_armor_trim_smithing_template>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNPotionsWithProbability(1, 0.30); // Healing potions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"nova_structures:chests/end_lighthouse/vault_lighthouse"}]
loot.modifiers.register(
    "nova_structures_chests_end_lighthouse_vault_lighthouse",
    LootConditions.only(LootTableIdLootCondition.create(<resource:nova_structures:chests/end_lighthouse/vault_lighthouse>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "end", "end_highlands");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Simple items (3 rolls)
        loot_generator.performWeightedPool(3, 3, 20, [
            new WeightedPoolItem(<item:minecraft:chorus_fruit>, 30, 1, 3),
            new WeightedPoolItem(<item:minecraft:beetroot_soup>, 150, 1, 1)
        ]);

        // Pool 2: Map (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:filled_map>, 1, 1, 1) // End Castle Map
        ]);

        // Pool 3: Spyglass (1 roll)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:spyglass>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);

        return loot_context.loot;
    }
);