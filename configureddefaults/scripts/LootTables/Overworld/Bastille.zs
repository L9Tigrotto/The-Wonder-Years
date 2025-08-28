import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// =============================================================================
// TAKESAPILLAGE BASTILLE LOOT TABLES
// =============================================================================

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"takesapillage:chests/bastille/center"}]
loot.modifiers.register(
    "takesapillage_chests_bastille_center",
    LootConditions.only(LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/center>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(0, 1, 0, [
            new WeightedPoolItem(<item:takesapillage:music_disc_bastille_blues>, 1, 1, 1)
        ]);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:wheat>, 7, 3, 5),
            new WeightedPoolItem(<item:minecraft:potato>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:carrot>, 5, 3, 5)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:dark_oak_log>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:arrow>, 4, 2, 7),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 1, 3)
        ]);

        loot_generator.generateNEssences(2, 8);
        loot_generator.generateArtifact(0.20);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"takesapillage:chests/bastille/church"}]
loot.modifiers.register(
    "takesapillage_chests_bastille_church",
    LootConditions.only(LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/church>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:glowstone_dust>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:sugar>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:redstone>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:spider_eye>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:glass_bottle>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:gunpowder>, 1, 0, 2),
            new WeightedPoolItem(<item:minecraft:stick>, 2, 0, 2)
        ]);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:glistering_melon_slice>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 5, 3, 5)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:tinted_glass>, 3, 3, 5),
            new WeightedPoolItem(<item:minecraft:cobbled_deepslate>, 5, 4, 7)
        ]);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:arrow>, 4, 2, 7),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 3, 1, 3)
        ]);

        loot_generator.performWeightedPool(1, 1, 0, [
            new WeightedPoolItem(<item:minecraft:totem_of_undying>, 1, 1, 1),
            new WeightedPoolItem(<item:takesapillage:music_disc_bastille_blues>, 1, 1, 1),
            new WeightedPoolItem(<item:takesapillage:ravager_horn>, 1, 1, 1)
        ]);

        loot_generator.generateNPotionsWithProbability(2, 0.85);
        loot_generator.generateNEssences(2, 6);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"takesapillage:chests/bastille/farm"}]
loot.modifiers.register(
    "takesapillage_chests_bastille_farm",
    LootConditions.only(LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/farm>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:bone_meal>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:bucket>, 2, 1, 1),
            new WeightedPoolItem(<item:minecraft:water_bucket>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:wheat>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:bread>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:composter>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 4),
            new WeightedPoolItem(<item:minecraft:wheat_seeds>, 5, 6, 12)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.40);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"takesapillage:chests/bastille/gallows"}]
loot.modifiers.register(
    "takesapillage_chests_bastille_gallows",
    LootConditions.only(LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/gallows>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:lead>, 7, 3, 5),
            new WeightedPoolItem(<item:minecraft:slime_ball>, 5, 2, 5),
            new WeightedPoolItem(<item:minecraft:stick>, 5, 3, 5)
        ]);

        loot_generator.performWeightedPool(1, 3, 0, [
            new WeightedPoolItem(<item:minecraft:spruce_log>, 1, 2, 3)
        ]);

        loot_generator.performWeightedPool(2, 3, 0, [
            new WeightedPoolItem(<item:minecraft:experience_bottle>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:string>, 4, 1, 6),
            new WeightedPoolItem(<item:minecraft:chain>, 4, 2, 7),
            new WeightedPoolItem(<item:minecraft:tripwire_hook>, 3, 1, 3),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 3, 1, 3),
            new WeightedPoolItem(<item:takesapillage:music_disc_bastille_blues>, 1, 1, 1)
        ]);

        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"takesapillage:chests/bastille/graveyard"}]
loot.modifiers.register(
    "takesapillage_chests_bastille_graveyard",
    LootConditions.only(LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/graveyard>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "overworld", "plains");
        val loot_generator = new LootGenerator(loot_context);

        loot_generator.performWeightedPool(3, 8, 0, [
            new WeightedPoolItem(<item:minecraft:gold_nugget>, 1, 1, 3),
            new WeightedPoolItem(<item:minecraft:bone>, 10, 1, 7),
            new WeightedPoolItem(<item:minecraft:rotten_flesh>, 10, 1, 4),
            new WeightedPoolItem(<item:minecraft:apple>, 10, 1, 5),
            new WeightedPoolItem(<item:minecraft:composter>, 1, 1, 1),
            new WeightedPoolItem(<item:minecraft:lapis_lazuli>, 2, 1, 4),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 5, 6, 12)
        ]);

        loot_generator.generateNToolsWithProbability(1, 0.50);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(1, 0.30);

        return loot_context.loot;
    }
);