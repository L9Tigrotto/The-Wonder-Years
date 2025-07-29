#priority 100

import crafttweaker.api.item.IItemStack;

/**
 * WeightedPoolItem Class
 * 
 * Represents an item entry in a weighted random selection pool with configurable
 * count ranges. This class encapsulates an item, its selection weight, and the
 * minimum/maximum stack sizes that can be generated when the item is selected.
 * 
 * The class performs automatic validation of parameters to ensure logical values:
 * weights must be positive, counts cannot be negative, and max_count cannot be
 * less than min_count. Invalid values are corrected with warnings.
 * 
 * Example usage:
 *   val pool_item = new WeightedPoolItem(<item:minecraft:diamond>, 5, 1, 3);
 *   // Creates diamond entry with weight 5, generating 1-3 diamonds when selected
 */
public class WeightedPoolItem
{
    /**
     * The ItemStack that this pool entry represents
     */
    public val item_stack as IItemStack : get;
    
    /**
     * The selection weight for weighted random algorithms (higher = more likely)
     */
    public val weight as int : get;
    
    /**
     * The minimum number of items to generate when this entry is selected
     */
    public val min_count as int : get;
    
    /**
     * The maximum number of items to generate when this entry is selected
     */
    public val max_count as int : get;

    /**
     * Constructor - Creates a new WeightedPoolItem with validation and error correction.
     * Automatically validates parameters and corrects invalid values with warnings.
     * 
     * @param item The ItemStack this entry represents
     * @param weight The selection weight (must be positive, defaults to 1 if invalid)
     * @param min_count The minimum count (must be non-negative, defaults to 0 if invalid)
     * @param max_count The maximum count (must be >= min_count, defaults to min_count if invalid)
     */
    public this(item as IItemStack, weight as int, min_count as int, max_count as int)
    {
        // Validate and correct weight parameter
        // Weight must be positive for proper weighted selection algorithms
        var validated_weight = weight;
        if (weight <= 0)
        { 
            println("[WARNING]: WeightedPoolItem received " + item as string + " with weight " + weight as string + ", defaulting to weight 1.");
            validated_weight = 1; 
        }

        // Validate and correct minimum count parameter
        // Minimum count cannot be negative (you can't give negative items)
        var validated_min_count = min_count;
        if (min_count < 0)
        { 
            println("[WARNING]: WeightedPoolItem received min_count " + min_count as string + " for " + item as string + ", defaulting to 0.");
            validated_min_count = 0; 
        }

        // Validate and correct maximum count parameter
        // Maximum count must be at least equal to minimum count for logical ranges
        var validated_max_count = max_count;
        if (max_count < validated_min_count)
        { 
            println("[WARNING]: WeightedPoolItem received max_count " + max_count as string + " less than min_count " + validated_min_count as string + " for " + item as string + ", defaulting max_count to " + validated_min_count as string + ".");
            validated_max_count = validated_min_count; 
        }

        // Assign validated values to final properties
        this.item_stack = item;
        this.weight = validated_weight;
        this.min_count = validated_min_count;
        this.max_count = validated_max_count;
    }
}