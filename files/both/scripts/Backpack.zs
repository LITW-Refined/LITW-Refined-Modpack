val tannedLeather = <Backpack:tannedLeather>;
val backpackDef = <Backpack:backpack>.definition;

// Add colored recipes
// var metaItemBackPack = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16] as int[];
// for metaID in metaItemBackPack {
//     val backpackSColor = backpackDef.makeStack(metaID);
//     val backpackMColor = backpackDef.makeStack(metaID + 100);
//     val backpackLColor = backpackDef.makeStack(metaID + 200);
//     recipes.addShaped(backpackMColor, [[tannedLeather, tannedLeather, tannedLeather], [tannedLeather, backpackSColor, tannedLeather], [tannedLeather, tannedLeather, tannedLeather]]);
//     recipes.addShaped(backpackLColor, [[tannedLeather, tannedLeather, tannedLeather], [tannedLeather, backpackMColor, tannedLeather], [tannedLeather, tannedLeather, tannedLeather]]);
// }
for metaID in 0 to 17 {
    val backpackSColor = backpackDef.makeStack(metaID);
    val backpackMColor = backpackDef.makeStack(metaID + 100);
    val backpackLColor = backpackDef.makeStack(metaID + 200);
    recipes.addShaped(backpackMColor, [
        [tannedLeather, tannedLeather, tannedLeather],
        [tannedLeather, backpackSColor, tannedLeather],
        [tannedLeather, tannedLeather, tannedLeather]]);
    recipes.addShaped(backpackLColor, [
        [tannedLeather, tannedLeather, tannedLeather],
        [tannedLeather, backpackMColor, tannedLeather],
        [tannedLeather, tannedLeather, tannedLeather]]);
}
