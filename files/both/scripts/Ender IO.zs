// ME-Leitungen
// recipes.remove(<EnderIO:itemMEConduit>);
// recipes.remove(<EnderIO:itemMEConduit:1>);

// ???
recipes.addShapeless(<EnderIO:itemMaterial:9>, [<ore:gemEmerald>, <TConstruct:heartCanister:1>]);
recipes.addShapeless(<EnderIO:itemMaterial:8>, [<ore:itemVibrantCrystal>, <ore:pearlEnderEye>]);

// Dichte ME-Leitung
// recipes.addShaped(<EnderIO:itemMEConduit:1> * 3, [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], [<ore:itemMeCableBase>, <ore:itemMeCableBase>, <ore:itemMeCableBase>], [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

// Crystalline Capacitor
recipes.addShaped(<EnderIO:itemBasicCapacitor:3>, [[null, <ore:ingotCrystallineAlloy>, null], [<ore:capacitorEnder>, <ore:itemVibrantCrystal>, <ore:capacitorEnder>], [null, <ore:ingotCrystallineAlloy>, null]]);

// Drahloses Licht (einfacher)
recipes.addShapeless(<EnderIO:blockElectricLight:4>, [<EnderIO:blockElectricLight>, <ore:ingotEnergeticAlloy>]);
recipes.addShapeless(<EnderIO:blockElectricLight:5>, [<EnderIO:blockElectricLight:1>, <ore:ingotEnergeticAlloy>]);

// Solarpanels deaktivieren
recipes.remove(<EnderIO:blockSolarPanel>);
recipes.remove(<EnderIO:blockSolarPanel:1>);
recipes.remove(<EnderIO:blockSolarPanel:2>);