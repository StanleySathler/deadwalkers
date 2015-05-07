getResourceRootElement(getThisResource())

--[[ table structure:
	[1] item name
	[2] item model
	[3] item scale
	[4] item rx position
	[5] percentage of spawn
]]
local itemTable = {
  farm = {
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      13
    },
    {
      gameMedicItems["Bandage"]["name"],
      1578,
      0.5,
      0,
      4
    },
    {
      gameFoodItems["FullWaterBottle"]["name"],
      2683,
      1,
      0,
      6
    },
    {
      gameFoodItems["PastaCan"]["name"],
      2770,
      1,
      0,
      6
    },
    {
      gameFoodItems["BeansCan"]["name"],
      2601,
      1,
      0,
      6
    },
    {
      gameFoodItems["Burger"]["name"],
      2768,
      1,
      0,
      6
    },
    {
      gameFoodItems["EmptySodaCan"]["name"],
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      gameFoodItems["FullSodaCan"]["name"],
      2647,
      1,
      0,
      9
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      10
    },
    {
      gameWeapons["Knife"]["name"],
      335,
      1,
      90,
      4
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      8
    },
    {
      gameWeapons["DesertEagle"]["name"],
      348,
      1,
      90,
      0.2
    },
    {
      gameMedicItems["Morphine"]["name"],
      1579,
      1,
      0,
      4
    },
    {
      Item_Tent,
      1279,
      1,
      0,
      0.5
    },
    {
      gameWeapons["Pistol"]["name"],
      346,
      1,
      90,
      4
    },
    {
      gameMedicItems["Painkiller"]["name"],
      2709,
      3,
      0,
      3.5
    },
    {
      gameWeapons["CountryRifle"]["name"],
      357,
      1,
      90,
      0.3
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      0.3
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      2.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      6
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      2
    },
	{
	  Item_CDKRose,
	  1961,
	  0.3,
	  90,
	  6
	}
  },
  residential = {
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      5
    },
	{
	  Item_CDKRose,
	  1961,
	  0.3,
	  90,
	  3
	},
    {
      gameWeapons["Pistol"]["name"],
      346,
      1,
      90,
      1.5
    },
    {
      gameWeapons["SilencedPistol"]["name"],
      347,
      1,
      90,
      1.9
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      0.1
    },
    {
      gameWeapons["Uzi"]["name"],
      352,
      1,
      90,
      1
    },
    {
      gameWeapons["Knife"]["name"],
      335,
      1,
      90,
      3
    },
    {
      gameWeapons["Katana"]["name"],
      339,
      1,
      90,
      1
    },
    {
      gameFoodItems["Pizza"]["name"],
      1582,
      1,
      0,
      7
    },
    {
      gameFoodItems["FullSodaCan"]["name"],
      2647,
      1,
      0,
      7
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      9
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      9
    },
    {
      gameFoodItems["Milk"]["name"],
      2856,
      1,
      0,
      7
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      gameMedicItems["Painkiller"]["name"],
      2709,
      3,
      0,
      7
    },
    {
      gameFoodItems["EmptySodaCan"]["name"],
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      gameWeapons["Grenade"]["name"],
      342,
      1,
      0,
      0.01
    },
    {
      gameWeapons["DesertEagle"]["name"],
      348,
      1,
      90,
      0.4
    },
    {
      Weapon_SawnOff,
      350,
      1,
      90,
      0.3
    },
    {
      gameWeapons["SPAZ12"]["name"],
      351,
      1,
      90,
      0.4
    },
    {
      gameWeapons["MP5"]["name"],
      353,
      1,
      90,
      0.4
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      3
    },
    {
      gameMedicItems["HeatPack"]["name"],
      1576,
      5,
      0,
      6
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      gameWeapons["CountryRifle"]["name"],
      357,
      1,
      90,
      0.3
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      1.5
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      1
    },
    {
      gameMedicItems["Morphine"]["name"],
      1579,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      9
    },
    {
      Item_Map,
      1277,
      1,
      0,
      10
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      3
    },
    {
      gameFoodItems["PastaCan"]["name"],
      2770,
      1,
      0,
      7
    },
    {
      gameFoodItems["BeansCan"]["name"],
      2601,
      1,
      0,
      7
    },
    {
      gameFoodItems["Burger"]["name"],
      2768,
      1,
      0,
      7
    },
    {
      gameWeapons["GolfClub"]["name"],
      333,
      1,
      90,
      3
    },
    {
      gameWeapons["BaseballBat"]["name"],
      336,
      1,
      90,
      3
    },
    {
      gameWeapons["Shovel"]["name"],
      337,
      1,
      90,
      3
    }
  },
  military = {
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      2
    },
	{
	  Item_Armor,
	  1272,
	  2,
	  0,
	  1
	},
    {
      gameWeapons["Pistol"]["name"],
      346,
      1,
      90,
      5
    },
    {
      gameWeapons["SilencedPistol"]["name"],
      347,
      1,
      90,
      4
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      3
    },
    {
      gameWeapons["Uzi"]["name"],
      352,
      1,
      90,
      4
    },
    {
      gameWeapons["Knife"]["name"],
      335,
      1,
      90,
      2.4
    },
    {
      gameWeapons["Katana"]["name"],
      339,
      1,
      90,
      2.1
    },
	--[[
    {
      gameFoodItems["Pizza"]["name"],
      1582,
      1,
      0,
      2
    },
	]]
	--[[
    {
      gameFoodItems["FullSodaCan"]["name"],
      2647,
      1,
      0,
      2
    },
	]]
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      4
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      4
    },
    {
      gameFoodItems["Milk"]["name"],
      2856,
      1,
      0,
      1
    },
    {
      gameMedicItems["Painkiller"]["name"],
      2709,
      3,
      0,
      4
    },
	--[[
    {
      gameFoodItems["EmptySodaCan"]["name"],
      2673,
      0.5,
      0,
      12
    },
	]]
	--[[
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
	]]
    {
      gameWeapons["Grenade"]["name"],
      342,
      1,
      0,
      0.5
    },
    {
      Weapon_SawnOff,
      350,
      1,
      90,
      2.3
    },
    {
      gameWeapons["SPAZ12"]["name"],
      351,
      1,
      90,
      2.3
    },
    {
      gameWeapons["MP5"]["name"],
      353,
      1,
      90,
      4
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      4
    },
    {
      gameMedicItems["HeatPack"]["name"],
      1576,
      5,
      0,
      3
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      gameWeapons["CountryRifle"]["name"],
      357,
      1,
      90,
      3.5
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      4
    },
    {
      gameWeapons["NightVision"]["name"],
      368,
      1,
      90,
      4
    },
    {
      gameWeapons["Camera"]["name"],
      369,
      1,
      0,
      4
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      2
    },
    {
      gameMedicItems["Morphine"]["name"],
      1579,
      1,
      0,
      4
    },
    {
      Skin_Military,
      1247,
      2,
      0,
      4.5
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      3
    },
    {
      gameWeapons["AK47"]["name"],
      355,
      1,
      90,
      4.8
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      3
    },
    {
      Item_Map,
      1277,
      1,
      0,
      7
    },
    {
      Item_Toolbox,
      2969,
      0.5,
      0,
      2
    },
    {
      "Motor",
      929,
      0.3,
      0,
      2
    },
    {
      Item_Tent,
      1279,
      1,
      0,
      4.5
    },
    {
      Skin_GhillieDesert,
      1213,
      2,
      0,
      0.3
    },
	{
	  Skin_GhillieForest,
	  1213,
	  2,
	  0,
	  0.3
	},
    {
      gameWeapons["M4"]["name"],
      356,
      1,
      90,
      3.8
    },
    {
      gameWeapons["Sniper"]["name"],
      358,
      1,
      90,
      3.3
    },
    {
      gameWeapons["Infrared"]["name"],
      369,
      1,
      90,
      3
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      5
    },
    {
      "Czech Backpack",
      1239,
      1,
      0,
      3
    },
    {
      Item_Radio,
      330,
      1,
      0,
      6
    },
    {
      "Coyote Backpack",
      1252,
      1,
      0,
      2
    },
    {
      gameWeapons["Shovel"]["name"],
      337,
      1,
      90,
      1
    }
  },
  industrial = {
    {
      Item_WireFence,
      933,
      1,
      0,
      7
    },
    {
      Item_Toolbox,
      2969,
      0.5,
      0,
      6
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      4
    },
    {
      "Motor",
      929,
      0.3,
      0,
      3.5
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      3
    },
    {
      gameFoodItems["FullWaterBottle"]["name"],
      2683,
      1,
      0,
      4
    },
    {
      gameFoodItems["PastaCan"]["name"],
      2770,
      1,
      0,
      4
    },
    {
      gameFoodItems["BeansCan"]["name"],
      2601,
      1,
      0,
      4
    },
    {
      gameFoodItems["Burger"]["name"],
      2768,
      1,
      0,
      4
    },
    {
      gameFoodItems["EmptySodaCan"]["name"],
      2673,
      0.5,
      0,
      12
    },
	--[[
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      10
    },
	]]
    {
      gameFoodItems["FullSodaCan"]["name"],
      2647,
      1,
      0,
      4
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      6
    },
    {
      Item_FullPatrol,
      1650,
      1,
      0,
      1.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      3
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      2
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      2
    },
    {
      gameWeapons["Pistol"]["name"],
      346,
      1,
      90,
      1.5
    },
    {
      gameWeapons["Uzi"]["name"],
      352,
      1,
      90,
      2
    },
    {
      gameWeapons["Knife"]["name"],
      335,
      1,
      90,
      2
    },
    {
      gameWeapons["Katana"]["name"],
      339,
      1,
      90,
      1.5
    },
    {
      gameFoodItems["Pizza"]["name"],
      1582,
      1,
      0,
      4
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      5
    },
    {
      gameFoodItems["Milk"]["name"],
      2856,
      1,
      0,
      4
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      "Coyote Backpack",
      1252,
      1,
      0,
      1.1
    },
    {
      Item_Radio,
      330,
      1,
      0,
      6
    },
    {
      gameWeapons["GolfClub"]["name"],
      333,
      1,
      90,
      1.5
    },
    {
      gameWeapons["BaseballBat"]["name"],
      336,
      1,
      90,
      1.5
    },
    {
      gameWeapons["Shovel"]["name"],
      337,
      1,
      90,
      1.5
    },
    {
      gameWeapons["NightVision"]["name"],
      368,
      1,
      90,
      1.5
    },
	{
	  Item_CDKRose,
	  1961,
	  0.3,
	  90,
	  3
	}
  },
  supermarket = {
    {
      gameFoodItems["RawMeat"]["name"],
      2804,
      0.5,
      90,
      8
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      5
    },
    {
      gameWeapons["Pistol"]["name"],
      346,
      1,
      90,
      3.5
    },
    {
      gameWeapons["Uzi"]["name"],
      352,
      1,
      90,
      2
    },
    {
      gameWeapons["Knife"]["name"],
      335,
      1,
      90,
      3
    },
    {
      gameWeapons["Katana"]["name"],
      339,
      1,
      90,
      2.1
    },
    {
      gameFoodItems["Pizza"]["name"],
      1582,
      1,
      0,
      7
    },
    {
      gameFoodItems["FullSodaCan"]["name"],
      2647,
      1,
      0,
      7
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      5
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      6
    },
    {
      gameFoodItems["Milk"]["name"],
      2856,
      1,
      0,
      7
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      gameFoodItems["PastaCan"]["name"],
      2770,
      1,
      0,
      7
    },
    {
      gameFoodItems["BeansCan"]["name"],
      2601,
      1,
      0,
      7
    },
    {
      gameFoodItems["Burger"]["name"],
      2768,
      1,
      0,
      7
    },
    {
      gameMedicItems["Painkiller"]["name"],
      2709,
      3,
      0,
      7
    },
    {
      gameFoodItems["EmptySodaCan"]["name"],
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      gameWeapons["MP5"]["name"],
      353,
      1,
      90,
      0.5
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      3
    },
    {
      gameMedicItems["HeatPack"]["name"],
      1576,
      5,
      0,
      6
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      gameWeapons["CountryRifle"]["name"],
      357,
      1,
      90,
      0.2
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      3
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      1
    },
    {
      gameMedicItems["Morphine"]["name"],
      1579,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      3.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      4
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      1
    },
    {
      Item_Radio,
      330,
      1,
      0,
      6
    },
    {
      gameWeapons["GolfClub"]["name"],
      333,
      1,
      90,
      1.9
    },
    {
      gameWeapons["BaseballBat"]["name"],
      336,
      1,
      90,
      1.4
    },
    {
      gameWeapons["Shovel"]["name"],
      337,
      1,
      90,
      0.3
    }
  },
  other = {
    {
      gameFoodItems["RawMeat"]["name"],
      2804,
      0.5,
      90
    },
    {
      gameFoodItems["CookedMeat"]["name"],
      2806,
      0.5,
      90
    },
    {
      Item_FullPatrol,
      1650,
      1,
      0
    },
    {
      gameFoodItems["EmptyWaterBottle"]["name"],
      2683,
      1,
      0
    },
    {
      Skin_Survivor,
      1577,
      2,
      0
    },
    {
      gameWeapons["NightVision"]["name"],
      368,
      1,
      90
    },
    {
      gameWeapons["Infrared"]["name"],
      369,
      1,
      90
    },
    {
      gameWeapons["Shotgun_Ammo"]["name"],
      2358,
      2,
      0
    },
    {
      gameWeapons["SawnOff_Ammo"]["name"],
      2358,
      2,
      0
    },
    {
      gameWeapons["SPAZ12_Ammo"]["name"],
      2358,
      2,
      0
    },
    {
      gameWeapons["MP5_Ammo"]["name"],
      2358,
      2,
      0
    },
    {
      gameWeapons["AK47_Ammo"]["name"],
      1271,
      2,
      0
    },
    {
      gameWeapons["M4_Ammo"]["name"],
      1271,
      2,
      0
    },
    {
      gameWeapons["Pistol_Ammo"]["name"],
      3013,
      2,
      0
    },
    {
      gameWeapons["SilencedPistol_Ammo"]["name"],
      3013,
      2,
      0
    },
    {
      gameWeapons["DesertEagle_Ammo"]["name"],
      3013,
      2,
      0
    },
    {
      gameWeapons["Sniper_Ammo"]["name"],
      2358,
      2,
      0
    },
    {
      gameWeapons["CountryRifle_Ammo"]["name"],
      2358,
      2,
      0
    },
    {
      gameWeapons["Uzi_Ammo"]["name"],
      2041,
      2,
      0
    },
    {
      gameWeapons["MP5_Ammo"]["name"],
      2041,
      2,
      0
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      5
    },
    {
      Item_WoodPile,
      1463,
      0.4,
      0,
      5
    },
    {
      gameWeapons["Pistol"]["name"],
      346,
      1,
      90,
      3.5
    },
    {
      gameWeapons["Uzi"]["name"],
      352,
      1,
      90,
      2
    },
    {
      gameWeapons["Knife"]["name"],
      335,
      1,
      90,
      2.5
    },
    {
      gameWeapons["Katana"]["name"],
      339,
      1,
      90,
      1.8
    },
    {
      gameFoodItems["Pizza"]["name"],
      1582,
      1,
      0,
      7
    },
    {
      gameFoodItems["FullSodaCan"]["name"],
      2647,
      1,
      0,
      7
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      5
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      6
    },
    {
      gameFoodItems["Milk"]["name"],
      2856,
      1,
      0,
      5
    },
    {
      "Assault Pack (ACU)",
      3026,
      1,
      0,
      6
    },
    {
      gameMedicItems["Painkiller"]["name"],
      2709,
      3,
      0,
      7
    },
    {
      gameFoodItems["EmptySodaCan"]["name"],
      2673,
      0.5,
      0,
      12
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      12
    },
    {
      gameWeapons["MP5"]["name"],
      353,
      1,
      90,
      1.5
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      3
    },
    {
      gameMedicItems["HeatPack"]["name"],
      1576,
      5,
      0,
      6
    },
    {
      Item_WireFence,
      933,
      1,
      0,
      1
    },
    {
      gameWeapons["CountryRifle"]["name"],
      357,
      1,
      90,
      1.5
    },
    {
      "Alice Pack",
      1248,
      1,
      0,
      1.5
    },
    {
      "Coyote Backpack",
      1252,
      1,
      0,
      0.7
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      1
    },
    {
      gameMedicItems["Morphine"]["name"],
      1579,
      1,
      0,
      2
    },
    {
      Skin_Civilian,
      1241,
      2,
      0,
      3.5
    },
    {
      Item_Map,
      1277,
      1,
      0,
      4
    },
    {
      Item_Toolbox,
      2969,
      0.5,
      0,
      3
    },
    {
      "Motor",
      929,
      0.3,
      0,
      3.5
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      2
    },
    {
      gameFoodItems["FullWaterBottle"]["name"],
      2683,
      1,
      0,
      4
    },
    {
      gameWeapons["SilencedPistol"]["name"],
      347,
      1,
      90,
      5
    },
    {
      gameWeapons["Grenade"]["name"],
      342,
      1,
      0,
      0.5
    },
    {
      Weapon_SawnOff,
      350,
      1,
      90,
      2
    },
    {
      gameWeapons["SPAZ12"]["name"],
      351,
      1,
      90,
      1.9
    },
    {
      gameWeapons["Camera"]["name"],
      369,
      1,
      0,
      4
    },
    {
      Skin_Military,
      1247,
      2,
      0,
      4.5
    },
    {
      gameWeapons["AK47"]["name"],
      355,
      1,
      90,
      0.9
    },
    {
      Skin_GhillieDesert,
      1213,
      2,
      0,
      0.01
    },
	{
      Skin_GhillieForest,
      1213,
      2,
      0,
      0.01
    },
    {
      gameWeapons["M4"]["name"],
      356,
      1,
      90,
      0.9
    },
    {
      gameWeapons["Sniper"]["name"],
      358,
      1,
      90,
      0.3
    },
    {
      gameMedicItems["Bandage"]["name"],
      1578,
      0.5,
      0,
      4
    },
    {
      gameFoodItems["PastaCan"]["name"],
      2770,
      1,
      0,
      5
    },
    {
      gameFoodItems["BeansCan"]["name"],
      2601,
      1,
      0,
      6
    },
    {
      gameFoodItems["Burger"]["name"],
      2768,
      1,
      0,
      2
    },
    {
      Item_Tent,
      1279,
      1,
      0,
      0.5
    },
    {
      gameWeapons["Pistol"]["name"],
      346,
      1,
      90,
      3
    },
    {
      gameWeapons["DesertEagle"]["name"],
      348,
      1,
      90,
      3
    },
    {
      Item_GPS,
      2976,
      1,
      0,
      1
    },
    {
      gameMedicItems["MedicKit"]["name"],
      2891,
      2.2,
      0
    },
    {
      gameMedicItems["BloodBag"]["name"],
      1580,
      1,
      0
    },
    {
      Item_Radio,
      2966,
      0.5,
      0,
      5
    },
    {
      gameWeapons["GolfClub"]["name"],
      333,
      1,
      90,
      1.9
    },
    {
      gameWeapons["BaseballBat"]["name"],
      336,
      1,
      90,
      1.4
    },
    {
      gameWeapons["Shovel"]["name"],
      337,
      1,
      90,
      1.5
    }
  }
}
weaponAmmoTable = {
  [gameWeapons["Pistol_Ammo"]["name"]] = {
    {gameWeapons["Pistol"]["name"], 22}
  },
  [gameWeapons["SilencedPistol_Ammo"]["name"]] = {
    {gameWeapons["SilencedPistol"]["name"], 23}
  },
  [gameWeapons["DesertEagle_Ammo"]["name"]] = {
    {
      gameWeapons["DesertEagle"]["name"],
      24
    }
  },
  [gameWeapons["Uzi_Ammo"]["name"]] = {
    {gameWeapons["Uzi"]["name"], 28}
  },
  [gameWeapons["MP5_Ammo"]["name"]] = {
    {gameWeapons["MP5"]["name"], 29}
  },
  [gameWeapons["AK47_Ammo"]["name"]] = {
    {gameWeapons["AK47"]["name"], 30}
  },
  [gameWeapons["M4_Ammo"]["name"]] = {
    {gameWeapons["M4"]["name"], 31}
  },
  [gameWeapons["Shotgun_Ammo"]["name"]] = {
    {
      Weapon_Shotgun,
      25
    }
  },
  [gameWeapons["SawnOff_Ammo"]["name"]] = {
    {
      Weapon_SawnOff,
      26
    }
  },
  [gameWeapons["SPAZ12_Ammo"]["name"]] = {
    {
      gameWeapons["SPAZ12"]["name"],
      27
    }
  },
  [gameWeapons["Sniper_Ammo"]["name"]] = {
    {gameWeapons["Sniper"]["name"], 34}
  },
  [gameWeapons["CountryRifle_Ammo"]["name"]] = {
    {
      gameWeapons["CountryRifle"]["name"],
      33
    }
  },
  ["others"] = {
    {Weapon_Parachute, 46},
    {gameWeapons["TearGas"]["name"], 17},
    {gameWeapons["Grenade"]["name"], 16},
    {
      gameWeapons["Knife"]["name"],
      4
    },
    {gameWeapons["Katana"]["name"], 8},
    {gameWeapons["Camera"]["name"], 43},
    {gameWeapons["BaseballBat"]["name"],5},
    {gameWeapons["GolfClub"]["name"], 2},
    {gameWeapons["Shovel"]["name"], 6},
    {Item_Radio,1}
  }
}
function getWeaponAmmoType(weaponName, notOthers)
  if not notOthers then
    for i, weaponData in ipairs(weaponAmmoTable.others) do
      if weaponName == weaponData[1] then
        return weaponData[1], weaponData[2]
      end
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Pistol_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["Pistol_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["SilencedPistol_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["SilencedPistol_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["DesertEagle_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["DesertEagle_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Uzi_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["Uzi_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["MP5_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["MP5_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["AK47_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["AK47_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["M4_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["M4_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Shotgun_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["Shotgun_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["SawnOff_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["SawnOff_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["SPAZ12_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["SPAZ12_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["Sniper_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["Sniper_Ammo"]["name"], weaponData[2]
    end
  end
  for i, weaponData in ipairs(weaponAmmoTable[gameWeapons["CountryRifle_Ammo"]["name"]]) do
    if weaponName == weaponData[1] then
      return gameWeapons["CountryRifle_Ammo"]["name"], weaponData[2]
    end
  end
  return false
end


-- Creates pickup // Cria os itens
function createItemPickup(item, x, y, z, tableStringName)
  if item and x and y and z then
    do
      local object = createObject(itemTable[tostring(tableStringName)][item][2], x, y, z - 0.875, itemTable[tostring(tableStringName)][item][4], 0, math.random(0, 360))
      setObjectScale(object, itemTable[tostring(tableStringName)][item][3])
      setElementCollisionsEnabled(object, false)
      setElementFrozen(object, true)
      local col = createColSphere(x, y, z, 0.75)
      setElementData(col, "item", itemTable[tostring(tableStringName)][item][1])
      setElementData(col, "parent", object)
      setTimer(function()
        if isElement(col) then
          destroyElement(col)
          destroyElement(object)
        end
      end, 900000, 1)
      return object
    end
  end
end


function table.size(tab)
  local length = 0
  for _ in pairs(tab) do
    length = length + 1
  end
  return length
end


function math.percentChance(percent, repeatTime)
  local hits = 0
  for i = 1, repeatTime do
    local number = math.random(0, 200) / 2
    if percent >= number then
      hits = hits + 1
    end
  end
  return hits
end


function createItemLoot(lootPlace, x, y, z, id)
  col = createColSphere(x, y, z, 1.25)
  setElementData(col, "itemloot", true)
  setElementData(col, "parent", lootPlace)
  setElementData(col, "MAX_Slots", 12)
  for i, item in ipairs(itemTable[lootPlace]) do
    local value = math.percentChance(item[5], math.random(1, 2))
    setElementData(col, item[1], value)
    local ammoData, weapID = getWeaponAmmoType(item[1], true)
    if ammoData and value > 0 then
      setElementData(col, ammoData, math.random(1, 2))
    end
  end
  refreshItemLoot(col, lootPlace)
  return col
end


function refreshItemLoot(col, place)
  local objects = getElementData(col, "objectsINloot")
  if objects then
    if objects[1] ~= nil then
      destroyElement(objects[1])
    end
    if objects[2] ~= nil then
      destroyElement(objects[2])
    end
    if objects[3] ~= nil then
      destroyElement(objects[3])
    end
  end
  local counter = 0
  local obejctItem = {}
  for i, item in ipairs(itemTable.other) do
    if getElementData(col, item[1]) and getElementData(col, item[1]) > 0 then
      if counter == 3 then
        break
      end
      counter = counter + 1
      local x, y, z = getElementPosition(col)
      obejctItem[counter] = createObject(item[2], x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, item[4])
      setObjectScale(obejctItem[counter], item[3])
      setElementCollisionsEnabled(obejctItem[counter], false)
      setElementFrozen(obejctItem[counter], true)
    end
  end
  if obejctItem[1] == nil then
    local x, y, z = getElementPosition(col)
    obejctItem[1] = createObject(1463, x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, 0)
    setObjectScale(obejctItem[1], 0)
    setElementCollisionsEnabled(obejctItem[1], false)
    setElementFrozen(obejctItem[1], true)
  end
  if obejctItem[2] == nil then
    local x, y, z = getElementPosition(col)
    obejctItem[2] = createObject(1463, x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, 0)
    setObjectScale(obejctItem[2], 0)
    setElementCollisionsEnabled(obejctItem[2], false)
    setElementFrozen(obejctItem[2], true)
  end
  if obejctItem[3] == nil then
    local x, y, z = getElementPosition(col)
    obejctItem[3] = createObject(1463, x + math.random(-1, 1), y + math.random(-1, 1), z - 0.875, 0)
    setObjectScale(obejctItem[3], 0)
    setElementCollisionsEnabled(obejctItem[3], false)
    setElementFrozen(obejctItem[3], true)
  end
  setElementData(col, "objectsINloot", {
    obejctItem[1],
    obejctItem[2],
    obejctItem[3]
  })
end
addEvent("refreshItemLoot", true)
addEventHandler("refreshItemLoot", getRootElement(), refreshItemLoot)


function createPickupsOnServerStart()
  iPickup = 0
  for i, pos in ipairs(pickupPositions.residential) do
    iPickup = iPickup + 1
    createItemLoot("residential", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart2, 5000, 1)
end


function createPickupsOnServerStart2()
  for i, pos in ipairs(pickupPositions.industrial) do
    iPickup = iPickup + 1
    createItemLoot("industrial", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart3, 5000, 1)
end


function createPickupsOnServerStart3()
  for i, pos in ipairs(pickupPositions.farm) do
    iPickup = iPickup + 1
    createItemLoot("farm", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart4, 5000, 1)
end


function createPickupsOnServerStart4()
  for i, pos in ipairs(pickupPositions.supermarket) do
    iPickup = iPickup + 1
    createItemLoot("supermarket", pos[1], pos[2], pos[3], iPickup)
  end
  setTimer(createPickupsOnServerStart5, 5000, 1)
end


function createPickupsOnServerStart5()
  for i, pos in ipairs(pickupPositions.military) do
    iPickup = iPickup + 1
    createItemLoot("military", pos[1], pos[2], pos[3], iPickup)
  end
end
createPickupsOnServerStart()


vehicleFuelTable = {
  {489, 100},
  {500, 60},
  {445, 80},
  {422, 80},
  {470, 100},
  {468, 30},
  {433, 140},
  {437, 140},
  {509, 0},
  {487, 60},
  {497, 60},
  {453, 60}
}

function getVehicleMaxFuel(loot)
  local modelID = getElementModel(getElementData(loot, "parent"))
  for i, vehicle in ipairs(vehicleFuelTable) do
    if modelID == vehicle[1] then
      return vehicle[2]
    end
  end
  return false
end


function onPlayerTakeItemFromGround(itemName, col)
  itemPlus = 1
  if itemName == gameWeapons["Pistol_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["SilencedPistol_Ammo"]["name"] then
    itemPlus = 15
  elseif itemName == gameWeapons["DesertEagle_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["Uzi_Ammo"]["name"] then
    itemPlus = 30
  elseif itemName == gameWeapons["MP5_Ammo"]["name"] then
    itemPlus = 20
  elseif itemName == gameWeapons["AK47_Ammo"]["name"] then
    itemPlus = 30
  elseif itemName == gameWeapons["M4_Ammo"]["name"] then
    itemPlus = 20
  elseif itemName == gameWeapons["Shotgun_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["SawnOff_Ammo"]["name"] then
    itemPlus = 6
  elseif itemName == gameWeapons["SPAZ12_Ammo"]["name"] then
    itemPlus = 7
  elseif itemName == gameWeapons["Sniper_Ammo"]["name"] then
    itemPlus = 5
  elseif itemName == gameWeapons["CountryRifle_Ammo"]["name"] then
    itemPlus = 10
  elseif itemName == gameWeapons["M4"]["name"] or itemName == gameWeapons["AK47"]["name"] or itemName == gameWeapons["Sniper"]["name"] or itemName == Weapon_Shotgun or itemName == gameWeapons["SPAZ12"]["name"] or itemName == Weapon_SawnOff or itemName == gameWeapons["CountryRifle"]["name"] then
    removeBackWeaponOnDrop()
  end
  local x, y, z = getElementPosition(source)
  local id, ItemType = getItemTablePosition(itemName)
  setElementData(source, itemName, (getElementData(source, itemName) or 0) + itemPlus)
  destroyElement(getElementData(col, "parent"))
  destroyElement(col)
end
addEvent("onPlayerTakeItemFromGround", true)
addEventHandler("onPlayerTakeItemFromGround", getRootElement(), onPlayerTakeItemFromGround)


function onPlayerChangeLoot(loot)
  local players = getElementsWithinColShape(loot, "player")
  for theKey, player in ipairs(players) do
    triggerClientEvent(player, "refreshLootManual", player, loot)
  end
end
addEvent("onPlayerChangeLoot", true)
addEventHandler("onPlayerChangeLoot", getRootElement(), onPlayerChangeLoot)


function playerDropAItem(itemName)
  local x, y, z = getElementPosition(source)
  local item, itemString = getItemTablePosition(itemName)
  local itemPickup = createItemPickup(item, x + math.random(-1.25, 1.25), y + math.random(-1.25, 1.25), z, itemString)
end
addEvent("playerDropAItem", true)
addEventHandler("playerDropAItem", getRootElement(), playerDropAItem)


function getItemTablePosition(itema)
  for id, item in ipairs(itemTable[tostring("other")]) do
    if itema == item[1] then
      return id, "other"
    end
  end
  return item, itemString
end


function refreshItemLoots()
  outputChatBox("#ffaa00[ATENÇÃO] #ffffff OS ÍTENS ESTÃO SENDO RESPAWNADOS. AGUARDE, EM BREVE O LAG SUMIRÁ.", getRootElement(), 255, 255, 255, true)
  for i, loots in ipairs(getElementsByType("colshape")) do
    local itemloot = getElementData(loots, "itemloot")
    if itemloot then
      local objects = getElementData(loots, "objectsINloot")
      if objects then
        if objects[1] ~= nil then
          destroyElement(objects[1])
        end
        if objects[2] ~= nil then
          destroyElement(objects[2])
        end
        if objects[3] ~= nil then
          destroyElement(objects[3])
        end
      end
      destroyElement(loots)
    end
  end
  createPickupsOnServerStart()
  setTimer(refreshItemLootPoints, gameplayVariables.itemrespawntimer, 1)
end


function refreshItemLootPoints()
  local time = getRealTime()
  local hour = time.hour
  outputChatBox("#ff2200[ATENÇÃO] #ffffff OS ÍTENS SERÃO RESPAWNADOS EM 1 MINUTO. UM LAG OCORRERÁ, NÃO SE DESESPERE!", getRootElement(), 255, 255, 255, true)
  setTimer(refreshItemLoots, 30000, 1)
end
setTimer(refreshItemLootPoints, gameplayVariables.itemrespawntimer, 1)
