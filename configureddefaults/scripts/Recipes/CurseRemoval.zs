import crafttweaker.api.item.component.ItemEnchantments;
import crafttweaker.api.item.enchantment.Enchantment;

craftingTable.addShaped(
    "overworld_curse_removal", 
    <item:minecraft:apple>, 
    [
        [<tag:item:mythicupgrades:overworld_shards>, <tag:item:mythicupgrades:overworld_shards>, <tag:item:mythicupgrades:overworld_shards>],
        [<tag:item:mythicupgrades:overworld_shards>, <tag:item:c:enchantables>, <tag:item:mythicupgrades:overworld_shards>],
        [<tag:item:mythicupgrades:overworld_shards>, <item:minecraft:diamond>, <tag:item:mythicupgrades:overworld_shards>]
    ],
    (output, ingredients) => 
    {
        val item = ingredients[1][1];
        val enchantments = item.enchantments as ItemEnchantments;
        var removed = 0;

        var curses = [
            <enchantment:minecraft:vanishing_curse>,
            <enchantment:minecraft:binding_curse>,
            <enchantment:enchantencore:hiding_curse>
        ];

        for enchantment in enchantments.entries 
        {
            var is_curse = false;
            val enchantment_command_string = enchantment.commandString;

            for i in 0 .. curses.length
            {
                if curses[i].commandString == enchantment_command_string { is_curse = true; break; }
            }

            if is_curse { item = item.withoutEnchantment(enchantment); removed++; }
        }

        if removed == 0 { return <item:minecraft:air>; }
        return item;
    });

craftingTable.addShaped(
    "nether_curse_removal", 
    <item:minecraft:apple>, 
    [
        [<tag:item:mythicupgrades:nether_shards>, <tag:item:mythicupgrades:nether_shards>, <tag:item:mythicupgrades:nether_shards>],
        [<tag:item:mythicupgrades:nether_shards>, <tag:item:c:enchantables>, <tag:item:mythicupgrades:nether_shards>],
        [<tag:item:mythicupgrades:nether_shards>, <item:minecraft:netherite_ingot>, <tag:item:mythicupgrades:nether_shards>]
    ],
    (output, ingredients) => 
    {
        val item = ingredients[1][1];
        val enchantments = item.enchantments as ItemEnchantments;
        var removed = 0;

        var curses = [
            <enchantment:minecraft:vanishing_curse>,
            <enchantment:minecraft:binding_curse>,
            <enchantment:enchantplus:leggings/dwarfed>,
            <enchantment:enchantplus:leggings/oversize>,
            <enchantment:enchantencore:hiding_curse>,
            <enchantment:enchantencore:reach_curse>,
            <enchantment:enchantencore:welfare_curse>,
            <enchantment:enchantplus:durability/curse_of_breaking>,
            <enchantment:enchantencore:crank_curse>
        ];

        for enchantment in enchantments.entries 
        {
            var is_curse = false;
            val enchantment_command_string = enchantment.commandString;

            for i in 0 .. curses.length
            {
                if curses[i].commandString == enchantment_command_string { is_curse = true; break; }
            }

            if is_curse { item = item.withoutEnchantment(enchantment); removed++; }
        }

        if removed == 0 { return <item:minecraft:air>; }
        return item;
    });

craftingTable.addShaped(
    "end_curse_removal", 
    <item:minecraft:apple>, 
    [
        [<tag:item:mythicupgrades:end_shards>, <tag:item:mythicupgrades:end_shards>, <tag:item:mythicupgrades:end_shards>],
        [<tag:item:mythicupgrades:end_shards>, <tag:item:c:enchantables>, <tag:item:mythicupgrades:end_shards>],
        [<tag:item:mythicupgrades:end_shards>, <item:mythicupgrades:necoium_ingot>, <tag:item:mythicupgrades:end_shards>]
    ],
    (output, ingredients) => 
    {
        val item = ingredients[1][1];
        val enchantments = item.enchantments as ItemEnchantments;
        var removed = 0;

        var curses = [
            <enchantment:minecraft:vanishing_curse>,
            <enchantment:minecraft:binding_curse>,
            <enchantment:enchantplus:leggings/dwarfed>,
            <enchantment:enchantplus:leggings/oversize>,
            <enchantment:enchantencore:hiding_curse>,
            <enchantment:enchantencore:reach_curse>,
            <enchantment:enchantencore:welfare_curse>,
            <enchantment:enchantplus:durability/curse_of_breaking>,
            <enchantment:enchantencore:crank_curse>,
            <enchantment:enchantencore:enderscape>
        ];

        for enchantment in enchantments.entries 
        {
            var is_curse = false;
            val enchantment_command_string = enchantment.commandString;

            for i in 0 .. curses.length
            {
                if curses[i].commandString == enchantment_command_string { is_curse = true; break; }
            }

            if is_curse { item = item.withoutEnchantment(enchantment); removed++; }
        }

        if removed == 0 { return <item:minecraft:air>; }
        return item;
    });