import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.table.LootTableManager;
import crafttweaker.api.data.IData;

import math.Functions;
import stdlib.List;

// /give @s minecraft:chest[minecraft:container_loot={loot_table:"betterdeserttemples:chests/pot"}]
loot.modifiers.register(
	"betterdeserttemples_chests_pot",
	LootConditions.only(LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/pot>)),
	(stacks, context) => 
    {
        val loot_context = new WonderLootContext(context, "overworld", "desert");
        val loot_generator = new LootGenerator(loot_context);

        val array = [
            new WeightedPoolItem(<item:strawstatues:straw_statue>, 1, 0, 0)
        ] as WeightedPoolItem[];

        loot_generator.performWeightedPool(1, 2, 0, array);

		return loot_context.loot;
	}
);


