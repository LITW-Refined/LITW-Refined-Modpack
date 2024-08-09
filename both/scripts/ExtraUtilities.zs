var euBuildersWand = <ExtraUtilities:builderswand>;
var euCreativeBuildersWand = <ExtraUtilities:creativebuilderswand>;
var euUnstableIngot = <ExtraUtilities:unstableingot>;
var euUnstableIngotStable = <ExtraUtilities:unstableingot:2>;
var oreUnstableIngot = <ore:ingotUnstable>;
var oreObsidian = <ore:obsidian>;

// Entferne Orignale-Rezepte fuer Magnum-Fackel etc.
recipes.removeShaped(<ExtraUtilities:chandelier>);

// Einfachere Rezepte fuer Magnum-Fackel etc.
recipes.addShaped(<ExtraUtilities:magnumTorch>, [[<ore:plankWood>, <ore:gemDiamond>, <ore:plankWood>], [<ore:gemDiamond>, <ore:blockTorch>, <ore:gemDiamond>], [<ore:plankWood>, <ore:gemDiamond>, <ore:plankWood>]]);
recipes.addShaped(<ExtraUtilities:magnumTorch>, [[<ore:plankWood>, <ExtraUtilities:chandelier>, <ore:plankWood>], [<ExtraUtilities:chandelier>, null, <ExtraUtilities:chandelier>], [<ore:plankWood>, <ExtraUtilities:chandelier>, <ore:plankWood>]]);
recipes.addShaped(<ExtraUtilities:chandelier>, [[<ore:plankWood>, <ore:ingotGold>, <ore:plankWood>], [<ore:blockTorch>, <ore:gemDiamond>, <ore:blockTorch>], [<ore:plankWood>, <ore:ingotGold>, <ore:plankWood>]]);

// Etwas einfacheres alternatives Rezept fuer das Silktouch-Upgrade fuer den Endersteinbruch
recipes.addShaped(<ExtraUtilities:enderQuarryUpgrade:2>, [[null, <minecraft:golden_pickaxe>, null], [<ore:dustRedstone>, <ExtraUtilities:enderQuarryUpgrade>, <ore:dustRedstone>]]);

// Kreativer Baumeisterstab
recipes.addShaped(euCreativeBuildersWand, [[oreUnstableIngot, euBuildersWand, oreUnstableIngot], [null, <ore:obsidian>, null], [oreUnstableIngot, <ore:obsidian>, oreUnstableIngot]]);

// Stabiler Instabiler Barren
recipes.addShaped(euUnstableIngotStable, [[oreObsidian, oreObsidian, oreObsidian], [oreObsidian, euUnstableIngot, oreObsidian], [oreObsidian, oreObsidian, oreObsidian]]);
