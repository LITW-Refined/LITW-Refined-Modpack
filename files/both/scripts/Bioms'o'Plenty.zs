// Gib den hunderten Himmeleichensetzlingen einen Sinn! - Himmeleichensetzling + 2x Kompost + Eisenaxt -> 64x Himmeleichenholzst??mme
recipes.addShapeless(<BiomesOPlenty:logs1> * 64, [<minecraft:iron_axe>.anyDamage().transformDamage(50), <BiomesOPlenty:colorizedSaplings>, <GardenCore:compost_pile>, <GardenCore:compost_pile>]);

// 1 Cobbelstone/Stein -> 2x/3X Steinsticks
recipes.addShapeless(<TConstruct:toolRod:1> * 2, [<ore:cobblestone>]);
recipes.addShapeless(<TConstruct:toolRod:1> * 3, [<ore:stone>]);
