var oreNuggetGold = <ore:nuggetGold>;
var oreNuggetTinn = <ore:nuggetTin>;
var oreIngotGold = <ore:ingotGold>;
var oreIngotTinn = <ore:ingotTin>;
var dyeRed = <ore:dyeRed>;

var blockQuarzGlass = <appliedenergistics2:tile.BlockQuartzGlass>;

var itemCalcProcessor = <appliedenergistics2:item.ItemMultiMaterial:23>;
var itemEngProcessor = <appliedenergistics2:item.ItemMultiMaterial:24>;
var itemLogicProcessor = <appliedenergistics2:item.ItemMultiMaterial:22>;

var item1kFluidStorageComponente = <ae2fc:fluid_part>;
var item4kFluidStorageComponente = <ae2fc:fluid_part:1>;
var item16kFluidStorageComponente = <ae2fc:fluid_part:2>;
var item64kFluidStorageComponente = <ae2fc:fluid_part:3>;
var item256kFluidStorageComponente = <ae2fc:fluid_part:4>;
var item1024kFluidStorageComponente = <ae2fc:fluid_part:5>;
var item4096kFluidStorageComponente = <ae2fc:fluid_part:6>;
var item16384kFluidStorageComponente = <ae2fc:fluid_part:7>;

// 4k Fluid Storage Componente
recipes.remove(item4kFluidStorageComponente);
recipes.addShaped(item4kFluidStorageComponente, [[dyeRed, itemCalcProcessor, dyeRed], [oreNuggetGold, blockQuarzGlass, oreNuggetTinn], [dyeRed, item1kFluidStorageComponente, dyeRed]]);

// 16k Fluid Storage Componente
recipes.remove(item16kFluidStorageComponente);
recipes.addShaped(item16kFluidStorageComponente, [[dyeRed, itemLogicProcessor, dyeRed], [oreNuggetGold, blockQuarzGlass, oreNuggetTinn], [dyeRed, item4kFluidStorageComponente, dyeRed]]);

// 64k Fluid Storage Componente
recipes.remove(item64kFluidStorageComponente);
recipes.addShaped(item64kFluidStorageComponente, [[dyeRed, itemEngProcessor, dyeRed], [oreIngotGold, blockQuarzGlass, oreIngotTinn], [dyeRed, item16kFluidStorageComponente, dyeRed]]);

// 256k Fluid Storage Componente
recipes.remove(item256kFluidStorageComponente);
recipes.addShaped(item256kFluidStorageComponente, [[dyeRed, itemCalcProcessor, dyeRed], [oreIngotGold, blockQuarzGlass, oreIngotTinn], [dyeRed, item64kFluidStorageComponente, dyeRed]]);

// 1024k Fluid Storage Componente
recipes.remove(item1024kFluidStorageComponente);
recipes.addShaped(item1024kFluidStorageComponente, [[dyeRed, itemLogicProcessor, dyeRed], [oreIngotGold, blockQuarzGlass, oreIngotTinn], [dyeRed, item256kFluidStorageComponente, dyeRed]]);

// 4096k Fluid Storage Componente
recipes.remove(item4096kFluidStorageComponente);
recipes.addShaped(item4096kFluidStorageComponente, [[dyeRed, itemEngProcessor, dyeRed], [oreIngotGold, blockQuarzGlass, oreIngotTinn], [dyeRed, item1024kFluidStorageComponente, dyeRed]]);

// 16384k Fluid Storage Componente
recipes.remove(item16384kFluidStorageComponente);
recipes.addShaped(item16384kFluidStorageComponente, [[dyeRed, itemCalcProcessor, dyeRed], [oreIngotGold, blockQuarzGlass, oreIngotTinn], [dyeRed, item4096kFluidStorageComponente, dyeRed]]);
