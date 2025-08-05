import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// INCENDIUM CASTLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/alchemist"}]
loot.modifiers.register(
    "incendium_castle_barrel_alchemist",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/alchemist>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (structure-specific items only)
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:redstone_block>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:glowstone>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:potion>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:water"}), 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 1, 3, 10)
        ]);

        // Generation functions
        loot_generator.generateNPotionsWithProbability(3, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/barracks"}]
loot.modifiers.register(
    "incendium_castle_barrel_barracks",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/barracks>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_block>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:iron_block>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 7, 1, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 4, 16)
        ]);

        loot_generator.performWeightedPool(2, 4, 0, [
            new WeightedPoolItem(<item:minecraft:arrow>, 2, 5, 16),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 2, 5, 16),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 7, 12, 25),
            new WeightedPoolItem(<item:minecraft:flint>, 5, 4, 16),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 5, 4, 8),
            new WeightedPoolItem(<item:minecraft:stick>, 5, 4, 16),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 5, 4, 16),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 5, 4, 16)
        ]);

        // Generation functions  
        loot_generator.generateNToolsWithProbability(1, 1.0);
        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/blacksmith"}]
loot.modifiers.register(
    "incendium_castle_barrel_blacksmith",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/blacksmith>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:netherite_scrap>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:diamond>, 1, 3, 5),
            new WeightedPoolItem(<item:minecraft:netherite_upgrade_smithing_template>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:rib_armor_trim_smithing_template>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:snout_armor_trim_smithing_template>, 1, 1, 2)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:chipped_anvil>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:damaged_anvil>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:anvil>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:gold_block>, 2, 3, 6),
            new WeightedPoolItem(<item:minecraft:iron_block>, 4, 5, 10),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 7, 12, 25),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 5, 4, 16)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 1.0); // tools loot table
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/food"}]
loot.modifiers.register(
    "incendium_castle_barrel_food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/food>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 5, 1, 4),
            new WeightedPoolItem(<item:minecraft:carrot>, 2, 1, 4),
            new WeightedPoolItem(<item:minecraft:potato>, 2, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 5, 1, 4)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 4, 3, 7),
            new WeightedPoolItem(<item:minecraft:porkchop>, 5, 3, 10)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.17); // 0.34 chance of iron_pickaxe OR iron_sword
        loot_generator.generateNWeaponsWithProbability(1, 0.17); // 0.34 chance split between tool/weapon
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/food_low"}]
loot.modifiers.register(
    "incendium_castle_barrel_food_low",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/food_low>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 5, 1, 6),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 5, 1, 6),
            new WeightedPoolItem(<item:minecraft:carrot>, 2, 1, 6),
            new WeightedPoolItem(<item:minecraft:potato>, 2, 1, 6),
            new WeightedPoolItem(<item:minecraft:apple>, 5, 1, 6)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 1, 1, 4),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 4, 3, 7),
            new WeightedPoolItem(<item:minecraft:porkchop>, 5, 3, 10)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/generic"}]
