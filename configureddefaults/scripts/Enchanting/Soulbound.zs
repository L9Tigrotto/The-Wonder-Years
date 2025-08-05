
val additional_items = [
    <item:bagofholding:leather_bag_of_holding>,
    <item:bagofholding:iron_bag_of_holding>,
    <item:bagofholding:golden_bag_of_holding>
];

for item in additional_items
{
    <tag:item:soulbound:enchantable>.add(additional_items);
}