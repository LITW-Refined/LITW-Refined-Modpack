// Entferne originale Knopf-Rezepte (werden unten neu hinzugefügt)
recipes.removeShapeless(<minecraft:wooden_button>, [<ore:plankWood>]);
recipes.removeShapeless(<minecraft:stone_button>, [<ore:stone>]);

// Ledermaterial (wie Burlap) -> Leder
recipes.addShapeless(<minecraft:leather>, [<ore:materialLeather>]);

// 1 Holzplanke -> 2x Sticks
recipes.addShapeless(<minecraft:stick> * 2, [<ore:plankWood>]);

// Holzknopf
recipes.addShaped(<minecraft:wooden_button> * 4, [[null, <ore:plankWood>, null], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Steinknopf
recipes.addShaped(<minecraft:stone_button> * 4, [[null, <ore:stone>, null], [<ore:stone>, <ore:stone>, <ore:stone>]]);

// Ton aus Erde, Sand und Wasser
recipes.addShaped(<minecraft:clay> * 6, [[<ore:sand>, <ore:sand>, <ore:sand>], [null, <ore:listAllwater>, null], [<ore:dirt>, <ore:dirt>, <ore:dirt>]]);

// Glowstone aus Glas, Fackeln und Cobbelstone
// Veraltet, dank Pam's Harvest the Nether
// recipes.addShaped(<minecraft:glowstone> * 1, [[<ore:glass>, <ore:glass>, <ore:glass>], [<ore:blockTorch>, <ore:blockTorch>, <ore:blockTorch>], [<ore:cobblestone>, <ore:blockTorch>, <ore:cobblestone>]]);

// Netherstern
recipes.remove(<minecraft:nether_star>); // Remove the "Peaceful Mode Only" recipe
recipes.addShaped(<minecraft:nether_star>, [[<minecraft:skull:1>, <minecraft:skull:1>, <minecraft:skull:1>], [<ore:soulSand>, <ore:soulSand>, <ore:soulSand>], [<minecraft:diamond_sword>, <ore:soulSand>, <minecraft:bow>]]);