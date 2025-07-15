import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.RandomSource;

/**
 * Generates a random potion with effects based on the dimension difficulty
 * @param random RandomSource for generating random numbers
 * @param dimension The dimension name ("overworld", "nether", or "end")
 * @return IItemStack containing a random potion with appropriate effects
 */
public function generateRandomEffectPotion(random as RandomSource, dimension as string) as IItemStack
{
    // Initialize empty array to hold available potion effects for the dimension
    var effects = [] as string[];

    // Define all possible potion container types
    var potion_types = [
        <item:minecraft:potion>,
        <item:minecraft:splash_potion>,
        <item:minecraft:lingering_potion>
    ];

    // Overworld: Basic/starter potions with common effects
    if (dimension == "overworld")
    {
        effects = [
            "minecraft:healing",
            "minecraft:regeneration",
            "minecraft:swiftness",
            "minecraft:leaping",
            "minecraft:water_breathing",
            "minecraft:night_vision",
            "minecraft:invisibility",
            "minecraft:weakness",
            "minecraft:slowness",
            "minecraft:poison",
            "minecraft:harming"
        ];
    }
    // Nether: Intermediate potions with stronger/longer effects
    else if (dimension == "nether")
    {
        effects = [
            "minecraft:fire_resistance",
            "minecraft:strength",
            "minecraft:long_fire_resistance",
            "minecraft:long_strength",
            "minecraft:strong_healing",
            "minecraft:strong_swiftness",
            "minecraft:strong_leaping",
            "minecraft:strong_regeneration",
            "minecraft:strong_poison",
            "minecraft:strong_harming",
            "minecraft:turtle_master",
            "minecraft:slow_falling"
        ];
    }

    // End: Powerful end-game potions with maximum effects
    else if (dimension == "end")
    {
        effects = [
            "minecraft:strong_strength",
            "minecraft:long_invisibility",
            "minecraft:long_night_vision",
            "minecraft:long_water_breathing",
            "minecraft:long_slow_falling",
            "minecraft:strong_turtle_master",
            "minecraft:long_turtle_master",
            "minecraft:strong_slowness",
            "minecraft:long_weakness",
            "minecraft:strong_poison",
            "minecraft:strong_harming",
            "minecraft:long_poison"
        ];
    }
    // Error handling for unsupported dimensions
    else 
    { 
        println("[ERROR]: in generateRandomEffectPotion recived '" + dimension + "' dimension. not supported.");
        effects = [
            "minecraft:mundane",
            "minecraft:thick",
            "minecraft:awkward"
        ];
    }

    // Generate random indices to select potion type and effect
    var potion_type_index = random.nextInt(0, potion_types.length as int);
    var effect_index = random.nextInt(0, effects.length as int);

    // Get the randomly selected potion type and effect
    var potion_type = potion_types[potion_type_index];
    var effect = effects[effect_index];

    // Create and return the final potion item with the selected effect
    return potion_type.withJsonComponent(
        <componenttype:minecraft:potion_contents>, 
        {
            potion: effect
        });
}