#priority 100

val pattern_can_apply = [
    <item:minecraft:shield>,
    <item:minecraft:elytra>
];

for item in pattern_can_apply { <tag:item:the_wonder_years:applicable/banner>.add(item); }