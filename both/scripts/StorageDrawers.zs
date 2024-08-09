// Entferne originale Upgrade-Rezepte
recipes.removeShaped(<StorageDrawers:upgradeVoid>);
recipes.removeShaped(<StorageDrawers:upgradeRedstone:2>);
recipes.removeShaped(<StorageDrawers:upgradeRedstone:1>);
recipes.removeShaped(<StorageDrawers:upgradeRedstone>);
recipes.removeShaped(<StorageDrawers:upgradeStatus:2>);
recipes.removeShaped(<StorageDrawers:upgradeStatus:1>);
recipes.removeShaped(<StorageDrawers:upgrade:6>);
recipes.removeShaped(<StorageDrawers:upgrade:5>);
recipes.removeShaped(<StorageDrawers:upgrade:4>);
recipes.removeShaped(<StorageDrawers:upgrade:3>);
recipes.removeShaped(<StorageDrawers:upgrade:2>);

// Einfachere Rezepte + Creative Storage
recipes.addShaped(<StorageDrawers:upgradeCreative>, [[<ore:gemQuartz>, <ore:dustRedstone>, <ore:stickWood>], [<ore:obsidian>, <StorageDrawers:upgradeTemplate>, <ore:dustGlowstone>], [<ore:stickWood>, <ore:dustRedstone>, <ore:gemQuartz>]]);
recipes.addShaped(<StorageDrawers:upgradeRedstone>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:dustRedstone>, <StorageDrawers:upgradeTemplate>, <ore:dustRedstone>]]);
recipes.addShaped(<StorageDrawers:upgradeRedstone:2>, [[<ore:stickWood>, <StorageDrawers:upgradeTemplate>, <ore:stickWood>], [<ore:dustRedstone>, <ore:stickWood>, <ore:dustRedstone>]]);
recipes.addShaped(<StorageDrawers:upgradeRedstone:1>, [[<ore:dustRedstone>, <ore:stickWood>, <ore:dustRedstone>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>, <ore:stickWood>]]);
recipes.addShaped(<StorageDrawers:upgradeVoid>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:obsidian>, <StorageDrawers:upgradeTemplate>, <ore:obsidian>]]);
recipes.addShaped(<StorageDrawers:upgradeStatus:2>, [[<minecraft:redstone_torch>, <ore:stickWood>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>]]);
recipes.addShaped(<StorageDrawers:upgradeStatus:1>, [[<ore:dustRedstone>, <ore:stickWood>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>]]);
recipes.addShaped(<StorageDrawers:upgrade:2>, [[<ore:ingotIron>, <ore:stickWood>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>]]);
recipes.addShaped(<StorageDrawers:upgrade:3>, [[<ore:ingotGold>, <ore:stickWood>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>]]);
recipes.addShaped(<StorageDrawers:upgrade:4>, [[<ore:obsidian>, <ore:stickWood>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>]]);
recipes.addShaped(<StorageDrawers:upgrade:5>, [[<ore:gemDiamond>, <ore:stickWood>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>]]);
recipes.addShaped(<StorageDrawers:upgrade:6>, [[<ore:gemEmerald>, <ore:stickWood>], [<ore:stickWood>, <StorageDrawers:upgradeTemplate>]]);
