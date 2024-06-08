var PatternTerminal = <appliedenergistics2:item.ItemMultiPart:340>;
var ProcessingTerminal = <appliedenergistics2:item.ItemMultiPart:500>;
var processorLogic = <appliedenergistics2:item.ItemMultiPart:22>;
var processorCalculation = <appliedenergistics2:item.ItemMultiPart:23>;
var processorConstruction = <appliedenergistics2:item.ItemMultiPart:24>;
var oreDustCertusQuartz = <ore:dustCertusQuartz>;
var oreDustNetherQuartz = <ore:dustNetherQuartz>;
var oreDustFluix = <ore:dustFluix>;
var oreSand = <ore:sand>;
var seedCertusQuartzCrystal = <appliedenergistics2:item.ItemCrystalSeed>.withTag({progress: 0});
var seedNetherQuartzCrystal = <appliedenergistics2:item.ItemCrystalSeed:600>.withTag({progress: 600});
var seedFluixCrystal = <appliedenergistics2:item.ItemCrystalSeed:1200>.withTag({progress: 1200});
var clearNetherQuartzCrystal = <appliedenergistics2:item.ItemMultiMaterial:11>;

// Processing Terminal
recipes.addShapeless(ProcessingTerminal, [PatternTerminal, processorCalculation, processorConstruction, processorLogic]);

// Keime (Output 4x statt 2x)
recipes.remove(seedCertusQuartzCrystal);
recipes.remove(seedNetherQuartzCrystal);
recipes.remove(seedFluixCrystal);
recipes.addShapeless(seedCertusQuartzCrystal * 4, [oreSand, oreDustCertusQuartz]);
recipes.addShapeless(seedNetherQuartzCrystal * 4, [oreSand, oreDustNetherQuartz]);
recipes.addShapeless(seedFluixCrystal * 4, [oreSand, oreDustFluix]);

// Raw Nether Crystal --> Nether Quartz
recipes.addShapeless(seedFluixCrystal, [clearNetherQuartzCrystal, clearNetherQuartzCrystal, clearNetherQuartzCrystal, clearNetherQuartzCrystal]);
