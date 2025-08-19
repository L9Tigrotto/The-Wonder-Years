
import stdlib.List;
import crafttweaker.api.item.enchantment.Enchantment;

craftingTable.addShapeless(
    "enchantment_removal_1", 
    <item:minecraft:apple>, 
    [
        <tag:item:c:enchantables>, <item:minecraft:emerald>
    ],
    (output, ingredients) => 
    {
        //var enchantment_index = 1;
        //var item = <item:minecraft:air>;
//
        //if (ingredients[0] != <item:minecraft:emerald>) { item = ingredients[0]; }
//
        //val enchantments = item.enchantments;
        //var keys = enchantments.keySet;
        //var array = keys as Enchantment[];
//
        //for key in keys
        //{
        //    println(key as string);
        //}
        
        return output;
    });

craftingTable.addShapeless(
    "enchantment_removal_2", 
    <item:minecraft:apple>, 
    [
        <tag:item:c:enchantables>, <item:minecraft:emerald>, <item:minecraft:emerald>
    ],
    (output, ingredients) => 
    {
        //var enchantment_index = 2;
        //var item = <item:minecraft:air>;
//
        //if (ingredients[0] != <item:minecraft:emerald>) { item = ingredients[0]; }
        //else if (ingredients[1] != <item:minecraft:emerald>) { item = ingredients[1]; }
        
        return output;
    });