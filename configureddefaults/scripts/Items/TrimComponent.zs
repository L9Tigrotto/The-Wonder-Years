#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.util.math.RandomSource;

import math.Functions;

/**
 * TrimComponent Class
 * 
 * Generates random armor trim data for items based on player context including
 * luck, dimension, and item trimming capability. Different dimensions have access
 * to different materials and patterns, with luck affecting the quality of both
 * the selected material and pattern.
 * 
 * Materials and patterns are ordered from basic to premium, with luck determining
 * which tier of trim the player receives.
 * 
 * Example usage:
 *   val trim_data = TrimComponent.generateRandomTrimData(item_descriptor, loot_context);
 */
public class TrimComponent
{
    /**
     * Available trim materials by dimension, ordered from basic to premium quality.
     * Higher dimensions offer access to more prestigious materials.
     */
    private static val TRIM_MATERIALS as IItemStack[][string] = {
        "overworld": [
            <item:minecraft:iron_ingot>, <item:minecraft:copper_ingot>,
            <item:minecraft:gold_ingot>, <item:minecraft:lapis_lazuli>
        ],
        "nether": [
            <item:minecraft:iron_ingot>, <item:minecraft:copper_ingot>,
            <item:minecraft:gold_ingot>, <item:minecraft:lapis_lazuli>,
            <item:minecraft:emerald>, <item:minecraft:diamond>,
            <item:minecraft:netherite_ingot>, <item:minecraft:redstone>,
            <item:minecraft:quartz>, <item:minecraft:amethyst_shard>
        ],
        "end": [
            <item:minecraft:iron_ingot>, <item:minecraft:copper_ingot>,
            <item:minecraft:gold_ingot>, <item:minecraft:lapis_lazuli>,
            <item:minecraft:emerald>, <item:minecraft:diamond>,
            <item:minecraft:netherite_ingot>, <item:minecraft:redstone>,
            <item:minecraft:quartz>, <item:minecraft:amethyst_shard>
        ],
    };

    /**
     * Available trim patterns by dimension, ordered from basic to premium appearance.
     * Higher dimensions unlock access to rarer and more visually impressive patterns.
     */
    private static val TRIM_PATTERNS as IItemStack[][string] = {
        "overworld": [
            <item:minecraft:vex_armor_trim_smithing_template>,        
            <item:minecraft:wayfinder_armor_trim_smithing_template>,  
            <item:minecraft:raiser_armor_trim_smithing_template>,     
            <item:minecraft:wild_armor_trim_smithing_template>,       
            <item:minecraft:sentry_armor_trim_smithing_template>,     
            <item:minecraft:host_armor_trim_smithing_template>
        ],
        "nether": [
            <item:minecraft:vex_armor_trim_smithing_template>,        
            <item:minecraft:wayfinder_armor_trim_smithing_template>,  
            <item:minecraft:raiser_armor_trim_smithing_template>,     
            <item:minecraft:wild_armor_trim_smithing_template>,       
            <item:minecraft:sentry_armor_trim_smithing_template>,     
            <item:minecraft:host_armor_trim_smithing_template>,       
            <item:minecraft:shaper_armor_trim_smithing_template>,     
            <item:minecraft:ward_armor_trim_smithing_template>,       
            <item:minecraft:coast_armor_trim_smithing_template>,      
            <item:minecraft:rib_armor_trim_smithing_template>,        
            <item:minecraft:tide_armor_trim_smithing_template>,       
            <item:minecraft:snout_armor_trim_smithing_template>    
        ],
        "end": [
            <item:minecraft:vex_armor_trim_smithing_template>,        
            <item:minecraft:wayfinder_armor_trim_smithing_template>,  
            <item:minecraft:raiser_armor_trim_smithing_template>,     
            <item:minecraft:wild_armor_trim_smithing_template>,       
            <item:minecraft:sentry_armor_trim_smithing_template>,     
            <item:minecraft:host_armor_trim_smithing_template>,       
            <item:minecraft:shaper_armor_trim_smithing_template>,     
            <item:minecraft:ward_armor_trim_smithing_template>,       
            <item:minecraft:coast_armor_trim_smithing_template>,      
            <item:minecraft:rib_armor_trim_smithing_template>,        
            <item:minecraft:tide_armor_trim_smithing_template>,       
            <item:minecraft:snout_armor_trim_smithing_template>,      
            <item:minecraft:flow_armor_trim_smithing_template>,       
            <item:minecraft:dune_armor_trim_smithing_template>,       
            <item:minecraft:spire_armor_trim_smithing_template>,      
            <item:minecraft:bolt_armor_trim_smithing_template>,       
            <item:minecraft:eye_armor_trim_smithing_template>,        
            <item:minecraft:silence_armor_trim_smithing_template>
        ],
    };

    /**
     * Generates random armor trim data for an item based on player context.
     * 
     * @param item_descriptor The item descriptor containing trimming capability information
     * @param loot_context The loot context containing luck, dimension, and random source
     * @return IData containing the trim component data structure, or empty data if item is not trimmable
     */
    public static generateRandomTrimData(item_descriptor as ItemDescriptor, loot_context as WonderLootContext) as IData
    {
        // Verify that the item can receive armor trims
        if (!item_descriptor.can_apply_trims)
        {
            println("[WARNING]: TrimComponent received '" + item_descriptor.item as string + "', an untrimmable item. Returned empty data.");
			return { } as IData;
        }

        // Get dimension-specific material and pattern arrays
        // These arrays are ordered from basic (index 0) to premium (highest index)
        var trim_materials = TRIM_MATERIALS[loot_context.dimension];
        var trim_patterns = TRIM_PATTERNS[loot_context.dimension] as IItemStack[];

        // Calculate luck factor using the same system as tier and enchantment generation
        // Higher luck = lower factor = better selection results (toward end of arrays)
        val luck_factor = 1.0 - loot_context.player_luck * 0.15;
        
        // Generate luck-skewed random value for material selection
        // Higher luck pushes the value toward 1.0, selecting from the end of the material array
        val material_roll = Functions.pow(loot_context.random.nextFloat(), luck_factor);
        
        // Map the skewed random to a valid array index for materials
        // Formula ensures we stay within array bounds [0, length-1]
        var material_index = Functions.round(material_roll * (trim_materials.length - 1)) as int;
        
        // Generate separate luck-skewed random value for pattern selection
        // This allows independent selection of material and pattern quality
        val pattern_roll = Functions.pow(loot_context.random.nextFloat(), luck_factor);

        // Map the skewed random to a valid array index for patterns
        var pattern_index = Functions.round(pattern_roll * (trim_patterns.length - 1)) as int;

        // Defensive clamping to ensure valid array indices
        if (material_index < 0) { material_index = 0; }
        if (pattern_index < 0) { pattern_index = 0; }
        if (material_index >= trim_materials.length as int) { material_index = (trim_materials.length - 1) as int; }
        if (pattern_index >= trim_patterns.length as int) { pattern_index = (trim_patterns.length - 1) as int; }

        // Extract the base material name from the selected material's registry name
        // Example: "minecraft:iron_ingot" becomes "minecraft:iron"
        val selected_material = ((trim_materials[material_index].registryName as string).split('_'))[0];

        // Extract the base pattern name from the selected pattern's registry name
        // Example: "minecraft:vex_armor_trim_smithing_template" becomes "minecraft:vex"
        val selected_pattern = ((trim_patterns[pattern_index].registryName as string).split('_'))[0];
        
        // Construct and return the trim component data structure
        return 
		{
			"minecraft:trim": 
			{
				material: selected_material,
				pattern: selected_pattern,
			}
		};
    }
}

