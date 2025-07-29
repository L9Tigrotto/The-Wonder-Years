#priority 100

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;

/**
 * ItemAssembler Class
 * 
 * Builds items with custom components by combining an ItemDescriptor with
 * additional data components. This class provides a fluent interface for
 * constructing complex items with multiple components like tiers, enchantments,
 * and other custom data.
 * 
 * The assembler accumulates components through multiple addComponentIfNotEmpty()
 * calls, then generates the final item with build(). Components can be reset
 * to reuse the same assembler for multiple items.
 * 
 * Example usage:
 *   val assembler = new ItemAssembler(item_descriptor);
 *   assembler.addComponentIfNotEmpty(tier_data);
 *   assembler.addComponentIfNotEmpty(enchantment_data);
 *   val final_item = assembler.build();
 */
public class ItemAssembler
{
    /**
     * The item descriptor containing the base item and category information
     */
    public var item_descriptor as ItemDescriptor : get;
    
    /**
     * Accumulated component data that will be applied to the final item
     */
	public var components as IData : get;
	
    /**
     * Constructor - Creates a new ItemAssembler for the given item descriptor.
     * Initializes an empty components data structure ready for accumulation.
     * 
     * @param item_descriptor The item descriptor containing the base item to build upon
     */
	public this(item_descriptor as ItemDescriptor)
	{
        this.item_descriptor = item_descriptor;
		this.components = { } as IData;
	}

    /**
     * Adds a component to the assembler if the component contains data.
     * Empty components are ignored to avoid cluttering the final item with
     * meaningless data structures. This allows for safe chaining of potentially
     * empty generation results.
     * 
     * @param component The component data to potentially add (ignored if empty)
     */
	public addComponentIfNotEmpty(component as IData) as void
	{
        // Only merge non-empty components to keep the final item clean
        if (!component.isEmpty) { 
            components.merge(component); 
        }
	}

    /**
     * Builds the final item by applying all accumulated components to the base item.
     * Uses JSON components to attach the custom data to the ItemStack, creating
     * a fully configured item ready for use in the game.
     * 
     * @return The final ItemStack with all components applied
     */
	public build() as IItemStack
	{
        return item_descriptor.item.withJsonComponents(components);
	}

    /**
     * Resets the component accumulator to an empty state.
     * This allows the same assembler instance to be reused for building
     * multiple items without creating new assembler objects.
     */
    public reset() as void
	{
        components = { } as IData;
	}
}