loot.modifiers.register(
    "incendium_castle_barrel_generic",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/generic>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (tools/weapons extracted)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 6, 10, 20),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 2, 2),
            new WeightedPoolItem(<item:minecraft:saddle>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 16, 3, 5),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 10, 8, 17),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1)
        ]);

        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 1, 1, 5),
            new WeightedPoolItem(<item:minecraft:glowstone>, 1, 3, 6),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:soul_sand>, 1, 2, 7),
            new WeightedPoolItem(<item:minecraft:iron_block>, 1, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 2, 27),
            new WeightedPoolItem(<item:minecraft:leather>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 1, 10, 24),
            new WeightedPoolItem(<item:minecraft:string>, 1, 3, 8),
            new WeightedPoolItem(<item:minecraft:porkchop>, 1, 2, 5),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 1, 2, 5)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(1, 0.28); // diamond_shovel + diamond_pickaxe: 27/98
        loot_generator.generateNWeaponsWithProbability(1, 0.37); // crossbow from pool1 + iron_sword from pool2
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/generic_big"}]
loot.modifiers.register(
    "incendium_castle_barrel_generic_big",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/generic_big>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 1, 3, 5)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:porkchop>, 2, 6, 16)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 1, 6),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 1, 1, 12)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(3, 0.75); // 3 rolls with 75% weapon chance each
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/greenhouse_secret"}]
loot.modifiers.register(
    "incendium_castle_barrel_greenhouse_secret",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/greenhouse_secret>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (wood materials only)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_stem>, 10, 12, 48),
            new WeightedPoolItem(<item:minecraft:stripped_crimson_stem>, 5, 6, 48),
            new WeightedPoolItem(<item:minecraft:warped_stem>, 8, 5, 32),
            new WeightedPoolItem(<item:minecraft:stripped_warped_stem>, 4, 5, 32),
            new WeightedPoolItem(<item:minecraft:crimson_hyphae>, 2, 6, 37),
            new WeightedPoolItem(<item:minecraft:warped_hyphae>, 2, 6, 37)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_planks>, 10, 10, 20),
            new WeightedPoolItem(<item:minecraft:warped_planks>, 10, 10, 20),
            new WeightedPoolItem(<item:minecraft:crimson_stairs>, 5, 5, 8),
            new WeightedPoolItem(<item:minecraft:warped_stairs>, 5, 5, 8),
            new WeightedPoolItem(<item:minecraft:crimson_slab>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:warped_slab>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:warped_trapdoor>, 2, 10, 15),
            new WeightedPoolItem(<item:minecraft:crimson_trapdoor>, 5, 10, 15)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 2, 5)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(2, 1.0); // netherite_axe + diamond_axe (2 rolls, 100% tools)
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/ice"}]
loot.modifiers.register(
    "incendium_castle_barrel_ice",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/ice>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 6, 14),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 2, 5, 10),
            new WeightedPoolItem(<item:minecraft:quartz>, 2, 6, 12)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:snow>, 1, 7, 20),
            new WeightedPoolItem(<item:minecraft:snow_block>, 3, 12, 25),
            new WeightedPoolItem(<item:minecraft:snowball>, 5, 10, 18)
        ]);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:blue_ice>, 2, 10, 20),
            new WeightedPoolItem(<item:minecraft:packed_ice>, 3, 20, 35),
            new WeightedPoolItem(<item:minecraft:ice>, 5, 32, 98)
        ]);

        // Generation functions
        for item in stacks
        {
            // chiling blade
            if (item.descriptionId == "item.minecraft.diamond_sword") { loot_context.addLoot(item); }
        }
        //loot_generator.generateNToolsWithProbability(1, 0.5); // 0-1 rolls, 100% tools when rolled
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/library"}]
loot.modifiers.register(
    "incendium_castle_barrel_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/library>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:written_book>.withJsonComponent(<componenttype:minecraft:written_book_content>, {pages: [{raw: "\"§kInvestigations\""}], title: {raw: "§kInvestigations"}, resolved: true, author: "§kThe Ancients"}), 1, 1, 1)
            
        ]);

        loot_generator.performWeightedPool(2, 8, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:compass>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:piglin_banner_pattern>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:netherite_upgrade_smithing_template>, 10, 1, 2)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/library_low"}]
