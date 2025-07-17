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
		
		// POOL 1: Main treasure pool (4-8 rolls, with 10 empty weight, total weight: 106 + 10 empty weight = 116)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item											chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:diamond>,					// 10.3% chance per roll	62.1% chance per pool
			<item:minecraft:gold_ingot>,				// 17.2% chance per roll	103.4% chance per pool
			<item:minecraft:iron_ingot>,				// 15.5% chance per roll	93.1% chance per pool
			<item:minecraft:emerald>,					// 4.3% chance per roll		25.9% chance per pool
			<item:minecraft:lapis_lazuli>,				// 15.5% chance per roll	93.1% chance per pool

			<item:minecraft:golden_horse_armor>,		// 4.3% chance per roll		25.9% chance per pool
			<item:minecraft:iron_horse_armor>,			// 8.6% chance per roll		51.7% chance per pool

			<item:minecraft:golden_apple>,				// 13.8% chance per roll	82.8% chance per pool
			<item:minecraft:enchanted_golden_apple>		// 1.7% chance per roll		10.3% chance per pool
		] as IItemStack[];
		
		val pool1_weights = 	[12, 20, 18, 5, 18,		5, 10,		16, 2] as int[];
		val pool1_min_counts =	[1,  5,  3,  1, 10,		1, 1,		1,  1] as int[];
		val pool1_max_counts =	[2,  10, 15, 1, 20,		1, 1,		1,  1] as int[];
		
		performWeightedPool(loot, random, 4, 8, 106, 10, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Useful materials and essences (3-5 rolls, total weight 76)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item														chance per roll				chance per pool
		val pool2_items = [
			<item:minecraft:blaze_powder>,							// 13.2% chance per roll	52.6% chance per pool
			<item:minecraft:ender_pearl>,							// 13.2% chance per roll	52.6% chance per pool

			<item:minecraft:gunpowder>,								// 9.2% chance per roll		36.8% chance per pool
			<item:minecraft:obsidian>,								// 6.6% chance per roll		26.3% chance per pool

			<item:betterenchanting:essence_of_blast_protection>,	// 19.7% chance per roll	78.9% chance per pool
			<item:betterenchanting:essence_of_capacity>,			// 19.7% chance per roll	78.9% chance per pool
			<item:minecraft:dune_armor_trim_smithing_template>,		// 2.6% chance per roll		10.5% chance per pool
			<item:mythicupgrades:topaz_upgrade_smithing_template>,	// 2.6% chance per roll		10.5% chance per pool
			
			<item:horseshoes:iron_horseshoes>,						// 9.2% chance per roll		15.8% chance per pool
			<item:horseshoes:diamond_horseshoes>,					// 3.9% chance per roll		36.8% chance per pool
		] as IItemStack[];
		
		val pool2_weights = 	[10, 10,	7, 5,		15, 15, 2, 2,		7, 3] as int[];
		val pool2_min_counts = 	[1,  1,		1, 1,		1,  1,  1, 1,		1, 1] as int[];
		val pool2_max_counts = 	[1,  1,		5, 3,		1,  1,  1, 1,		1, 1] as int[];
		
		performWeightedPool(loot, random, 3, 5, 76, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// 40% chance for old_eye
		if (random.nextFloat() * 100.0 < 40.0) { loot.add(<item:endrem:old_eye>); }

		// 20% chance for obsidian_skull
		if (random.nextFloat() * 100.0 < 20.0) { loot.add(<item:artifacts:obsidian_skull>); }
		
		// 80% chance with prestige 3 cause 4 chests are spawned in the secret room
		addMoneyBagWithProbability(loot, random, 80, "overworld", 4); 

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
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item														chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:potato>,								// 12.8% chance per roll	83.3% chance per pool
			<item:minecraft:poisonous_potato>,						// 5.1% chance per roll		33.3% chance per pool
			<item:minecraft:wheat>,									// 12.8% chance per roll	83.3% chance per pool
			<item:minecraft:bread>,									// 12.8% chance per roll	83.3% chance per pool
			<item:minecraft:golden_apple>,							// 2.6% chance per roll		16.7% chance per pool
			<item:minecraft:enchanted_golden_apple>,				// 2.6% chance per roll		16.7% chance per pool
			<item:minecraft:dried_kelp>,	 						// 12.8% chance per roll	83.3% chance per pool
			<item:minecraft:honey_bottle>,							// 12.8% chance per roll	83.3% chance per pool
			<item:minecraft:beetroot_soup>,							// 12.8% chance per roll	83.3% chance per pool
			<item:minecraft:melon_seeds>							// 12.8% chance per roll	83.3% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 2, 5, 5, 1, 1, 5, 5, 5, 5] as int[];
		val pool1_min_counts = 	[6, 1, 6, 4, 1, 1, 3, 1, 2, 6] as int[];
		val pool1_max_counts = 	[12, 3, 12, 6, 1, 1, 6, 3, 5, 12] as int[];
		
		performWeightedPool(loot, random, 5, 8, 39, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }

		// Money bag for food storage
		addMoneyBagWithProbability(loot, random, 75, "overworld", 0);

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
		
		// POOL 1: Alchemy ingredients (3-6 rolls, no empty weight, total weight 55)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item														chance per roll				chance per pool
		val pool1_items = [
			generateRandomEffectPotion(random, "overworld"),		// 18.2% chance per roll	81.8% chance per pool
			<item:minecraft:fermented_spider_eye>,					// 18.2% chance per roll	81.8% chance per pool
			<item:minecraft:melon_slice>,							// 18.2% chance per roll	81.8% chance per pool
			<item:minecraft:glistering_melon_slice>,				// 7.3% chance per roll		32.7% chance per pool
			<item:minecraft:rabbit_foot>,							// 1.8% chance per roll		8.2% chance per pool
			<item:minecraft:carrot>,								// 18.2% chance per roll	81.8% chance per pool
			<item:minecraft:golden_carrot>,							// 7.3% chance per roll		32.7% chance per pool
			<item:minecraft:gunpowder>								// 10.9% chance per roll	49.1% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[10, 10, 10, 4, 1, 10, 4, 6] as int[];
		val pool1_min_counts = 	[1,  1,  2,  2, 1, 3,  3, 1] as int[];
		val pool1_max_counts = 	[1,  3,  5,  3, 1, 8,  8, 3] as int[];
		
		performWeightedPool(loot, random, 3, 6, 55, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Basic materials (4-5 rolls, no empty weight, total weight 30)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item														chance per roll				chance per pool
		val pool2_items = [
			<item:minecraft:coal>,      							// 33.3% chance per roll	150.0% chance per pool
			<item:minecraft:stick>,     							// 33.3% chance per roll	150.0% chance per pool
			<item:minecraft:cobweb>     							// 33.3% chance per roll	150.0% chance per pool
		] as IItemStack[];

		val pool2_weights = 	[10, 10, 10] as int[];
		val pool2_min_counts = 	[3,  2,  3] as int[];
		val pool2_max_counts = 	[6,  4,  6] as int[];
		
		performWeightedPool(loot, random, 4, 5, 30, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for lab
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
		
		// POOL 1: Library items (2-11 rolls, no empty weight, total weight 42)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool1_items = [
			getRandomEssence(random),							// 16.9% chance per roll	109.9% chance per pool
			getRandomEssence(random),							// 16.9% chance per roll	109.9% chance per pool
			getRandomEssence(random),							// 16.9% chance per roll	109.9% chance per pool
			<item:minecraft:paper>,								// 28.2% chance per roll	183.3% chance per pool
			<item:minecraft:map>,								// 14.1% chance per roll	91.5% chance per pool
			<item:minecraft:compass>							// 7.0% chance per roll		45.8% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[12, 12, 12, 20, 10, 5] as int[];
		val pool1_min_counts = 	[1,  1,  1,  1,  1,  1] as int[];
		val pool1_max_counts = 	[1,  1,  1,  1,  1,  1] as int[];
		
		performWeightedPool(loot, random, 2, 11, 71, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// Essence chance
		if (random.nextFloat() * 100.0 < 50.0) { loot.add(<item:betterenchanting:essence_of_capacity>); }
		
		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for library
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
		
		// POOL 1: Guaranteed cursed golden cursed sword
		loot.add(
			applyRandomApplicableEnchantments(
				applyRandomTier(<item:minecraft:golden_sword>, random, "overworld")
					.withEnchantment(<enchantment:minecraft:vanishing_curse>),
				random, "overworld"));

		// POOL 2: Sand rolls (exactly 4-5 rolls, no empty weight, total weight 1)
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));
		loot.add(<item:minecraft:sand> * random.nextInt(4, 8));

		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for pharaoh hidden
		addMoneyBagWithProbability(loot, random, 100, "overworld", 5);
		
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
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:terracotta>,						// 14.3% chance per roll	78.6% chance per pool
			<item:minecraft:dirt>,								// 14.3% chance per roll	78.6% chance per pool
			<item:minecraft:emerald>,							// 14.3% chance per roll	78.6% chance per pool
			<item:minecraft:potato>,							// 14.3% chance per roll	78.6% chance per pool
			<item:minecraft:wheat>,								// 14.3% chance per roll	78.6% chance per pool
			<item:minecraft:gunpowder>,							// 14.3% chance per roll	78.6% chance per pool
			<item:minecraft:melon_seeds>						// 14.3% chance per roll	78.6% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 5, 5, 5, 5, 5] as int[];
		val pool1_min_counts = 	[6, 6, 2, 6, 6, 4, 6] as int[];
		val pool1_max_counts = 	[12, 12, 3, 12, 12, 6, 12] as int[];
		
		performWeightedPool(loot, random, 4, 7, 35, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// Hat bags chance
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
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:emerald>,   						// 50.0% chance per roll	100.0% chance per pool
			<item:minecraft:gold_ingot> 						// 50.0% chance per roll	100.0% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[10, 10] as int[];
		val pool1_min_counts = 	[5, 2] as int[];
		val pool1_max_counts = 	[20, 7] as int[];
		
		performWeightedPool(loot, random, 1, 3, 20, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for statue (prestige 2 - decorative treasure)
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
		
		// POOL 1: Storage pool (2-5 rolls, no empty weight, total weight 285)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:sand>,								// 18.9% chance per roll	66.0% chance per pool
			<item:minecraft:emerald>,							// 3.8% chance per roll		13.2% chance per pool
			<item:minecraft:lapis_lazuli>,						// 3.8% chance per roll		13.2% chance per pool
			<item:minecraft:weathered_copper>,					// 3.8% chance per roll		13.2% chance per pool
			<item:minecraft:oxidized_copper>,					// 3.8% chance per roll		13.2% chance per pool
			<item:minecraft:gunpowder>,							// 18.9% chance per roll	66.0% chance per pool
			<item:minecraft:bone>,								// 18.9% chance per roll	66.0% chance per pool
			<item:minecraft:string>,							// 18.9% chance per roll	66.0% chance per pool
			<item:minecraft:rotten_flesh>,						// 18.9% chance per roll	66.0% chance per pool
			<item:minecraft:golden_apple>,						// 3.8% chance per roll		13.2% chance per pool
			<item:minecraft:saddle>,							// 3.8% chance per roll		13.2% chance per pool
			<item:minecraft:golden_horse_armor>					// 5.7% chance per roll		19.8% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[50, 10, 10, 10, 10, 50, 50, 50, 50, 10, 10, 15] as int[];
		val pool1_min_counts = 	[4, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1] as int[];
		val pool1_max_counts = 	[8, 2, 4, 3, 3, 6, 5, 4, 4, 1, 1, 1] as int[];
		
		performWeightedPool(loot, random, 2, 5, 275, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// Essence chance
		if (random.nextFloat() * 100.0 < 50.0) { loot.add(<item:betterenchanting:essence_of_foraging>); }
		
		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for storage (prestige 2 - general storage)
		addMoneyBagWithProbability(loot, random, 75, "overworld", 2);
		
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
		
		// POOL 1: Treasure items (1-4 rolls, with 10 empty weight, total weight 40)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:gold_ingot>,						// 10.0% chance per roll	25.0% chance per pool
			<item:minecraft:emerald>,							// 10.0% chance per roll	25.0% chance per pool
			<item:minecraft:saddle>,							// 10.0% chance per roll	25.0% chance per pool
			<item:minecraft:cobweb>								// 30.0% chance per roll	75.0% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 5, 15] as int[];
		val pool1_min_counts = 	[2, 1, 1, 1] as int[];
		val pool1_max_counts = 	[7, 3, 1, 1] as int[];
		
		performWeightedPool(loot, random, 1, 4, 40, 10, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Decay items (exactly 4-5 rolls, no empty weight, total weight 50)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool2_items = [
			<item:minecraft:bone>,								// 30.0% chance per roll	135.0% chance per pool
			<item:minecraft:bone_meal>,							// 30.0% chance per roll	135.0% chance per pool
			<item:minecraft:gunpowder>,							// 10.0% chance per roll	45.0% chance per pool
			<item:minecraft:rotten_flesh>,						// 10.0% chance per roll	45.0% chance per pool
			<item:minecraft:string>,							// 10.0% chance per roll	45.0% chance per pool
			<item:minecraft:sand>								// 10.0% chance per roll	45.0% chance per pool
		] as IItemStack[];

		val pool2_weights = 	[15, 15, 5, 5, 5, 5] as int[];
		val pool2_min_counts = 	[1, 2, 1, 1, 1, 1] as int[];
		val pool2_max_counts = 	[4, 4, 4, 4, 4, 8] as int[];
		
		performWeightedPool(loot, random, 4, 5, 50, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for tomb (prestige 1 - basic burial)
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
		
		// POOL 1: Premium pharaoh treasure (3-5 rolls, no empty weight, total weight 30)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:gold_ingot>,						// 16.67% chance per roll	66.67% chance per pool
			getRandomEssence(random),							// 16.67% chance per roll	66.67% chance per pool
			<item:minecraft:emerald>,							// 16.67% chance per roll	66.67% chance per pool
			<item:minecraft:diamond>,							// 16.67% chance per roll	66.67% chance per pool
			<item:minecraft:enchanted_golden_apple>,			// 16.67% chance per roll	66.67% chance per pool
			<item:minecraft:diamond_horse_armor>				// 16.67% chance per roll	66.67% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 5, 5, 5, 5] as int[];
		val pool1_min_counts = 	[3, 3, 3, 1, 1, 1] as int[];
		val pool1_max_counts = 	[8, 6, 6, 1, 1, 1] as int[];
		
		performWeightedPool(loot, random, 3, 5, 30, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
		// POOL 2: Same decay items as regular tomb (exactly 4-5 rolls, no empty weight, total weight 50)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool2_items = [
			<item:minecraft:bone>,								// 30.0% chance per roll	135.0% chance per pool
			<item:minecraft:bone_meal>,							// 30.0% chance per roll	135.0% chance per pool
			<item:minecraft:gunpowder>,							// 10.0% chance per roll	45.0% chance per pool
			<item:minecraft:rotten_flesh>,						// 10.0% chance per roll	45.0% chance per pool
			<item:minecraft:string>,							// 10.0% chance per roll	45.0% chance per pool
			<item:minecraft:sand>								// 10.0% chance per roll	45.0% chance per pool
		] as IItemStack[];

		val pool2_weights = 	[15, 15, 5, 5, 5, 5] as int[];
		val pool2_min_counts = 	[1, 2, 1, 1, 1, 1] as int[];
		val pool2_max_counts = 	[4, 4, 4, 4, 4, 8] as int[];
		
		performWeightedPool(loot, random, 4, 5, 50, 0, pool2_items, pool2_weights, pool2_min_counts, pool2_max_counts);
		
		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for tomb pharaoh (prestige 3 - premium burial)
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
		
		// POOL 1: Wardrobe pool (3-7 rolls, no empty weight, total weight 28)
		// chance per roll = weight / total weight
		// chance per pool = chance per roll * (min rolls + max rolls) / 2
		// item													chance per roll				chance per pool
		val pool1_items = [
			<item:minecraft:yellow_wool>,						// 17.9% chance per roll	89.3% chance per pool
			<item:minecraft:blue_wool>,							// 17.9% chance per roll	89.3% chance per pool
			<item:minecraft:leather>,							// 17.9% chance per roll	89.3% chance per pool
			<item:minecraft:orange_dye>,						// 7.1% chance per roll		35.7% chance per pool
			<item:minecraft:yellow_dye>,						// 7.1% chance per roll		35.7% chance per pool
			<item:minecraft:blue_dye>,							// 7.1% chance per roll		35.7% chance per pool
			<item:minecraft:green_dye>,							// 7.1% chance per roll		35.7% chance per pool
			<item:minecraft:feather>							// 17.9% chance per roll	89.3% chance per pool
		] as IItemStack[];

		val pool1_weights = 	[5, 5, 5, 2, 2, 2, 2, 5] as int[];
		val pool1_min_counts = 	[3, 3, 3, 2, 3, 3, 3, 4] as int[];
		val pool1_max_counts = 	[6, 6, 6, 6, 6, 6, 6, 6] as int[];

		performWeightedPool(loot, random, 3, 7, 28, 0, pool1_items, pool1_weights, pool1_min_counts, pool1_max_counts);
		
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

		// Hat bags chance
		if (random.nextFloat() * 100.0 < 25.0) { loot.add(<item:simplehats:hatbag_common>); }
		if (random.nextFloat() * 100.0 < 15.0) { loot.add(<item:simplehats:hatbag_uncommon>); }
		
		// Money bag for wardrobe (prestige 2 - clothing storage)
		addMoneyBagWithProbability(loot, random, 70, "overworld", 2);
		
		return loot;
	}
);