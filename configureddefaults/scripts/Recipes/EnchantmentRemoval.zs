
import stdlib.List;
import crafttweaker.api.item.component.ItemEnchantments;

craftingTable.addShapeless(
    "enchantment_removal_1", 
    <item:minecraft:apple>, 
    [
        <tag:item:c:enchantables>, <item:minecraft:name_tag>, <item:betterenchanting:magic_shard_full>
    ],
    (output, ingredients) => 
    {
        var name_tag = <item:minecraft:air>;
        var enchanted_item = <item:minecraft:air>;

        if (ingredients[0].definition == <item:minecraft:name_tag>.definition) { name_tag = ingredients[0]; }
        if (ingredients[1].definition == <item:minecraft:name_tag>.definition) { name_tag = ingredients[1]; }
        if (ingredients[2].definition == <item:minecraft:name_tag>.definition) { name_tag = ingredients[2]; }

        if (ingredients[0].definition in <tag:item:c:enchantables>) { enchanted_item = ingredients[0]; }
        if (ingredients[1].definition in <tag:item:c:enchantables>) { enchanted_item = ingredients[1]; }
        if (ingredients[2].definition in <tag:item:c:enchantables>) { enchanted_item = ingredients[2]; }

        val name_tag_components = name_tag.components;
        if (!(<componenttype:minecraft:custom_name> in name_tag_components)) { return <item:minecraft:air>; }
        
        val enchantments = enchanted_item.enchantments;
        if (enchantments.size == 0) { return <item:minecraft:air>; }

        val custom_name = (name_tag.customName as string).trim();

        val curses = [
            <enchantment:minecraft:vanishing_curse>,
            <enchantment:minecraft:binding_curse>,
            <enchantment:enchantplus:durability/curse_of_breaking>
        ];

        var new_item = enchanted_item;

        for enchantment in enchantments.entries
        {
            val is_curse = enchantment in curses;
            val enchantment_name = enchantment as string;
            
            if (!is_curse && enchantment_name.endsWith(custom_name)) 
            {
                new_item = new_item.withoutEnchantment(enchantment);
            }
        }

        return new_item;
    });