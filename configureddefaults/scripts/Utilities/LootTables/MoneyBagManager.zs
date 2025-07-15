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
    if (random.nextFloat() * 100 > probability) { return; }

     // Clamp prestige to valid range
    if (prestige < 0) { prestige = 0; }
    if (prestige > 5) { prestige = 5; }
    
    // Money value encoding: GGSSBB (gold * 10000 + silver * 100 + bronze)
    // eg: 2 gold, 15 silver, 50 bronze = 2 * 10000 + 15 * 100 + 50 = 21550
    var min_value = 0;  var max_value = 0;

    if (dimension == "overworld")
    {
        if (prestige == 0) {  min_value = 30;           max_value = 150; }      // 30 bronze - 1.5 silver
        else if (prestige == 1) { min_value = 150;      max_value = 600; }      // 1.5-6 silver
        else if (prestige == 2) { min_value = 600;      max_value = 2000; }     // 6-20 silver
        else if (prestige == 3) { min_value = 2000;     max_value = 6000; }     // 20-60 silver
        else if (prestige == 4) { min_value = 6000;     max_value = 20000; }    // 60 silver - 2 gold
        else if (prestige == 5) { min_value = 30000;    max_value = 100000; }   // 3-10 gold
    }
    else if (dimension == "nether")
    {
        if (prestige == 0) {  min_value = 80;           max_value = 300; }      // 80 bronze - 3 silver
        else if (prestige == 1) { min_value = 300;      max_value = 1200; }     // 3-12 silver
        else if (prestige == 2) { min_value = 1200;     max_value = 4000; }     // 12-40 silver
        else if (prestige == 3) { min_value = 4000;     max_value = 12000; }    // 40 silver - 1.2 gold
        else if (prestige == 4) { min_value = 12000;    max_value = 35000; }    // 1.2-3.5 gold
        else if (prestige == 5) { min_value = 80000;    max_value = 160000; }   // 8-16 gold
    }
    else if (dimension == "end")
    {
        if (prestige == 0) {  min_value = 200;          max_value = 1000; }     // 2-10 silver
        else if (prestige == 1) { min_value = 1000;     max_value = 4000; }     // 10-40 silver
        else if (prestige == 2) { min_value = 4000;     max_value = 10000; }    // 40 silver - 1 gold
        else if (prestige == 3) { min_value = 10000;    max_value = 30000; }    // 1-3 gold
        else if (prestige == 4) { min_value = 30000;    max_value = 80000; }    // 3-8 gold
        else if (prestige == 5) { min_value = 150000;   max_value = 300000; }   // 15-30 gold
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