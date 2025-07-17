import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.table.LootTableManager;

import stdlib.List;

// ===============================================
// YUNG's Better Desert Temples - Custom Loot Functions
// ===============================================

// 0. Secret Room Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"minecraft:chests/desert_pyramid"}]
loot.modifiers.register(
	"desert_pyramid",
	LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/desert_pyramid>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Main treasure pool (4-8 rolls, with 10 empty weight, total weight: 91 + 10 empty weight = 101)
		// chance per roll = weight / total weight  
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 6
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:diamond>,					// 11.9% per roll			52.4% per pool
			<item:minecraft:gold_ingot>,				// 19.8% per roll			72.1% per pool
			<item:minecraft:iron_ingot>,				// 17.8% per roll			68.0% per pool
			<item:minecraft:emerald>,					// 5.0% per roll			26.1% per pool
			<item:minecraft:lapis_lazuli>,				// 17.8% per roll			68.0% per pool

			<item:minecraft:golden_apple>,				// 15.8% per roll			63.4% per pool
			<item:minecraft:enchanted_golden_apple>		// 2.0% per roll			11.3% per pool
		] as IItemStack[];
		
		val pool1_weights = 	[12, 20, 18, 5, 18,		16, 2] as int[];
		val pool1_min_counts =	[1,  3,  4,  1, 7,		1,  1] as int[];
		val pool1_max_counts =	[1,  6,  7,  4, 12,		1,  1] as int[];
		
		performWeightedPool(loot, random, 4, 8, 91, 10, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Useful materials and essences (3-5 rolls, total weight: 32 + 0 empty weight = 32)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 4
		// item											chance per roll				chance per pool
		val pool2_items = [
			<item:minecraft:blaze_powder>,				// 31.3% per roll			76.6% per pool
			<item:minecraft:ender_pearl>,				// 31.3% per roll			76.6% per pool

			<item:minecraft:gunpowder>,					// 21.9% per roll			62.0% per pool
			<item:minecraft:obsidian>					// 15.6% per roll			48.8% per pool
		] as IItemStack[];
		
		val pool2_weights = 	[10, 10,	7, 5] as int[];
		val pool2_min_counts = 	[1,  1,		1, 1] as int[];
		val pool2_max_counts = 	[1,  1,		5, 3] as int[];
		
		performWeightedPool(loot, random, 3, 5, 32, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// 30% chance for old_eye
		if (random.nextFloat() * 100.0 < 30.0) { loot.add(<item:endrem:old_eye>); }

		// 20% chance for obsidian_skull
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(<item:artifacts:obsidian_skull>); }

		// 20% chance for essences
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(<item:betterenchanting:essence_of_blast_protection>); }
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(<item:betterenchanting:essence_of_capacity>); }
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(<item:betterenchanting:essence_of_foraging>); }

		// 20% chance for leather tier horse stuff
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(<item:minecraft:leather_horse_armor>); }

		// 15% chance for iron tier horse stuff
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:minecraft:iron_horse_armor>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:horseshoes:iron_horseshoes>); }

		// 10% chance for gold tier horse stuff
		if (random.nextFloat() * 100.0 < 10.0) { loot.add(<item:minecraft:golden_horse_armor>); }
		if (random.nextFloat() * 100.0 < 10.0) { loot.add(<item:horseshoes:diamond_horseshoes>); }

		// 10% chance for trims
		if (random.nextFloat() * 100.0 < 10.0) { loot.add(<item:minecraft:dune_armor_trim_smithing_template>); }
		if (random.nextFloat() * 100.0 < 10.0) { loot.add(<item:mythicupgrades:topaz_upgrade_smithing_template>); }
		
		// 30% chance with prestige 5 and 70% chance with prestige 2 cause 6 chests are spawned
		addMoneyBagWithProbability(loot, random, 30.0, "overworld", 5); 
		addMoneyBagWithProbability(loot, random, 70.0, "overworld", 2); 

		return loot;
	}
);

