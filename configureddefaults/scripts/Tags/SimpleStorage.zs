#priority 100

val storage_terminals = [
    <item:toms_storage:storage_terminal>,
    <item:toms_storage:crafting_terminal>
];

for item in storage_terminals { <tag:item:the_wonder_years:storage_terminals>.add(item); }

val wireless_terminals = [
    <item:toms_storage:wireless_terminal>,
    <item:toms_storage:adv_wireless_terminal>
];

for item in wireless_terminals { <tag:item:the_wonder_years:wireless_terminals>.add(item); }