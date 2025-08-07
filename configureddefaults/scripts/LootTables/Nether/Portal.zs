import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"hopo:chests/portal/dripstone_portal"}]
loot.modifiers.register(
    "hopo_chests_portal_piglin_ruin",
    LootConditions.only(LootTableIdLootCondition.create(<resource:hopo:chests/portal/piglin_ruin>)),
    (stacks, context) => {
        val loot_context = new WonderLootContext(context, "nether", "piglin_territory");
        val loot_generator = new LootGenerator(loot_context);

        // Weighted pools - nether/piglin themed items only
        loot_generator.performWeightedPool(4, 8, 15, [
            new WeightedPoolItem(<item:minecraft:blaze_rod>, 10, 0, 3),
            new WeightedPoolItem(<item:minecraft:diamond>, 7, 2, 5),
            new WeightedPoolItem(<item:minecraft:snout_armor_trim_smithing_template>, 8, 1, 2),
            new WeightedPoolItem(<item:minecraft:chain>, 7, 5, 10),
            new WeightedPoolItem(<item:minecraft:glowstone>, 7, 3, 6),
            new WeightedPoolItem(<item:minecraft:arrow>, 5, 5, 17),
            new WeightedPoolItem(<item:minecraft:porkchop>, 8, 2, 5),
            new WeightedPoolItem(<item:minecraft:cooked_porkchop>, 8, 2, 8),
            new WeightedPoolItem(<item:minecraft:crimson_fungus>, 5, 2, 7),
            new WeightedPoolItem(<item:minecraft:spectral_arrow>, 7, 10, 28),
            new WeightedPoolItem(<item:minecraft:gilded_blackstone>, 5, 8, 12),
            new WeightedPoolItem(<item:minecraft:iron_ingot>, 5, 4, 9),
            new WeightedPoolItem(<item:minecraft:iron_nugget>, 12, 10, 36),
            new WeightedPoolItem(<item:minecraft:ender_pearl>, 12, 1, 3),
            new WeightedPoolItem(<item:minecraft:string>, 20, 3, 9),
            new WeightedPoolItem(<item:minecraft:quartz>, 10, 10, 15),
            new WeightedPoolItem(<item:minecraft:obsidian>, 20, 1, 1),
            new WeightedPoolItem(<item:minecraft:crying_obsidian>, 20, 1, 3),
            new WeightedPoolItem(<item:minecraft:leather>, 15, 2, 4),
            new WeightedPoolItem(<item:minecraft:soul_sand>, 4, 2, 8),
            new WeightedPoolItem(<item:minecraft:nether_brick>, 20, 2, 8),
            new WeightedPoolItem(<item:minecraft:gravel>, 4, 8, 16),
            new WeightedPoolItem(<item:minecraft:blackstone>, 10, 4, 12),
            new WeightedPoolItem(<item:minecraft:ancient_debris>, 10, 1, 1),
            new WeightedPoolItem(<item:minecraft:piglin_banner_pattern>, 7, 1, 1),
            new WeightedPoolItem(<item:minecraft:golden_carrot>, 12, 3, 15),
            new WeightedPoolItem(<item:minecraft:golden_apple>, 12, 1, 5),
            new WeightedPoolItem(<item:minecraft:wither_skeleton_skull>, 6, 1, 1),
            new WeightedPoolItem(<item:minecraft:fire_charge>, 10, 5, 10),
            new WeightedPoolItem(<item:minecraft:netherite_upgrade_smithing_template>, 5, 1, 1)
        ]);

        // Generation functions - nether appropriate rates with high-tier equipment
        loot_generator.generateNToolsWithProbability(1, 0.033); // 12/369 weight proportion (3 tools: axe(4) + pickaxe(4) + shovel(4))
        loot_generator.generateNWeaponsWithProbability(1, 0.024); // 9/369 weight proportion (2 weapons: sword(4) + crossbow(5))
        loot_generator.generateNArmorsWithProbability(1, 0.087); // 32/369 weight proportion (5 armor pieces)
        loot_generator.generateNPotionsWithProbability(1, 0.054); // 20/369 weight proportion (3 potions: fire_res(4) + splash_fire_res(4) + water(12))
        loot_generator.generateNEssences(2, 15);
        loot_generator.generateArtifact(15);
        loot_generator.generateHatBagWithProbability(0.30);
        loot_generator.generateMoneyBagWithProbability(2, 0.30);

        return loot_context.loot;
    }
);