// 1. Food Storage Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/food_storage"}]
loot.modifiers.register(
	"betterdeserttemples_chests_food_storage",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/food_storage>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Food storage pool items (5-8 rolls, no empty weight, total weight 39)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 6.5
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:potato>,					// 12.8% per roll			58.5% per pool
			<item:minecraft:poisonous_potato>,			// 5.1% per roll			28.9% per pool
			<item:minecraft:wheat>,						// 12.8% per roll			58.5% per pool
			<item:minecraft:bread>,						// 12.8% per roll			58.5% per pool
			<item:minecraft:golden_apple>,				// 2.6% per roll			15.5% per pool
			<item:minecraft:enchanted_golden_apple>,	// 2.6% per roll			15.5% per pool
			<item:minecraft:dried_kelp>,	 			// 12.8% per roll			58.5% per pool
			<item:minecraft:honey_bottle>,				// 12.8% per roll			58.5% per pool
			<item:minecraft:beetroot_soup>,				// 12.8% per roll			58.5% per pool
			<item:minecraft:melon_seeds>				// 12.8% per roll			58.5% per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 2, 5, 5, 1, 1, 5, 5, 5, 5] as int[];
		val pool1_min_counts = 	[6, 1, 6, 4, 1, 1, 3, 1, 2, 6] as int[];
		val pool1_max_counts = 	[12, 3, 12, 6, 1, 1, 6, 3, 5, 12] as int[];
		
		performWeightedPool(loot, random, 5, 8, 39, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// 20% chance for essences
		if (random.nextFloat() * 100.0 < 50.0) { loot.add(<item:betterenchanting:essence_of_foraging>); }

		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }

		// 75% chance with prestige 0
		addMoneyBagWithProbability(loot, random, 75.0, "overworld", 0);

		return loot;
	}
);

// 2. Lab Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/lab"}]
loot.modifiers.register(
	"betterdeserttemples_chests_lab",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/lab>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Alchemy ingredients (3-6 rolls, no empty weight, total weight 45)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 4.5
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:fermented_spider_eye>,		// 22.2% per roll			66.4% per pool
			<item:minecraft:melon_slice>,				// 22.2% per roll			66.4% per pool
			<item:minecraft:glistering_melon_slice>,	// 8.9% per roll			33.9% per pool
			<item:minecraft:rabbit_foot>,				// 2.2% per roll			9.6% per pool
			<item:minecraft:carrot>,					// 22.2% per roll			66.4% per pool
			<item:minecraft:golden_carrot>,				// 8.9% per roll			33.9% per pool
			<item:minecraft:gunpowder>					// 13.3% per roll			46.8% per pool
		] as IItemStack[];

		val pool1_weights = 	[10, 10, 4, 1, 10, 4, 6] as int[];
		val pool1_min_counts = 	[1,  2,  2, 1, 3,  3, 1] as int[];
		val pool1_max_counts = 	[3,  5,  3, 1, 8,  8, 3] as int[];
		
		performWeightedPool(loot, random, 3, 6, 45, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Basic materials (4-5 rolls, no empty weight, total weight 30)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 4.5
		// item											chance per roll				chance per pool
		val pool2_items = [
			<item:minecraft:coal>,      				// 33.3% per roll			83.5% per pool
			<item:minecraft:stick>,     				// 33.3% per roll			83.5% per pool
			<item:minecraft:cobweb>     				// 33.3% per roll			83.5% per pool
		] as IItemStack[];

		val pool2_weights = 	[10, 10, 10] as int[];
		val pool2_min_counts = 	[3,  2,  3] as int[];
		val pool2_max_counts = 	[6,  4,  6] as int[];
		
		performWeightedPool(loot, random, 4, 5, 30, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// 60% chance for a random potion
		if (random.nextFloat() * 100.0 < 60.0) { loot.add(generateRandomEffectPotion(random, "overworld")); }
		if (random.nextFloat() * 100.0 < 60.0) { loot.add(generateRandomEffectPotion(random, "overworld")); }
		if (random.nextFloat() * 100.0 < 60.0) { loot.add(generateRandomEffectPotion(random, "overworld")); }
		if (random.nextFloat() * 100.0 < 60.0) { loot.add(generateRandomEffectPotion(random, "overworld")); }

		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }

		// 75% chance with prestige 2
		addMoneyBagWithProbability(loot, random, 80, "overworld", 2);
		
		return loot;
	}
);

