import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

import stdlib.List;

public function addRandomGearWithProbability(loot as List<IItemStack>, random as RandomSource, probability as float, dimension as string) as void
{
	if (random.nextFloat() > probability) { return; }

	val generate_tool = random.nextFloat() >= 0.5;
	var item = <item:minecraft:air> as IItemStack;
	
	if (generate_tool) { item = getRandomTool(random, dimension); }
	else { item = getRandomArmor(random, dimension); }

	if (item != <item:minecraft:air>) { loot.add(item); }
}

public function addSpecificGearWithProbability(loot as List<IItemStack>, item as IItemStack, random as RandomSource, probability as float, dimension as string) as void
{
	if (random.nextFloat() > probability) { return; }

	item = applyRandomTier(item, random, dimension);
	item = applyRandomApplicableEnchantments(item, random, dimension);

	if (<tag:item:minecraft:trimmable_armor>.contains(item)) { item = applyRandomTrim(random, item); }

	loot.add(item);
}

public function getRandomTool(random as RandomSource, dimension as string) as IItemStack
{
	if (dimension != "overworld" && dimension != "nether" && dimension != "end")
	{
		println("[ERROR]: in getRandomItem recived '" + dimension + "' dimension. not supported.");
		return <item:minecraft:air>;
	}

	var items = [] as IItemStack[];

	if (dimension == "overworld")
	{
		items = [
			<item:minecraft:wooden_shovel>,
			<item:minecraft:wooden_pickaxe>,
			<item:minecraft:wooden_axe>,
			<item:minecraft:wooden_hoe>,
			<item:minecraft:wooden_sword>,
			<item:minecraft:stone_shovel>,
			<item:minecraft:stone_pickaxe>,
			<item:minecraft:stone_axe>,
			<item:minecraft:stone_hoe>,
			<item:minecraft:stone_sword>,
			<item:minecraft:golden_shovel>,
			<item:minecraft:golden_pickaxe>,
			<item:minecraft:golden_axe>,
			<item:minecraft:golden_hoe>,
			<item:minecraft:golden_sword>,
			<item:minecraft:turtle_helmet>,
			<item:minecraft:bow>,
			<item:minecraft:crossbow>,
			<item:minecraft:shield>
		];
	}
	else if (dimension == "nether")
	{
		items = [
			<item:minecraft:iron_shovel>,
			<item:minecraft:iron_pickaxe>,
			<item:minecraft:iron_axe>,
			<item:minecraft:iron_hoe>,
			<item:minecraft:iron_sword>,
			<item:minecraft:diamond_shovel>,
			<item:minecraft:diamond_pickaxe>,
			<item:minecraft:diamond_axe>,
			<item:minecraft:diamond_hoe>,
			<item:minecraft:diamond_sword>,
			<item:minecraft:bow>,
			<item:minecraft:crossbow>,
			<item:minecraft:trident>,
			<item:minecraft:mace>
		];
	}
	else 
	{
		items = [
			<item:minecraft:netherite_shovel>,
			<item:minecraft:netherite_pickaxe>,
			<item:minecraft:netherite_axe>,
			<item:minecraft:netherite_hoe>,
			<item:minecraft:netherite_sword>,
			<item:mythicupgrades:ruby_shovel>,
			<item:mythicupgrades:ruby_pickaxe>,
			<item:mythicupgrades:ruby_axe>,
			<item:mythicupgrades:ruby_hoe>,
			<item:mythicupgrades:ruby_sword>,
			<item:mythicupgrades:topaz_shovel>,
			<item:mythicupgrades:topaz_pickaxe>,
			<item:mythicupgrades:topaz_axe>,
			<item:mythicupgrades:topaz_hoe>,
			<item:mythicupgrades:topaz_sword>,
			<item:mythicupgrades:peridot_shovel>,
			<item:mythicupgrades:peridot_pickaxe>,
			<item:mythicupgrades:peridot_axe>,
			<item:mythicupgrades:peridot_hoe>,
			<item:mythicupgrades:peridot_sword>,
			<item:mythicupgrades:jade_shovel>,
			<item:mythicupgrades:jade_pickaxe>,
			<item:mythicupgrades:jade_axe>,
			<item:mythicupgrades:jade_hoe>,
			<item:mythicupgrades:jade_sword>,
			<item:mythicupgrades:aquamarine_shovel>,
			<item:mythicupgrades:aquamarine_pickaxe>,
			<item:mythicupgrades:aquamarine_axe>,
			<item:mythicupgrades:aquamarine_hoe>,
			<item:mythicupgrades:aquamarine_sword>,
			<item:mythicupgrades:sapphire_shovel>,
			<item:mythicupgrades:sapphire_pickaxe>,
			<item:mythicupgrades:sapphire_axe>,
			<item:mythicupgrades:sapphire_hoe>,
			<item:mythicupgrades:sapphire_sword>,
			<item:mythicupgrades:ametrine_shovel>,
			<item:mythicupgrades:ametrine_pickaxe>,
			<item:mythicupgrades:ametrine_axe>,
			<item:mythicupgrades:ametrine_hoe>,
			<item:mythicupgrades:ametrine_sword>,
			<item:minecraft:bow>,
			<item:minecraft:crossbow>
		];
	}

	val random_index = random.nextInt(0, items.length as int);
	var item = items[random_index];

	item = applyRandomTier(item, random, dimension);
	item = applyRandomApplicableEnchantments(item, random, dimension);

	return item;
}

