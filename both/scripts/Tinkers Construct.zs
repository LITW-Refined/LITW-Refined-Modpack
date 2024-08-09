// Entferne Steinsticks-Rezept, da diese nicht das Ore-Dictionary verwenden (wird unten neu hinzugef??gt)
recipes.removeShaped(<TConstruct:toolRod:1> * 2);
recipes.removeShaped(<TConstruct:toolRod:1> * 4);

// Gib dem lilla Schleim einen Sinn!
recipes.addShapeless(<TConstruct:slime.gel> * 2, [<TConstruct:slime.gel:2>, <TConstruct:slime.gel:2>]);
recipes.addShapeless(<TConstruct:slime.gel:1>, [<TConstruct:slime.gel:2>]);

// Sticks-Rezepte für Steinstick
recipes.addShaped(<TConstruct:toolRod:1> * 6, [[<ore:stone>], [<ore:stone>]]);
recipes.addShaped(<TConstruct:toolRod:1> * 4, [[<ore:cobblestone>], [<ore:cobblestone>]]);

// Peaceful-Rezepte
recipes.addShapeless(<TConstruct:heartCanister:6>, [<TConstruct:heartCanister:4>, <TConstruct:heartCanister:5>, <TConstruct:diamondApple>]);
recipes.addShaped(<TConstruct:heartCanister:3> * 2, [[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], [<ore:itemNetherStar>, <TConstruct:heartCanister:1>, <ore:itemNetherStar>], [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>]]);
recipes.addShaped(<TConstruct:heartCanister:5> * 2, [[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>], [<DraconicEvolution:dragonHeart>, <TConstruct:heartCanister:3>, <DraconicEvolution:dragonHeart>], [<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>]]);