// 3. Library Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/library"}]
loot.modifiers.register(
	"betterdeserttemples_chests_library",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/library>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Library items (2-10 rolls, no empty weight, total weight 42)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 6
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:paper>,						// 47.6% per roll			93.6% per pool
			<item:minecraft:map>,						// 2.4% per roll			13.3% per pool
			<item:minecraft:compass>,					// 2.4% per roll			13.3% per pool
			<item:minecraft:book>						// 47.6% per roll			93.6% per pool
		] as IItemStack[];

		val pool1_weights = 	[20, 1, 1, 20] as int[];
		val pool1_min_counts = 	[2,  1, 1, 1] as int[];
		val pool1_max_counts = 	[7,  1, 1, 3] as int[];
		
		performWeightedPool(loot, random, 2, 11, 42, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// 20% chance for essences
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(getRandomEssence(random)); }
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(getRandomEssence(random)); }
		
		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// 70% chance with prestige 2
		addMoneyBagWithProbability(loot, random, 75, "overworld", 2);

		return loot;
	}
);

// 4. Pharaoh Hidden Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/pharaoh_hidden"}]
loot.modifiers.register(
	"betterdeserttemples_chests_pharaoh_hidden",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/pharaoh_hidden>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// Guaranteed cursed golden cursed sword
		loot.add(
			applyRandomApplicableEnchantments(
				applyRandomTier(<item:minecraft:golden_sword>, random, "overworld")
					.withEnchantment(<enchantment:minecraft:vanishing_curse>),
				random, "overworld"));

		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		
		// 100% chance with prestige 5 and 70% chance with prestige 2
		addMoneyBagWithProbability(loot, random, 100, "overworld", 5);
		addMoneyBagWithProbability(loot, random, 70.0, "overworld", 2);
		
		return loot;
	}
);

// 5. Pot Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/pot"}]
loot.modifiers.register(
	"betterdeserttemples_chests_pot",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/pot>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Pot pool (4-7 rolls, no empty weight, total weight 35)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 5.5
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:terracotta>,				// 14.3% per roll			56.5% per pool
			<item:minecraft:dirt>,						// 14.3% per roll			56.5% per pool
			<item:minecraft:emerald>,					// 14.3% per roll			56.5% per pool
			<item:minecraft:potato>,					// 14.3% per roll			56.5% per pool
			<item:minecraft:wheat>,						// 14.3% per roll			56.5% per pool
			<item:minecraft:gunpowder>,					// 14.3% per roll			56.5% per pool
			<item:minecraft:melon_seeds>				// 14.3% per roll			56.5% per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 5, 5, 5, 5, 5] as int[];
		val pool1_min_counts = 	[6, 6, 2, 6, 6, 4, 6] as int[];
		val pool1_max_counts = 	[12, 12, 3, 12, 12, 6, 12] as int[];
		
		performWeightedPool(loot, random, 4, 7, 35, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for pot
		addMoneyBagWithProbability(loot, random, 60, "overworld", 1);
		
		return loot;
	}
);

// 6. Statue Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/statue"}]
loot.modifiers.register(
	"betterdeserttemples_chests_statue",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/statue>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Statue pool (1-3 rolls, no empty weight, total weight 20)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 2
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:emerald>,   				// 50.0% per roll			70.8% per pool
			<item:minecraft:gold_ingot> 				// 50.0% per roll			70.8% per pool
		] as IItemStack[];

		val pool1_weights = 	[10, 10] as int[];
		val pool1_min_counts = 	[5, 2] as int[];
		val pool1_max_counts = 	[20, 7] as int[];
		
		performWeightedPool(loot, random, 1, 3, 20, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// 70% chance with prestige 2
		addMoneyBagWithProbability(loot, random, 70, "overworld", 2);
		
		return loot;
	}
);

