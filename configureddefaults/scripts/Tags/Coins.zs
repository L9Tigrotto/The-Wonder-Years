#priority 100

val coins = [
    <item:numismatic-overhaul:bronze_coin>,
    <item:numismatic-overhaul:silver_coin>,
    <item:numismatic-overhaul:gold_coin>
];

for item in coins { <tag:item:the_wonder_years:coins>.add(item); }