loot.modifiers.register(
    "incendium_castle_barrel_library_low",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/library_low>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(2, 10, 0, [
            new WeightedPoolItem(<item:minecraft:book>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:paper>, 20, 2, 7),
            new WeightedPoolItem(<item:minecraft:compass>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/lumber"}]
loot.modifiers.register(
    "incendium_castle_barrel_lumber",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/lumber>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_stem>, 10, 8, 15),
            new WeightedPoolItem(<item:minecraft:stripped_crimson_stem>, 5, 6, 15),
            new WeightedPoolItem(<item:minecraft:warped_stem>, 8, 5, 15),
            new WeightedPoolItem(<item:minecraft:stripped_warped_stem>, 4, 1, 15),
            new WeightedPoolItem(<item:minecraft:crimson_hyphae>, 2, 6, 15),
            new WeightedPoolItem(<item:minecraft:warped_hyphae>, 2, 6, 15)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:bone_meal>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:bone_block>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone>, 3, 1, 3)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/lumber_big"}]
loot.modifiers.register(
    "incendium_castle_barrel_lumber_big",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/lumber_big>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_stem>, 10, 12, 48),
            new WeightedPoolItem(<item:minecraft:stripped_crimson_stem>, 5, 6, 48),
            new WeightedPoolItem(<item:minecraft:warped_stem>, 8, 5, 32),
            new WeightedPoolItem(<item:minecraft:stripped_warped_stem>, 4, 5, 32),
            new WeightedPoolItem(<item:minecraft:crimson_hyphae>, 2, 6, 37),
            new WeightedPoolItem(<item:minecraft:warped_hyphae>, 2, 6, 37)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:crimson_planks>, 10, 10, 20),
            new WeightedPoolItem(<item:minecraft:warped_planks>, 10, 10, 20),
            new WeightedPoolItem(<item:minecraft:crimson_stairs>, 5, 5, 8),
            new WeightedPoolItem(<item:minecraft:warped_stairs>, 5, 5, 8),
            new WeightedPoolItem(<item:minecraft:crimson_slab>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:warped_slab>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:warped_trapdoor>, 2, 10, 15),
            new WeightedPoolItem(<item:minecraft:crimson_trapdoor>, 5, 10, 15)
        ]);

        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:bone_meal>, 5, 10, 15),
            new WeightedPoolItem(<item:minecraft:bone_block>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:bone>, 3, 1, 3)
        ]);

        // Generation functions
        loot_generator.generateNToolsWithProbability(2, 1.0); // 2 rolls, all tools (netherite_axe, diamond_axe, iron_axe)
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/monument"}]
loot.modifiers.register(
    "incendium_castle_barrel_monument",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/monument>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:sea_lantern>, 1, 6, 25)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:prismarine_bricks>, 1, 40, 128),
            new WeightedPoolItem(<item:minecraft:prismarine>, 1, 40, 128),
            new WeightedPoolItem(<item:minecraft:dark_prismarine>, 1, 40, 128)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 9, 16),
            new WeightedPoolItem(<item:minecraft:gold_block>, 1, 1, 6)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(1, 0.25); // trident with 25% chance
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/nuggets"}]
loot.modifiers.register(
    "incendium_castle_barrel_nuggets",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/nuggets>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1728, 1728)
        ]);

        // Generation functions
        loot_generator.generateMoneyBagWithProbability(5, 1.0); // Massive gold nugget cache

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/pigstep"}]
loot.modifiers.register(
    "incendium_castle_barrel_pigstep",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/pigstep>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(2, 2, 0, [
            new WeightedPoolItem(<item:minecraft:redstone_block>, 1, 2, 4),
            new WeightedPoolItem(<item:minecraft:redstone>, 3, 20, 30),
            new WeightedPoolItem(<item:minecraft:redstone_lamp>, 1, 4, 12),
            new WeightedPoolItem(<item:minecraft:redstone_torch>, 2, 10, 20)
        ]);

        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:note_block>, 2, 8, 14),
            new WeightedPoolItem(<item:minecraft:jukebox>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 2, 5),
            new WeightedPoolItem(<item:minecraft:netherite_upgrade_smithing_template>, 1, 1, 2)
        ]);

        loot_generator.performWeightedPool(1, 4, 11, [
            new WeightedPoolItem(<item:minecraft:music_disc_13>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_cat>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_blocks>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_chirp>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_far>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mall>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_mellohi>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_stal>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_strad>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_ward>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_11>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:music_disc_wait>, 1, 1, 1)
        ]);

        // Generation functions
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/barrel/random"}]
loot.modifiers.register(
    "incendium_castle_barrel_random",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/barrel/random>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 1, 3, 5)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:porkchop>, 2, 6, 16)
        ]);

        loot_generator.performWeightedPool(1, 2, 0, [
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 1, 1, 6),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 1, 1, 12)
        ]);

        // Generation functions
        loot_generator.generateNWeaponsWithProbability(3, 0.75); // 3 rolls with 75% weapon chance each
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// INCENDIUM CASTLE BASE LOOT TABLES TRANSFORMATION
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/blackstone"}]
loot.modifiers.register(
    "incendium_castle_base_blackstone",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/blackstone>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 85, [
            new WeightedPoolItem(<item:minecraft:blackstone>, 30, 20, 50),
            new WeightedPoolItem(<item:minecraft:polished_blackstone>, 25, 15, 40),
            new WeightedPoolItem(<item:minecraft:polished_blackstone_bricks>, 20, 10, 30),
            new WeightedPoolItem(<item:minecraft:chiseled_polished_blackstone>, 15, 5, 20),
            new WeightedPoolItem(<item:minecraft:cracked_polished_blackstone_bricks>, 10, 5, 15)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/brewing"}]
loot.modifiers.register(
    "incendium_castle_base_brewing",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/brewing>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:nether_wart>, 25, 4, 12),
            new WeightedPoolItem(<item:minecraft:blaze_powder>, 20, 2, 8),
            new WeightedPoolItem(<item:minecraft:ghast_tear>, 10, 1, 3),
            new WeightedPoolItem(<item:minecraft:magma_cream>, 15, 2, 6),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 15, 2, 6),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:fermented_spider_eye>, 5, 1, 2)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/gold"}]
loot.modifiers.register(
    "incendium_castle_base_gold",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/gold>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 5, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 40, 4, 10),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 40, 8, 24),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 18, 2, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.2);
        loot_generator.generateNArmorsWithProbability(1, 0.2);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/gold_big"}]
