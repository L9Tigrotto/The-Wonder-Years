#priority 100

import crafttweaker.api.recipe.CraftingTableRecipeManager;

// unused trashcans
craftingTable.remove(<item:trashcans:energy_trash_can>);
craftingTable.remove(<item:trashcans:liquid_trash_can>);
craftingTable.remove(<item:trashcans:ultimate_trash_can>);

// disable vanilla ender chest
craftingTable.remove(<item:minecraft:ender_chest>);

// removed ender pouch recipe to add a modified version
craftingTable.remove(<item:enderchests:ender_pouch>);

// removed essence of capacity recipe to add a modified version
craftingTable.remove(<item:betterenchanting:essence_of_capacity>);

// removed abyss watcher recipe to add a modified version
craftingTable.remove(<item:fwaystones:abyss_watcher>);

// removed explorer and nature compass to add modified versions
craftingTable.remove(<item:explorerscompass:explorerscompass>);
craftingTable.remove(<item:naturescompass:naturescompass>);