#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;
import crafttweaker.api.util.math.RandomSource;

import math.Functions;
import stdlib.List;

/**
 * PatternComponent Class
 * 
 * Generates random banner pattern data for items based on player context including
 * luck, dimension, and item banner capability. The system focuses on creating
 * visually appealing banners by limiting layer count to 1-3 layers for clean designs
 * while using luck to improve pattern quality rather than quantity.
 * 
 * Higher luck results in access to rare and complex patterns (piglin, flow, guster)
 * while maintaining reasonable layer counts to prevent cluttered, messy banners.
 * 
 * Example usage:
 *   val pattern_data = PatternComponent.generateRandomPatternData(item_descriptor, loot_context);
 */
public class PatternComponent
{
    /**
     * Available dye colors for banner base and pattern layers.
     * Colors are organized from neutral to vibrant for balanced selection.
     */
    private static val COLORS as string[] = [
        "white",
        "light_gray",
        "gray",
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "lime",
        "green",
        "cyan",
        "light_blue",
        "blue",
        "purple",
        "magenta",
        "pink"
    ];

    /**
     * Available banner patterns organized by complexity and rarity.
     * Basic patterns are listed first, followed by more complex and rare patterns.
     * This ordering allows luck to influence pattern quality selection.
     */
    private static val PATTERNS as string[] = [
        // Basic Stripes & Sections
        "minecraft:stripe_bottom",        
        "minecraft:stripe_top",           
        "minecraft:stripe_middle",        
        "minecraft:stripe_center",        
        "minecraft:stripe_left",          
        "minecraft:stripe_right",         
        "minecraft:small_stripes",        
        
        // Diagonals & Bends
        "minecraft:stripe_downright",     
        "minecraft:stripe_downleft",      
        "minecraft:diagonal_left",        
        "minecraft:diagonal_right",       
        "minecraft:diagonal_up_left",     
        "minecraft:diagonal_up_right",    
        
        // Halves & Quarters
        "minecraft:half_horizontal",      
        "minecraft:half_horizontal_bottom", 
        "minecraft:half_vertical",        
        "minecraft:half_vertical_right",  
        "minecraft:square_bottom_left",   
        "minecraft:square_bottom_right",  
        "minecraft:square_top_left",      
        "minecraft:square_top_right",     
        
        // Triangular Patterns
        "minecraft:triangle_bottom",      
        "minecraft:triangle_top",         
        "minecraft:triangles_bottom",     
        "minecraft:triangles_top",        
        
        // Gradients & Borders
        "minecraft:gradient",             
        "minecraft:gradient_up",          
        "minecraft:border",               
        
        // Crosses & Shapes
        "minecraft:straight_cross",       
        "minecraft:cross",                
        "minecraft:circle",               
        "minecraft:rhombus",              
        
        // Special Banner Pattern Items (Craftable)
        "minecraft:flower",               
        "minecraft:creeper",              
        "minecraft:skull",                
        "minecraft:mojang",               
        "minecraft:curly_border",         
        "minecraft:bricks",               
        
        // Special Banner Pattern Items (Trading)
        "minecraft:globe",                
        
        // Special Banner Pattern Items (Structure Loot)
        "minecraft:piglin",               
        "minecraft:flow",                 
        "minecraft:guster"                
    ];

    /**
     * Generates random banner pattern data for an item based on player context.
     * 
     * @param item_descriptor The item descriptor containing banner capability information
     * @param loot_context The loot context containing luck, dimension, and random source
     * @return IData containing the banner pattern component data structure, or empty data if item cannot apply banner patterns
     */
    public static generateRandomPatternData(item_descriptor as ItemDescriptor, loot_context as WonderLootContext) as IData
    {
        // Verify that the item can receive banner patterns
        if (!item_descriptor.can_apply_banner)
        {
            println("[WARNING]: PatternComponent received '" + item_descriptor.item as string + "', an untrimmable item. Returned empty data.");
			return { } as IData;
        }

        // Create working copies of color and pattern arrays for manipulation
        // We'll remove used colors/patterns to prevent duplicates
        val available_colors = COLORS as List<string>;
        val available_patterns = PATTERNS as List<string>;

        // Select base color randomly (base color doesn't benefit from luck)
        val base_color_index = loot_context.random.nextInt(0, available_colors.length as int);
        val base_color = available_colors[base_color_index];
        available_colors.remove(base_color_index as usize);

        // Create base color component data
        val base_color_data = {
            "minecraft:base_color": base_color
        } as IData;

        // Calculate luck factor using the same system as other components
        // Higher luck = lower factor = better pattern selection (not necessarily more layers)
        val luck_factor = 1.0 - loot_context.player_luck * 0.15;
        
        // Determine layer count with a more conservative approach
        // Good banners usually have 1-3 layers, not 5+ layers which look cluttered
        // Use a weighted random that slightly favors fewer layers for cleaner designs
        val layer_base_roll = loot_context.random.nextFloat();
        var number_of_layers = 1;
        
        // Probability distribution: 1 layer (40%), 2 layers (35%), 3 layers (25%)
        // This creates cleaner banners while still allowing complexity
        if (layer_base_roll > 0.4) { number_of_layers = 2; }
        if (layer_base_roll > 0.75) { number_of_layers = 3; }
        
        // Luck can add at most 1 extra layer, and only with very good luck
        val luck_bonus_roll = Functions.pow(loot_context.random.nextFloat(), luck_factor);
        if (luck_bonus_roll > 0.8 && number_of_layers < 3) { number_of_layers += 1; }
        
        // Ensure we don't exceed available colors (need one color per layer)
        var actual_layers = number_of_layers;
        if (actual_layers >= available_colors.length as int) { actual_layers = (available_colors.length - 1) as int; }

        // Initialize empty pattern layers component
        val applied_patterns = {"minecraft:banner_patterns": [ ]} as IData;

        // Generate each pattern layer with luck-influenced pattern selection
        // Focus on pattern quality rather than quantity for better visual results
        for i in 0 .. number_of_layers
        {
            // Use uniform distribution for color selection
            // Color preference is subjective, so luck doesn't affect color choice
            val layer_color_index = loot_context.random.nextInt(0, available_colors.length as int);
            val layer_color = available_colors[layer_color_index];
            available_colors.remove(layer_color_index as usize);

            // Apply luck-based pattern selection for higher quality patterns
            // Higher luck strongly favors rare/complex patterns from end of array
            val pattern_roll = Functions.pow(loot_context.random.nextFloat(), luck_factor);
            val layer_pattern_index = Functions.round(pattern_roll * (available_patterns.length - 1) as float) as int;
            val layer_pattern = available_patterns[layer_pattern_index];
            available_patterns.remove(layer_pattern_index as usize);

            // Add this layer to the pattern collection
            applied_patterns["minecraft:banner_patterns"].add({color: layer_color, pattern: layer_pattern});
        }

        // Merge base color and pattern data into final component
        return base_color_data.merge(applied_patterns);
    }
}