loot.modifiers.register(
    "incendium_castle_base_gold_big",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/gold_big>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bell>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:clock>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:gold_block>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:gold_ore>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:light_weighted_pressure_plate>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:nether_gold_ore>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_nether_gold_ore__excavated_variants__minecraft_basalt>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_nether_gold_ore__excavated_variants__minecraft_blackstone>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_nether_gold_ore__excavated_variants__create_smooth_basalt>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:powered_rail>, 4, 4, 10),
            new WeightedPoolItem(<item:minecraft:deepslate_gold_ore>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_diorite>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_andesite>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_granite>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_sandstone>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_red_sandstone>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_tuff>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_calcite>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_dripstone>, 4, 4, 10),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_smooth_basalt>, 4, 4, 10)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/gold_small"}]
loot.modifiers.register(
    "incendium_castle_base_gold_small",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/gold_small>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 35, 4, 10),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 35, 8, 20),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 25, 2, 6)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.1);
        loot_generator.generateNArmorsWithProbability(1, 0.1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/gold_stackable"}]
loot.modifiers.register(
    "incendium_castle_base_gold_stackable",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/gold_stackable>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:bell>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:clock>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:gold_ingot>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:raw_gold>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:gold_block>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:gold_ore>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:light_weighted_pressure_plate>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:nether_gold_ore>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_nether_gold_ore__excavated_variants__minecraft_basalt>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_nether_gold_ore__excavated_variants__minecraft_blackstone>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_nether_gold_ore__excavated_variants__create_smooth_basalt>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:powered_rail>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:deepslate_gold_ore>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_diorite>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_andesite>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_granite>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_sandstone>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_red_sandstone>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_tuff>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_calcite>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_dripstone>, 4, 1, 6),
            new WeightedPoolItem(<item:excavated_variants:excavated_variants__minecraft_gold_ore__excavated_variants__minecraft_smooth_basalt>, 4, 1, 6)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/head_self"}]
loot.modifiers.register(
    "incendium_castle_base_head_self",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/head_self>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:player_head>, 100, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/random_blocks"}]
loot.modifiers.register(
    "incendium_castle_base_random_blocks",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/random_blocks>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:warped_fungus>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:crimson_roots>, 6, 1, 2),
            new WeightedPoolItem(<item:minecraft:warped_roots>, 6, 1, 2),
            new WeightedPoolItem(<item:minecraft:polished_blackstone_bricks>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:blackstone>, 12, 1, 5),
            new WeightedPoolItem(<item:minecraft:basalt>, 8, 1, 3),
            new WeightedPoolItem(<item:minecraft:chain>, 4, 1, 2),
            new WeightedPoolItem(<item:minecraft:lantern>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:quartz_block>, 6, 1, 3),
            new WeightedPoolItem(<item:minecraft:netherrack>, 10, 2, 6),
            new WeightedPoolItem(<item:minecraft:nether_bricks>, 8, 1, 4),
            new WeightedPoolItem(<item:minecraft:glowstone>, 5, 1, 2),
            new WeightedPoolItem(<item:minecraft:shroomlight>, 3, 1, 1),
            new WeightedPoolItem(<item:minecraft:soul_soil>, 5, 1, 3)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/rare_potion"}]
loot.modifiers.register(
    "incendium_castle_base_rare_potion",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/rare_potion>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNPotionsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/tools"}]
loot.modifiers.register(
    "incendium_castle_base_tools",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/tools>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNToolsWithProbability(1, 0.12);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/tools_armor"}]
loot.modifiers.register(
    "incendium_castle_base_tools_armor",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/tools_armor>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNToolsWithProbability(1, 0.04);
        loot_generator.generateNArmorsWithProbability(1, 0.04);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/unbreaking_efficiency"}]
loot.modifiers.register(
    "incendium_castle_base_unbreaking_efficiency",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/unbreaking_efficiency>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/base/wood"}]
loot.modifiers.register(
    "incendium_castle_base_wood",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/base/wood>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:warped_planks>, 25, 10, 30),
            new WeightedPoolItem(<item:minecraft:crimson_planks>, 25, 10, 30),
            new WeightedPoolItem(<item:minecraft:warped_stem>, 15, 5, 15),
            new WeightedPoolItem(<item:minecraft:crimson_stem>, 15, 5, 15),
            new WeightedPoolItem(<item:minecraft:warped_hyphae>, 10, 3, 10),
            new WeightedPoolItem(<item:minecraft:crimson_hyphae>, 10, 3, 10)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// INCENDIUM CASTLE ADDITIONAL LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/blacksmith/boots"}]
loot.modifiers.register(
    "incendium_castle_blacksmith_boots",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/blacksmith/boots>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/blacksmith/chestplate"}]
loot.modifiers.register(
    "incendium_castle_blacksmith_chestplate",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/blacksmith/chestplate>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/blacksmith/helmet"}]
loot.modifiers.register(
    "incendium_castle_blacksmith_helmet",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/blacksmith/helmet>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/blacksmith/leggings"}]
loot.modifiers.register(
    "incendium_castle_blacksmith_leggings",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/blacksmith/leggings>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.generateNArmorsWithProbability(1, 1.0);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// KING STATUE
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/king_statue"}]
loot.modifiers.register(
    "incendium_castle_king_statue",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/king_statue>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1: Weighted items (tools/weapons moved to generation functions)
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 6, 10, 20),
            new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 1),
            new WeightedPoolItem(<item:minecraft:diamond>, 2, 2, 2),
            new WeightedPoolItem(<item:minecraft:saddle>, 12, 1, 1),
            new WeightedPoolItem(<item:minecraft:gold_block>, 16, 3, 5),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 10, 8, 17),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 2, 1, 1)
        ]);

        // Pool 2: Multiple rolls with various materials
        loot_generator.performWeightedPool(3, 4, 0, [
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 12, 1, 5),
            new WeightedPoolItem(<item:minecraft:glowstone>, 12, 3, 6),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 12, 2, 5),
            new WeightedPoolItem(<item:minecraft:soul_sand>, 12, 2, 7),
            new WeightedPoolItem(<item:minecraft:iron_block>, 12, 1, 2),
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 12, 2, 27),
            new WeightedPoolItem(<item:minecraft:leather>, 12, 1, 3),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 12, 10, 24),
            new WeightedPoolItem(<item:minecraft:string>, 12, 3, 8),
            new WeightedPoolItem(<item:minecraft:porkchop>, 12, 2, 5),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 12, 2, 5)
        ]);

        // Generation functions (extracted from pools)
        loot_generator.generateNToolsWithProbability(1, 0.276); // 27.6% (diamond shovel + pickaxe from pool 1)
        loot_generator.generateNWeaponsWithProbability(1, 0.37); // 8.2% from pool 1 + ~29% from pool 2 (iron sword 1/12 per roll × 3.5 avg rolls)
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(4, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// TOWER BARREL (Secondary Loot)
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/tower_barrel"}]
loot.modifiers.register(
    "incendium_castle_tower_barrel",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/tower_barrel>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools (arrows and rare items)
        loot_generator.performWeightedPool(1, 1, 12, [
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 25, 6, 15),
            new WeightedPoolItem(<item:minecraft:arrow>, 62, 6, 15),
            new WeightedPoolItem(<item:minecraft:enchanted_golden_apple>, 1, 1, 1)
        ]);

        // Generation functions (extracted tools/weapons/armor)
        loot_generator.generateNWeaponsWithProbability(1, 0.62); // 50% iron sword (pool 1) + ~12% bow/crossbow (pool 2)
        loot_generator.generateNToolsWithProbability(1, 0.033); // ~3.3% of gold_unstackable (gold tools)
        loot_generator.generateNArmorsWithProbability(1, 0.067); // ~6.7% of gold_unstackable (gold armor)
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// =============================================================================
// TREASURE QUARTZ
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"incendium:castle/treasure/quartz"}]
loot.modifiers.register(
    "incendium_castle_treasure_quartz",
    LootConditions.only(LootTableIdLootCondition.create(<resource:incendium:castle/treasure/quartz>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "nether_wastes");
        val loot_generator = new LootGenerator(loot_context);

        // Pool 1-3: Guaranteed utility items
        loot_generator.performWeightedPool(1, 1, 50, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 50, 18, 54)
        ]);
        
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:cake>, 100, 1, 1)
        ]);
        
        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:skeleton_skull>, 100, 1, 1)
        ]);

        // Pool 5: 3 rolls of quartz materials (equal weights)
        loot_generator.performWeightedPool(3, 3, 0, [
            new WeightedPoolItem(<item:minecraft:quartz>, 25, 32, 96),
            new WeightedPoolItem(<item:minecraft:smooth_quartz>, 25, 16, 34),
            new WeightedPoolItem(<item:minecraft:quartz_block>, 25, 16, 34),
            new WeightedPoolItem(<item:minecraft:nether_quartz_ore>, 25, 20, 30)
        ]);

        // Generation functions (extracted tools)
        loot_generator.generateNToolsWithProbability(1, 0.75); // Diamond pickaxe with Fortune 3, 75% chance
        loot_generator.generateNEssences(1, 1);
        loot_generator.generateArtifact(1);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(3, 0.30);

        return loot_context.loot;
    }
);