public function getRandomArmor(random as RandomSource, dimension as string) as IItemStack
{
	if (dimension != "overworld" && dimension != "nether" && dimension != "end")
	{
		println("[ERROR]: in getRandomArmor recived '" + dimension + "' dimension. not supported.");
		return <item:minecraft:air>;
	}

	var items = [] as IItemStack[];

	if (dimension == "overworld")
	{
		items = [
			<item:minecraft:leather_helmet>,
			<item:minecraft:leather_chestplate>,
			<item:minecraft:leather_leggings>,
			<item:minecraft:leather_boots>,
			<item:minecraft:chainmail_helmet>,
			<item:minecraft:chainmail_chestplate>,
			<item:minecraft:chainmail_leggings>,
			<item:minecraft:chainmail_boots>,
			<item:minecraft:golden_helmet>,
			<item:minecraft:golden_chestplate>,
			<item:minecraft:golden_leggings>,
			<item:minecraft:golden_boots>,
			<item:minecraft:turtle_helmet>
		];
	}
	else if (dimension == "nether")
	{
		items = [
			<item:minecraft:iron_helmet>,
			<item:minecraft:iron_chestplate>,
			<item:minecraft:iron_leggings>,
			<item:minecraft:iron_boots>,
			<item:minecraft:diamond_helmet>,
			<item:minecraft:diamond_chestplate>,
			<item:minecraft:diamond_leggings>,
			<item:minecraft:diamond_boots>
		];
	}
	else 
	{
		items = [
			<item:minecraft:netherite_helmet>,
			<item:minecraft:netherite_chestplate>,
			<item:minecraft:netherite_leggings>,
			<item:minecraft:netherite_boots>,
			<item:mythicupgrades:ruby_helmet>,
			<item:mythicupgrades:ruby_chestplate>,
			<item:mythicupgrades:ruby_leggings>,
			<item:mythicupgrades:ruby_boots>,
			<item:mythicupgrades:topaz_helmet>,
			<item:mythicupgrades:topaz_chestplate>,
			<item:mythicupgrades:topaz_leggings>,
			<item:mythicupgrades:topaz_boots>,
			<item:mythicupgrades:sapphire_helmet>,
			<item:mythicupgrades:sapphire_chestplate>,
			<item:mythicupgrades:sapphire_leggings>,
			<item:mythicupgrades:sapphire_boots>,
			<item:mythicupgrades:peridot_helmet>,
			<item:mythicupgrades:peridot_chestplate>,
			<item:mythicupgrades:peridot_leggings>,
			<item:mythicupgrades:peridot_boots>,
			<item:mythicupgrades:jade_helmet>,
			<item:mythicupgrades:jade_chestplate>,
			<item:mythicupgrades:jade_leggings>,
			<item:mythicupgrades:jade_boots>,
			<item:mythicupgrades:aquamarine_helmet>,
			<item:mythicupgrades:aquamarine_chestplate>,
			<item:mythicupgrades:aquamarine_leggings>,
			<item:mythicupgrades:aquamarine_boots>,
			<item:mythicupgrades:ametrine_helmet>,
			<item:mythicupgrades:ametrine_chestplate>,
			<item:mythicupgrades:ametrine_leggings>,
			<item:mythicupgrades:ametrine_boots>
		];
	}

	val random_index = random.nextInt(0, items.length as int);
	var item = items[random_index];

	item = applyRandomTier(item, random, dimension);
	item = applyRandomApplicableEnchantments(item, random, dimension);

	// mythicupgrades armors are not trimmable
	if (<tag:item:minecraft:trimmable_armor>.contains(item)) { item = applyRandomTrim(random, item); }
	return item;
}

function applyRandomTrim(random as RandomSource, item as IItemStack) as IItemStack
{
	val colors = [
		"minecraft:emerald",
		"minecraft:lapis",
		"minecraft:diamond",
		"minecraft:redstone",
		"minecraft:amethyst",
		"minecraft:iron",
		"minecraft:copper",
		"minecraft:gold",
		"minecraft:netherite",
		"minecraft:quartz",
	] as string[];

	val patterns = [
		"minecraft:sentry",
		"minecraft:vex",
		"minecraft:wild",
		"minecraft:coast",
		"minecraft:dune",
		"minecraft:wayfinder",
		"minecraft:raiser",
		"minecraft:shaper",
		"minecraft:host",
		"minecraft:want",
		"minecraft:silence",
		"minecraft:tide",
		"minecraft:snout",
		"minecraft:rib",
		"minecraft:eye",
		"minecraft:spire",
		"minecraft:flow",
		"minecraft:bolt",
	] as string[];

	val random_color_index = random.nextInt(0, colors.length as int);
	val random_pattern_index = random.nextInt(0, patterns.length as int);

	return item
		.withJsonComponent(
			<componenttype:minecraft:trim>, 
			{
				material: colors[random_color_index] as string,
				pattern: patterns[random_pattern_index] as string
			}
		);
}