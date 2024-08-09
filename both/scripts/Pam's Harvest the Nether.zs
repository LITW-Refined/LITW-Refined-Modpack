var glowFlower = <harvestthenether:glowFlower>;
var dustGlowStone = <minecraft:glowstone_dust>;

// Glow Flowers (4 statt 2 Staub pro 3 Blumen)
recipes.removeShapeless(dustGlowStone * 2, [glowFlower, glowFlower, glowFlower]);
recipes.addShapeless(dustGlowStone * 4, [glowFlower, glowFlower, glowFlower]);