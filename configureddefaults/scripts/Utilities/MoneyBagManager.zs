import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

import stdlib.List;

/**
 * Adds a money bag to loot with specified probability, containing coins based on dimension and prestige.
 * 
 * Money bag amounts are balanced around expensive villager trades:
 * - Biome/Structure Compass Finders ~ 50 gold
 * - Unique Weapons (endgame) ~ 100 gold
 * 
 * Progression philosophy:
 * - Overworld: Base amounts, requires 5-8 P5 chests for compass
 * - Nether: ~2-3x overworld, requires 3-6 P5 chests for compass  
 * - End: ~4-5x overworld, requires 2-3 P5 chests for compass or 3-7 for unique weapon
 * 
 * @param loot The loot list to add the money bag to
 * @param random Random source for generation
 * @param probability Chance (0-100) to add money bag
 * @param dimension "overworld", "nether", or "end"
 * @param prestige Room prestige level (0-5, where 0=common room, 5=secret room)
 */
public function addMoneyBagWithProbability(
	loot as List<IItemStack>, random as RandomSource,
	probability as float, dimension as string,
	prestige as int) as void
{
	// Check if money bag should be added based on probability
	if (random.nextFloat() * 100.0 > probability) { return; }

	 // Clamp prestige to valid range
	if (prestige < 0) { prestige = 0; }
	if (prestige > 5) { prestige = 5; }
	
	// Money value encoding: GGSSBB (gold * 10000 + silver * 100 + bronze)
	// eg: 2 gold, 15 silver, 50 bronze = 2 * 10000 + 15 * 100 + 50 = 021550
	var min_value = 0;  var max_value = 0;

	if (dimension == "overworld")
	{
		if (prestige == 0) 		{ min_value = 10;		max_value = 15; }		// 10		bronze - 15		bronze
		else if (prestige == 1) { min_value = 15;		max_value = 25; }		// 15		bronze - 25		bronze
		else if (prestige == 2) { min_value = 25;		max_value = 45; }		// 25		bronze - 45		bronze
		else if (prestige == 3) { min_value = 45;		max_value = 75; }		// 45		bronze - 75		bronze
		else if (prestige == 4) { min_value = 75;		max_value = 115; }		// 75		bronze - 1.15	silver
		else if (prestige == 5) { min_value = 115;		max_value = 165; }		// 1.15		silver - 1.65	silver
	}
	else if (dimension == "nether")
	{
		if (prestige == 0) 		{ min_value = 200;		max_value = 700; }		// 2		silver - 7		silver
		else if (prestige == 1) { min_value = 1200;		max_value = 2000; }		// 12		silver - 20		silver
		else if (prestige == 2) { min_value = 2000;		max_value = 3000; }		// 20		silver - 30		silver
		else if (prestige == 3) { min_value = 3000;		max_value = 5000; }		// 30		silver - 50		silver
		else if (prestige == 4) { min_value = 5000;		max_value = 8000; }		// 50		silver - 80		silver
		else if (prestige == 5) { min_value = 8000;		max_value = 12000; }	// 80		silver - 1.20	gold
	}
	else if (dimension == "end")
	{
		if (prestige == 0) 		{ min_value = 200;		max_value = 700; }		// 1		gold - 1.5		gold
		else if (prestige == 1) { min_value = 1200;		max_value = 2000; }		// 1.5		gold - 2.5		gold
		else if (prestige == 2) { min_value = 2000;		max_value = 3000; }		// 2.5		gold - 4		gold
		else if (prestige == 3) { min_value = 3000;		max_value = 5000; }		// 4		gold - 6		gold
		else if (prestige == 4) { min_value = 5000;		max_value = 8000; }		// 6		gold - 8.5		gold
		else if (prestige == 5) { min_value = 8000;		max_value = 12000; }	// 8.5		gold - 12		gold
	}
	else 
	{
		println("[ERROR]: in addMoneyBagWithProbability recived '" + dimension + "' dimension. not supported.");
		return;
	}
	
	// Generate random value within range
	var generated_value = random.nextInt(min_value, max_value + 1);

	// Decode money value back into individual coin types
	val bronze_coin = generated_value % 100;
	generated_value = (generated_value - bronze_coin) / 100;

	val silver_coin = generated_value % 100;
	generated_value = (generated_value - silver_coin) / 100;

	val gold_coin = generated_value;

	// Create money bag with calculated coin amounts
	val money_bag = <item:numismatic-overhaul:money_bag>.withJsonComponent(
		<componenttype:numismatic-overhaul:money_bag>, 
		{gold: gold_coin, silver: silver_coin, bronze: bronze_coin}
	);

	loot.add(money_bag);
}