// 7. Storage Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/storage"}]
loot.modifiers.register(
	"betterdeserttemples_chests_storage",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/storage>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Storage pool (3-6 rolls, no empty weight, total weight 500)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 4.5
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:sand>,						// 10.0% per roll			37.3% per pool
			<item:minecraft:weathered_copper>,			// 2.0% per roll			8.7% per pool
			<item:minecraft:oxidized_copper>,			// 2.0% per roll			8.7% per pool
			<item:minecraft:gunpowder>,					// 10.0% per roll			37.3% per pool
			<item:minecraft:bone>,						// 10.0% per roll			37.3% per pool
			<item:minecraft:string>,					// 10.0% per roll			37.3% per pool
			<item:minecraft:rotten_flesh>,				// 10.0% per roll			37.3% per pool
			
			<item:minecraft:sandstone>,					// 5.0% per roll			20.5% per pool
			<item:minecraft:sandstone_stairs>,			// 4.0% per roll			16.7% per pool
			<item:minecraft:sandstone_slab>,			// 6.0% per roll			24.1% per pool
			<item:minecraft:sandstone_wall>,			// 3.0% per roll			12.8% per pool
			<item:minecraft:chiseled_sandstone>,		// 2.0% per roll			8.7% per pool
			<item:minecraft:smooth_sandstone>,			// 5.0% per roll			20.5% per pool
			<item:minecraft:smooth_sandstone_stairs>,	// 4.0% per roll			16.7% per pool
			<item:minecraft:smooth_sandstone_slab>,		// 6.0% per roll			24.1% per pool
			<item:minecraft:cut_sandstone>,				// 5.0% per roll			20.5% per pool
			<item:minecraft:cut_sandstone_slab>			// 6.0% per roll			24.1% per pool
		] as IItemStack[];

		val pool1_weights = [50, 10, 10, 50, 50, 50, 50,	25, 20, 30, 15, 10, 25, 20, 30, 25, 30 ] as int[];
		val pool1_min_counts = [4, 2, 2, 2, 2, 1, 1,	2, 2, 4, 2, 1, 2, 2, 4, 2, 4] as int[];
		val pool1_max_counts = [8, 3, 3, 6, 5, 4, 4,	6, 8, 12, 6, 3, 6, 8, 12, 6, 12] as int[];
		
		performWeightedPool(loot, random, 3, 6, 500, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// 20% chance for essences
		if (random.nextFloat() * 100.0 < 50.0) { loot.add(<item:betterenchanting:essence_of_capacity>); }
		
		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// 75% chance with prestige 3
		addMoneyBagWithProbability(loot, random, 75, "overworld", 3);
		
		return loot;
	}
);

