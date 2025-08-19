#priority 100

val cages = [
    <item:animal_pen:animal_cage>,
    <item:animal_pen:water_animal_container>
];

for item in cages { <tag:item:the_wonder_years:cages>.add(item); }

val pens = [
    <item:animal_pen:aquarium_block>,
    <item:animal_pen:animal_pen_oak>,
    <item:animal_pen:animal_pen_spruce>,
    <item:animal_pen:animal_pen_birch>,
    <item:animal_pen:animal_pen_acacia>,
    <item:animal_pen:animal_pen_jungle>,
    <item:animal_pen:animal_pen_dark_oak>,
    <item:animal_pen:animal_pen_crimson>,
    <item:animal_pen:animal_pen_warped>,
    <item:animal_pen:animal_pen_mangrove>,
    <item:animal_pen:animal_pen_bamboo>,
    <item:animal_pen:animal_pen_cherry>
];

for item in pens { <tag:item:the_wonder_years:pens>.add(item); }