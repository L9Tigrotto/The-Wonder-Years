#priority 100

val canvas = [
    <item:xercapaint:item_canvas>,
    <item:xercapaint:item_canvas_long>,
    <item:xercapaint:item_canvas_tall>,
    <item:xercapaint:item_canvas_large>
];

for item in canvas { <tag:item:the_wonder_years:canvas>.add(item); }