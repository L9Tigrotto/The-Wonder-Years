#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;
import crafttweaker.api.loot.LootContext;

import stdlib.List;

/**
 * WonderLootContext Class
 * 
 * A wrapper class that provides context information for loot generation systems.
 * This class encapsulates player luck, dimension, biome, and random source data
 * to facilitate consistent loot generation across the modpack.
 * 
 * The class maintains a list of generated loot items and provides methods to
 * add items either unconditionally or based on probability calculations.
 * 
 * Example usage:
 *   val context = new WonderLootContext(game_context, "overworld", "plains");
 *   context.addLoot(<item:minecraft:diamond>);
 *   context.addLootWithProbability(<item:minecraft:emerald>, 0.25);
 */
public class WonderLootContext
{
    /**
     * The list of items that have been added to this loot context
     */
	public val loot as List<IItemStack> : get;
	
    /**
     * The random source used for probability calculations
     */
	public val random as RandomSource : get;
	
    /**
     * The player's luck value affecting loot generation
     */
	public val player_luck as float : get;
	
    /**
     * The dimension where loot generation is occurring
     */
	public val dimension as string : get;
	
    /**
     * The biome where loot generation is occurring
     */
	public val biome as string : get;

    /**
     * Constructor - Creates a new WonderLootContext from a game loot context.
     * Validates the dimension parameter and sets default values for invalid inputs.
     * 
     * @param loot_context The original game loot context to extract data from
     * @param dimension The dimension identifier (overworld, nether, or end)
     * @param biome The biome identifier where loot is being generated
     */
	public this(loot_context as LootContext, dimension as string, biome as string)
	{
        // Validate and normalize dimension parameter
		var validated_dimension = dimension;
		if (dimension != "overworld" && dimension != "nether" && dimension != "end")
		{
			println("[WARNING]: WonderLootContext received '" + dimension + "' as dimension and is not supported, the value is set to 'overworld' as default.");
			validated_dimension = "overworld";
		}

        // Initialize context properties from game loot context
		this.loot = new List<IItemStack>();
		this.random = loot_context.random;
		this.player_luck = loot_context.luck;
		this.dimension = validated_dimension;
		this.biome = biome;
	}

    /**
     * Adds an item to the loot list unconditionally.
     * 
     * @param item The item to add to the loot collection
     */
    public addLoot(item as IItemStack) as void
    {
        loot.add(item);
    }

    /**
     * Adds an item to the loot list based on probability calculation.
     * The item is added if a random value is less than the specified probability.
     * 
     * @param item The item to potentially add to the loot collection
     * @param probability The chance (0.0 to 1.0) that the item will be added
     */
    public addLootWithProbability(item as IItemStack, probability as float) as void
    {
        val random_value = random.nextFloat();
        if (random_value < probability) { loot.add(item); }
    }
}