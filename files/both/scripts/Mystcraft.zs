// Rezept für Buchbinder, da das ein Creative-Only-Objekt ist.
recipes.addShaped(<Mystcraft:BlockLinkModifier>, [[<ore:ingotIron>, <ore:stone>, <ore:ingotIron>], [<ore:plankWood>, <ore:stone>, <ore:plankWood>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

// Verlinktes Verlinkungsbuch zurücksetzen und neu verwenden
recipes.addShaped(<Mystcraft:unlinkedbook>, [[<Mystcraft:linkbook>]]);

// Einfaches Rezept für simple Nicht-Verlinkte Linkbücher
recipes.addShapeless(<Mystcraft:unlinkedbook>, [<Mystcraft:vial>.giveBack(<minecraft:glass_bottle>), <minecraft:paper>, <ore:materialLeather>]);
