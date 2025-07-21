
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

import stdlib.List;

/**
 * Performs weighted random selection from a pool of items and adds results to a loot list.
 * 
 * This function implements a weighted selection algorithm where:
 * 1. Each item has a weight (higher weight = more likely to be selected)
 * 2. Each item has a random count range when selected
 * 3. Empty results can occur based on empty_weight
 * 4. Multiple rolls are performed per call
 */
public function performWeightedPool(
    loot as List<IItemStack>, random as RandomSource,
    rolls_min as int, rolls_max as int, 
    pool_weight as int, empty_weight as int,
    items as IItemStack[], weights as int[], count_min as int[], count_max as int[]) as void
{
    // INPUT VALIDATION
    // Ensure items and weights arrays have matching lengths
    if (items.length != weights.length) 
    {
        println("[ERROR]: in performWeightedPool items and weights does not have the same length.");
        return;
    }

    // Ensure count_min and count_max arrays have matching lengths
    if (count_min.length != count_max.length) 
    {
        println("[ERROR]: in performWeightedPool count_min and count_max does not have the same length.");
        return;
    }

    // Ensure items and count arrays have matching lengths
    if (items.length != count_min.length) 
    {
        println("[ERROR]: in performWeightedPool items and count_min does not have the same length.");
        return;
    }

    // WEIGHTED SELECTION ALGORITHM
    // Determine how many times to roll from this pool (random between min and max)
    var rolls = random.nextInt(rolls_min, rolls_max + 1);

    // Perform the specified number of rolls
    for i in 0 .. rolls 
    {
        // Generate a random number from 0 to (pool_weight - 1)
        // This represents our "dart throw" at the weighted dartboard
        var random_weight = random.nextInt(0, pool_weight);

        // Check if we hit the "empty" section of the dartboard
        // If so, skip this roll (no item selected)
        if (random_weight < empty_weight) { continue; }
        
        // Adjust the random weight to account for the empty section
        // Now we're only considering the non-empty portion of the dartboard
        random_weight -= empty_weight;
        
        // Track cumulative weight as we walk through items
        var current_weight = 0;
        
        // Walk through each item to find which one was selected
        for j in 0 .. (items.length) {
            // Add this item's weight to our running total
            current_weight += weights[j];
            
            // Check if our random dart landed in this item's weight range
            if (random_weight < current_weight) {
                // This item was selected! Generate a random count within its range
                val count = random.nextInt(count_min[j], count_max[j] + 1);
                
                // Add the selected item(s) to the loot list
                loot.add(items[j] * count);
                
                // Exit the loop since we found our selected item
                break;
            }
        }
    }
}