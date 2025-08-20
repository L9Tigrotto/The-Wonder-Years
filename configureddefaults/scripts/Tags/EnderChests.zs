#priority 100

val ender_bags = [
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "111"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "222"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "333"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "444"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "555"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "666"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "777"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "888"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "999"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "AAA"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "BBB"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "CCC"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "DDD"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "EEE"}),
    <item:enderchests:ender_bag>.withJsonComponent(<componenttype:enderchests:network>, {code: "FFF"})
];

for item in ender_bags { <tag:item:the_wonder_years:ender_bags>.add(item); }

val ender_chests = [
    <item:enderchests:ender_chest>,
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "111"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "222"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "333"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "444"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "555"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "666"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "777"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "888"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "999"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "AAA"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "BBB"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "CCC"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "DDD"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "EEE"}),
    <item:enderchests:ender_chest>.withJsonComponent(<componenttype:enderchests:network>, {code: "FFF"})
];

for item in ender_chests { <tag:item:the_wonder_years:ender_chests>.add(item); }