// 8. Tomb Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/tomb"}]
loot.modifiers.register(
	"betterdeserttemples_chests_tomb",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/tomb>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Treasure items (1-4 rolls, with 10 empty weight, total weight 35)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 2.5
		// item													chance per roll		chance per pool
		val pool1_items = [
			<item:minecraft:gold_ingot>,						// 14.3% per roll	31.0% per pool
			<item:minecraft:emerald>,							// 14.3% per roll	31.0% per pool
			<item:minecraft:cobweb>								// 42.9% per roll	70.2% per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 15] as int[];
		val pool1_min_counts = 	[2, 1, 1] as int[];
		val pool1_max_counts = 	[7, 3, 1] as int[];
		
		performWeightedPool(loot, random, 1, 4, 25, 10, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Decay items (4-5 rolls, no empty weight, total weight 50)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 4.5
		// item													chance per roll		chance per pool
		val pool2_items = [
			<item:minecraft:bone>,								// 30.0% per roll	79.6% per pool
			<item:minecraft:bone_meal>,							// 30.0% per roll	79.6% per pool
			<item:minecraft:gunpowder>,							// 10.0% per roll	37.7% per pool
			<item:minecraft:rotten_flesh>,						// 10.0% per roll	37.7% per pool
			<item:minecraft:string>,							// 10.0% per roll	37.7% per pool
			<item:minecraft:sand>								// 10.0% per roll	37.7% per pool
		] as IItemStack[];

		val pool2_weights = 	[15, 15, 5, 5, 5, 5] as int[];
		val pool2_min_counts = 	[1, 2, 1, 1, 1, 1] as int[];
		val pool2_max_counts = 	[4, 4, 4, 4, 4, 8] as int[];
		
		performWeightedPool(loot, random, 4, 5, 50, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// 65% chance with prestige 1
		addMoneyBagWithProbability(loot, random, 65, "overworld", 1);

		return loot;
	}
);

// 9. Tomb Pharaoh Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/tomb_pharaoh"}]
loot.modifiers.register(
	"betterdeserttemples_chests_tomb_pharaoh",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/tomb_pharaoh>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Premium pharaoh treasure (3-5 rolls, no empty weight, total weight 20)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 4
		// item													chance per roll		chance per pool
		val pool1_items = [
			<item:minecraft:gold_ingot>,						// 25.0% per roll	67.5% per pool
			<item:minecraft:emerald>,							// 25.0% per roll	67.5% per pool
			<item:minecraft:diamond>,							// 25.0% per roll	67.5% per pool
			<item:minecraft:enchanted_golden_apple>,			// 25.0% per roll	67.5% per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 5, 5] as int[];
		val pool1_min_counts = 	[3, 3, 1, 1] as int[];
		val pool1_max_counts = 	[8, 6, 1, 1] as int[];
		
		performWeightedPool(loot, random, 3, 5, 20, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Same decay items as regular tomb (4-5 rolls, no empty weight, total weight 50)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 4.5
		// item													chance per roll		chance per pool
		val pool2_items = [
			<item:minecraft:bone>,								// 30.0% per roll	79.6% per pool
			<item:minecraft:bone_meal>,							// 30.0% per roll	79.6% per pool
			<item:minecraft:gunpowder>,							// 10.0% per roll	37.7% per pool
			<item:minecraft:rotten_flesh>,						// 10.0% per roll	37.7% per pool
			<item:minecraft:string>,							// 10.0% per roll	37.7% per pool
			<item:minecraft:sand>								// 10.0% per roll	37.7% per pool
		] as IItemStack[];

		val pool2_weights = 	[15, 15, 5, 5, 5, 5] as int[];
		val pool2_min_counts = 	[1, 2, 1, 1, 1, 1] as int[];
		val pool2_max_counts = 	[4, 4, 4, 4, 4, 8] as int[];
		
		performWeightedPool(loot, random, 4, 5, 50, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// 85% chance with prestige 3
		addMoneyBagWithProbability(loot, random, 85, "overworld", 3);
		
		return loot;
	}
);

// 10. Wardrobe Loot Table
// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/wardrobe"}]
loot.modifiers.register(
	"betterdeserttemples_chests_wardrobe",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/wardrobe>)),
	(stacks, context) => {
		val random = context.random;
		var loot = new List<IItemStack>();
		
		// POOL 1: Wardrobe pool (3-7 rolls, no empty weight, total weight 31)
		// chance per roll = weight / total weight
		// chance per pool = 1 - (1 - chance per roll)^expected_rolls, where expected_rolls = (min + max) / 2 = 5
		// item													chance per roll		chance per pool
		val pool1_items = [
			<item:minecraft:yellow_wool>,						// 16.1% per roll	57.2% per pool
			<item:minecraft:blue_wool>,							// 16.1% per roll	57.2% per pool
			<item:minecraft:leather>,							// 16.1% per roll	57.2% per pool
			<item:minecraft:orange_dye>,						// 6.5% per roll	28.0% per pool
			<item:minecraft:yellow_dye>,						// 6.5% per roll	28.0% per pool
			<item:minecraft:blue_dye>,							// 6.5% per roll	28.0% per pool
			<item:minecraft:green_dye>,							// 6.5% per roll	28.0% per pool
			<item:minecraft:feather>,							// 16.1% per roll	57.2% per pool
			<item:minecraft:saddle>								// 9.7% per roll	39.3% per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 5, 2, 2, 2, 2, 5, 3] as int[];
		val pool1_min_counts = 	[2, 2, 2, 1, 1, 1, 1, 2, 1] as int[];
		val pool1_max_counts = 	[6, 6, 4, 3, 3, 3, 3, 5, 4] as int[];

		performWeightedPool(loot, random, 3, 7, 31, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// 10% chance for each armor pieces (helmet, chestplate, leggens and boots)
		// each piece has a random tier and random enchantments
		for i in 0 .. 3 
		{
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:leather_helmet>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:leather_chestplate>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:leather_leggings>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:leather_boots>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:chainmail_helmet>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:chainmail_chestplate>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:chainmail_leggings>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:chainmail_boots>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:golden_helmet>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:golden_chestplate>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:golden_leggings>, random, "overworld"),
					random, "overworld"));
			}
			if (random.nextFloat() * 100.0 < 10.0)
			{
				loot.add(applyRandomApplicableEnchantments(
					applyRandomTier(<item:minecraft:golden_boots>, random, "overworld"),
					random, "overworld"));
			}
		}

		// 20% chance for leather tier horse stuff
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(<item:minecraft:leather_horse_armor>); }

		// 15% chance for iron tier horse stuff
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:minecraft:iron_horse_armor>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:horseshoes:iron_horseshoes>); }

		// 10% chance for gold tier horse stuff
		if (random.nextFloat() * 100.0 < 10.0) { loot.add(<item:minecraft:golden_horse_armor>); }
		if (random.nextFloat() * 100.0 < 10.0) { loot.add(<item:horseshoes:diamond_horseshoes>); }

		// 25% chance for common hat bags and 15% chance for uncommon hat bags
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// 70% chance with prestige 2
		addMoneyBagWithProbability(loot, random, 70, "overworld", 2);
		
		return loot;
	}
);