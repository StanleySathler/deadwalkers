﻿--[[
#---------------------------------------------------------------#
----*			DayZ MTA Script vehicle_spawns.lua			*----
----* Núcleo: Marwin W., Germany, Lower Saxony, Otterndorf	*----
----* Tradutor/Desenvolvedor: Stanley Sathler				*----
----*														*----
#---------------------------------------------------------------#
]]

--[[
	# ------------------------------------------------------------------------- #
	----* Items list - Translate here if you want to change item's names *-------
	# ------------------------------------------------------------------------- #
]]

	-- Primary Weapons
	Weapon_Shotgun 		= "Escopeta"
	Weapon_ShotgunAmmo 	= "Munição p/ Escopeta"
	Weapon_SawnOff 		= "Sawn-Off"
	Weapon_SawnOffAmmo 	= "Munição p/ Sawn-Off"
	Weapon_Spas			= "SPAS-12"
	Weapon_SpasAmmo 	= "Munição p/ SPAS-12"
	
	Weapon_M4 		= "M16A2"
	Weapon_M4Ammo	= "Munição p/ M16A2"
	Weapon_AK 		= "AK-47"
	Weapon_AKAmmo	= "Munição p/ AK-47"
	
	Weapon_Sniper 		= "Sniper"
	Weapon_SniperAmmo 	= "Munição p/ Sniper"
	Weapon_Country 		= "Country Rifle"
	Weapon_CountryAmmo 	= "Munição p/ Country"
	
	-- Secondary Weapons
	Weapon_Pistol		= "Pistola"
	Weapon_PistolAmmo 	= "Munição p/ Pistola"
	Weapon_Silenced 	= "Pistola Silenciosa"
	Weapon_SilencedAmmo = "Munição p/ P. Silenciosa"
	Weapon_Desert		= "Desert Eagle"
	Weapon_DesertAmmo 	= "Munição p/ Desert"
	
	Weapon_Uzi		= "Micro-Uzi"
	Weapon_UziAmmo	= "Munição p/ Micro-Uzi"
	Weapon_MP5		= "MP5"
	Weapon_MP5Ammo	= "Munição p/ MP5"
	
	Weapon_Knife	= "Faca"
	Weapon_Katana	= "Machado"
	Weapon_Baseball = "Taco de Beisebol"
	Weapon_Crowbar	= "Pé-de-Cabra"
	Weapon_Shovel	= "Pá"
	
	-- Special Weapons
	Weapon_Binoculars 	= "Binóculos"
	Weapon_Grenade		= "Granada"
	Weapon_TearGas		= "Gás Lacrimogêneo"
	Weapon_Parachute	= "Paraquedas"
	
	-- Food
	Item_Burger 	= "Hambúrguer"
	Item_Pizza		= "Pizza"
	Item_RawMeat	= "Carne Crua"
	Item_CookedMeat = "Carne Cozida"
	Item_PastaCan	= "Comida Enlatada"
	Item_BeansCan	= "Feijão Enlatado"
	
	Item_FullWaterBottle 	= "Garrafa D'água"
	Item_EmptyWaterBottle 	= "Garrafa D'água [vazia]"
	Item_SodaBottle 		= "Lata de Suco"
	Item_EmptySodaCan		= "Lata de Suco [vazia]"
	Item_Milk				= "Leite"
	
	-- Medics
	Item_MedicKit	= "Kit Médico"
	Item_Bandage	= "Curativo"
	Item_BloodBag	= "Bolsa de Sangue"
	Item_HeatPack	= "Bolsa c/ Água Quente"
	Item_Morphine	= "Morfina"
	Item_Painkiller = "Analgésico"
	
	-- Skins
	Skin_Survivor	= "Roupa de Sobrevivente"
	Skin_Civilian	= "Roupa de Civil"
	Skin_GhillieDesert	= "Ghillie Suit (Deserto)"
	Skin_GhillieForest	= "Ghillie Suit (Floresta)"
	Skin_Military	= "Roupa Militar"
	
	-- Items
	Item_RoadFlare		= "Sinalizador"
	Item_WoodPile		= "Lenha"
	Item_ScruffyBurger 	= "Comida Estragada"
	Item_EmptyPatrol 	= "Gasolina [vazio]"
	Item_FullPatrol		= "Gasolina [cheio]"
	Item_WireFence		= "Cerca de Arame"
	Item_Tent			= "Tenda"
	Item_Tire			= "Pneu"
	Item_Armor			= "Colete"
	Item_CDKRose		= "CD: K-Rose"
	
	-- Utils
	Item_Watch		= "Relógio"
	Item_GPS		= "GPS"
	Item_Map		= "Mapa"
	Item_Toolbox	= "Ferramentas"
	Item_BoxOfMatches	= "Caixa de Fósforo"
	Item_Radio		= "Rádio"
	Item_NightVision	= "Visão Noturna"
	Item_InfraredVision = "Visão de Calor"
	
	-- Database keys
	DB_TireInVehicle	= "Pneu_inVehicle" -- Must be the SAME, SAME value of "Item_Tire". SAME value
	DB_EngineInVehicle	= "Motor_inVehicle" -- Must be the SAME, SAME value of "Item_Engine". SAME value
		--[[ What does this do? Simple ... in some parts of the code, the code reuses the name of the item to reference the database. 
		So the name of the item must be the name in the database. ]]
	
	
hunterSpawns = gameplayVariables.hunterspawns
rancherSpawns = gameplayVariables.rancherspawns
mesaSpawns = gameplayVariables.mesaspawns
admiralSpawns = gameplayVariables.admiralspawns
pickupSpawns = gameplayVariables.pickupspawns
patriotSpawns = gameplayVariables.patriotspawns
sanchezSpanws = gameplayVariables.sanchezspawns
barracksSpawns = gameplayVariables.barracksspawns
coachSpawns = gameplayVariables.coachspawns
fisherBootSpawns = gameplayVariables.fisherboatspawns
bikeSpawns = gameplayVariables.bikespawns
maverikSpawns = gameplayVariables.maverickspawns
tentSpawns = gameplayVariables.tentsspawns
heliCrashSites = gameplayVariables.helicrashsides

-- Caixas de hospitais
hospitalPacks = {
  {
    -2670.87890625,
    636.8984375,
    14.453125
  },
  {
    -2637.0556640625,
    635.03125,
    14.453125
  },
  {
    -1515.669921875,
    2519.166015625,
    56.0703125
  },
  {
    -1513.888671875,
    2519.5908203125,
    56.064819335938
  },
  {
    -1528.8955078125,
    2516.724609375,
    55.986171722412
  },
  {
    2022.1650390625,
    -1402.6806640625,
    17.18045425415
  },
  {
    2042.7001953125,
    -1409.4775390625,
    17.1640625
  },
  {
    -316.5478515625,
    1051.6494140625,
    20.340259552002
  },
  {
    -337.9541015625,
    1049.490234375,
    19.739168167114
  },
  {
    -331.5849609375,
    1046.037109375,
    26.012474060059
  },
  {
    -307.0419921875,
    1045.27734375,
    26.012474060059
  },
  {
    1171.490234375,
    -1310.560546875,
    13.986573219299
  },
  {
    1171.609375,
    -1306.556640625,
    13.996350288391
  },
  {
    1158.5048828125,
    -1326.333984375,
    31.503561019897
  },
  {
    1159.80078125,
    -1323.9013671875,
    31.498970031738
  },
  {
    1238.7119140625,
    328.2431640625,
    19.7555103302
  },
  {
    1229.365234375,
    311.1435546875,
    24.7578125
  },
  {
    -2204.07421875,
    -2309.58203125,
    31.375
  },
  {
    1615.939453125,
    1818.0537109375,
    10.8203125
  },
  {
    1601.9443359375,
    1816.736328125,
    10.8203125
  },
  {
    1590.0166015625,
    1792.0234375,
    30.46875
  },
  {
    1607.3232421875,
    1776.7412109375,
    37.3125
  },
  {
    2107.7626953125,
    926.16015625,
    10.8203125
  },
  {
    2116.12890625,
    925.7705078125,
    10.9609375
  },
  {
    2122.1865234375,
    925.3193359375,
    10.8203125
  }
}

-- Postos de gasolina
patrolPoints = {
  {
    -1603.2197265625,
    -2712.736328125,
    48.9453125
  },
  {
    2465.748046875,
    -2215.55859375,
    13.546875
  },
  {
    2473.439453125,
    -2215.56640625,
    13.546875
  },
  {
    2480.0732421875,
    -2216.140625,
    13.546875
  },
  {
    2487.24609375,
    -2215.5966796875,
    13.546875
  },
  {
    2494.1005859375,
    -2215.5859375,
    13.546875
  },
  {
    -1686.6728515625,
    408.9970703125,
    7.3984375
  },
  {
    -1682.34375,
    412.9384765625,
    7.3984375
  },
  {
    -1680.0263671875,
    402.3642578125,
    7.3984375
  },
  {
    -1675.84375,
    406.4677734375,
    7.3984375
  },
  {
    -1670.5615234375,
    411.8359375,
    7.3984375
  },
  {
    -1666.2392578125,
    416.2509765625,
    7.3984375
  },
  {
    -1672.7939453125,
    422.81640625,
    7.3984375
  },
  {
    -1677.20703125,
    418.46484375,
    7.3984375
  },
  {
    -2410.7021484375,
    969.9091796875,
    45.4609375
  },
  {
    -2410.744140625,
    975.220703125,
    45.4609375
  },
  {
    -2410.837890625,
    980.5302734375,
    45.4609375
  },
  {
    -1329.3046875,
    2668.5126953125,
    50.46875
  },
  {
    -1328.7314453125,
    2673.90625,
    50.0625
  },
  {
    -1327.0185546875,
    2679.3876953125,
    50.46875
  },
  {
    -1327.3798828125,
    2684.62890625,
    50.0625
  },
  {
    1940.7099609375,
    -1778.5244140625,
    13.390598297119
  },
  {
    1940.6552734375,
    -1774.908203125,
    13.390598297119
  },
  {
    1940.630859375,
    -1771.728515625,
    13.390598297119
  },
  {
    1940.7080078125,
    -1767.3837890625,
    13.390598297119
  },
  {
    -1477.921875,
    1868.138671875,
    32.639846801758
  },
  {
    -1466.1552734375,
    1869.0048828125,
    32.6328125
  },
  {
    -1464.5224609375,
    1861.3828125,
    32.639846801758
  },
  {
    -1477.4599609375,
    1860.5205078125,
    32.6328125
  },
  {
    -735.9208984375,
    2744.0087890625,
    47.2265625
  },
  {
    -739.0439453125,
    2744.2421875,
    47.165451049805
  },
  {
    377.6953125,
    2601.1083984375,
    16.484375
  },
  {
    624.5263671875,
    1676.25390625,
    6.9921875
  },
  {
    620.2958984375,
    1681.2431640625,
    6.9921875
  },
  {
    616.248046875,
    1686.4169921875,
    7.1875
  },
  {
    612.783203125,
    1691.1650390625,
    7.1875
  },
  {
    609.2060546875,
    1696.201171875,
    7.1875
  },
  {
    605.8505859375,
    1700.978515625,
    7.1875
  },
  {
    602.27734375,
    1706.3603515625,
    7.1875
  },
  {
    2141.037109375,
    2742.734375,
    10.960174560547
  },
  {
    2142.3115234375,
    2752.6982421875,
    10.96019744873
  },
  {
    2147.9521484375,
    2752.3203125,
    10.8203125
  },
  {
    2152.60546875,
    2751.953125,
    10.8203125
  },
  {
    2152.984375,
    2743.85546875,
    10.8203125
  },
  {
    2147.75,
    2743.7392578125,
    10.8203125
  },
  {
    -97.6298828125,
    -1175.0283203125,
    2.4990689754486
  },
  {
    -90.74609375,
    -1177.853515625,
    2.2021217346191
  },
  {
    -84.75390625,
    -1163.853515625,
    2.3359375
  },
  {
    -91.5771484375,
    -1160.5732421875,
    2.4453125
  },
  {
    -1606.525390625,
    -2717.2138671875,
    48.9453125
  },
  {
    -1609.7109375,
    -2721.544921875,
    48.9453125
  },
  {
    -1599.83203125,
    -2708.302734375,
    48.9453125
  },
  {
    -2246.314453125,
    -2558.8212890625,
    32.0703125
  },
  {
    -2241.3125,
    -2561.3662109375,
    32.0703125
  },
  {
    -1132.2880859375,
    -135.0986328125,
    14.14396572113
  },
  {
    -1153.529296875,
    -156.373046875,
    14.1484375
  },
  {
    -1142.826171875,
    -145.67578125,
    14.14396572113
  },
  {
    655.611328125,
    -557.9912109375,
    16.501491546631
  },
  {
    655.6572265625,
    -572.1728515625,
    16.501491546631
  },
  {
    1601.791015625,
    2203.90625,
    11.060997009277
  },
  {
    1596.806640625,
    2203.4345703125,
    10.8203125
  },
  {
    1590.197265625,
    2203.4853515625,
    10.8203125
  },
  {
    1589.4775390625,
    2195.43359375,
    10.8203125
  },
  {
    1596.125,
    2194.294921875,
    10.8203125
  },
  {
    1601.6591796875,
    2194.3369140625,
    10.8203125
  },
  {
    2206.8466796875,
    2470.47265625,
    10.8203125
  },
  {
    2206.94140625,
    2474.75,
    10.8203125
  },
  {
    2206.9267578125,
    2478.86328125,
    10.8203125
  },
  {
    2198.06640625,
    2480.6953125,
    10.8203125
  },
  {
    2197.541015625,
    2475.791015625,
    10.995170593262
  },
  {
    2197.609375,
    2471.9169921875,
    10.995170593262
  },
  {
    2120.8251953125,
    915.4833984375,
    10.8203125
  },
  {
    2115.1181640625,
    915.44140625,
    10.8203125
  },
  {
    2109.076171875,
    915.4228515625,
    10.8203125
  },
  {
    2109.22265625,
    924.8779296875,
    10.9609375
  },
  {
    2114.9404296875,
    924.8857421875,
    10.9609375
  },
  {
    2119.5126953125,
    925.2861328125,
    10.9609375
  },
  {
    2645.7197265625,
    1112.7802734375,
    10.8203125
  },
  {
    2639.984375,
    1112.56640625,
    10.8203125
  },
  {
    2634.828125,
    1112.3466796875,
    10.9609375
  },
  {
    2634.1826171875,
    1101.9482421875,
    10.8203125
  },
  {
    2636.7509765625,
    1101.6748046875,
    10.8203125
  },
  {
    2643.5126953125,
    1101.81640625,
    10.8203125
  },
  {
    2209.576171875,
    2469.8251953125,
    10.8203125
  },
  {
    2208.8310546875,
    2475.09375,
    10.8203125
  },
  {
    1005.078125,
    -901.7490234375,
    42.216625213623
  },
  {
    993.025390625,
    -902.474609375,
    42.222496032715
  }
}

lootItems = {
  helicrashsides = {
    {
      Item_NightVision,
      368,
      1,
      90,
      10
    },
    {
      Item_BoxOfMatches,
      328,
      0.4,
      90,
      2
    },
    {
      Weapon_Pistol,
      346,
      1,
      90,
      10
    },
    {
      Weapon_Silenced,
      347,
      1,
      90,
      7
    },
    {
      Weapon_Shotgun,
      349,
      1,
      90,
      6
    },
    {
      Weapon_Uzi,
      352,
      1,
      90,
      5.5
    },
    {
      Weapon_Knife,
      335,
      1,
      90,
      4
    },
    {
      Weapon_Katana,
      339,
      1,
      90,
      3
    },
    {
      Item_Pizza,
      1582,
      1,
      0,
      2
    },
    {
      Item_SodaBottle,
      2647,
      1,
      0,
      2
    },
    {
      Item_EmptyPatrol,
      1650,
      1,
      0,
      2
    },
    {
      Item_RoadFlare,
      324,
      1,
      90,
      2
    },
    {
      Item_Milk,
      2856,
      1,
      0,
      1
    },
    {
      Item_Painkiller,
      2709,
      0.5,
      0,
      4
    },
    {
      Item_EmptySodaCan,
      2673,
      0.5,
      0,
      2
    },
    {
      Item_ScruffyBurger,
      2675,
      0.5,
      0,
      3
    },
    {
      Weapon_Grenade,
      342,
      1,
      0,
      4
    },
    {
      Weapon_Parachute,
      342,
      1,
      0,
      80
    },
    {
      Weapon_SawnOff,
      350,
      1,
      90,
      5
    },
    {
      Weapon_Spas,
      351,
      1,
      90,
      4
    },
    {
      Weapon_MP5,
      353,
      1,
      90,
      6
    },
    {
      Item_Watch,
      2710,
      1,
      0,
      4
    },
    {
      Item_HeatPack,
      1576,
      1,
      0,
      3
    },
    {
      Item_WireFence,
      933,
      0.25,
      0,
      1
    },
    {
      Weapon_Country,
      357,
      1,
      90,
      6
    },
    {
      "Alice Pack",
      3026,
      1,
      0,
      4
    },
    {
      Item_NightVision,
      368,
      1,
      90,
      1.5
    },
    {
      Item_Tire,
      1073,
      1,
      0,
      2
    },
    {
      Item_Morphine,
      1579,
      1,
      0,
      4
    },
    {
      Skin_Military,
      1577,
      1,
      0,
      4.5
    },
    {
      Skin_Civilian,
      1577,
      1,
      0,
      3
    },
    {
      Weapon_AK,
      355,
      1,
      90,
      7
    },
    {
      Item_GPS,
      2976,
      0.15,
      0,
      3
    },
    {
      Item_Map,
      1277,
      0.8,
      90,
      7
    },
    {
      Item_Toolbox,
      2969,
      0.5,
      0,
      1
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
      1247,
      1,
      0,
      0.5
    },
	{
	  Skin_GhillieForest,
	  1247,
	  1,
	  0,
	  0.5
	},
    {
      Weapon_M4,
      356,
      1,
      90,
      1
    },
    {
      Weapon_Sniper,
      358,
      1,
      90,
      1.5
    },
    {
      Item_InfraredVision,
      369,
      1,
      90,
      3
    },
    {
      "Assault Pack (ACU)",
      3026,
      0.5,
      0,
      5
    },
    {
      "Coyote Backpack",
      3026,
      1.3,
      0,
      2
    }
  },
  hospital = {
    {
      Item_MedicKit,
      2891,
      0.7,
      0
    },
    {
      Item_HeatPack,
      1576,
      1,
      0
    },
    {
      Item_Bandage,
      1578,
      0.5,
      0
    },
    {
      Item_BloodBag,
      1580,
      1,
      0
    },
    {
      Item_Morphine,
      1579,
      1,
      0
    },
    {
      Item_BloodBag,
      1580,
      1,
      0
    },
    {
      Item_MedicKit,
      2891,
      0.7,
      0
    },
    {
      Item_BloodBag,
      1580,
      1,
      0
    },
    {
      Item_Painkiller,
      1580,
      1,
      0
    }
  }
}
vehicleAddonsInfo = {
  {
    489,
    4,
    1,
	1
  },
  {
    500,
    4,
    1,
	1
  },
  {
    445,
    4,
    1,
	1
  },
  {
    422,
    4,
    1,
	1
  },
  {
    470,
    4,
    1,
	1
  },
  {
    468,
    2,
    1,
	1
  },
  {
    433,
    6,
    1,
	1
  },
  {
    437,
    6,
    1,
	1
  },
  {
    509,
    0,
    0,
	1
  },
  {
    487,
    0,
    1,
	1
  },
  {
    497,
    0,
    1,
	1
  },
  {
    453,
    0,
    1,
	1
  }
}

function getVehicleAddonInfos(id)
  for i, veh in ipairs(vehicleAddonsInfo) do
    if veh[1] == id then
      return veh[2], veh[3]
    end
  end
end

-- Cria os helicrash
function createHeliCrashSite()
  if cargoCol then
    destroyElement(getElementData(cargoCol, "parent"))
    destroyElement(cargoCol)
  end
  local item_id = math.random(table.size(heliCrashSites))
  local x, y, z = heliCrashSites[item_id][1], heliCrashSites[item_id][2], heliCrashSites[item_id][3]
  cargobob = createVehicle(548, x, y, z, nil, nil, nil)
  setElementHealth(cargobob, 0)
  setElementFrozen(cargobob, true)
  cargoCol = createColSphere(x, y, z, 3)
  setElementData(cargoCol, "parent", cargobob)
  setElementData(cargoCol, "helicrash", true)
  setElementData(cargoCol, "MAX_Slots", 0)
  for i, item in ipairs(lootItems.helicrashsides) do
    local value = math.percentChance(item[5] * 3.5, math.random(1, 2))
    setElementData(cargoCol, item[1], value)
    local ammoData, weapID = getWeaponAmmoType(item[1], true)
    if ammoData and value > 0 then
      setElementData(cargoCol, ammoData, math.random(1, 2))
    end
  end
  outputChatBox("#FF6A00UM HELICRASH ACABA DE SPAWNAR NO MAPA.", getRootElement(), 255, 255, 255, true)
  setTimer(createHeliCrashSite, 3600000, 1)
end
createHeliCrashSite()

-- Atualiza as caixas dos hospitais
function updateHospitals()
  for i, box in pairs(hospitalCol) do
    for _, items in ipairs(lootItems.hospital) do
      setElementData(hospitalCol[i], items[1], math.random(1, 5))
    end
  end
  setTimer(updateHospitals, 3600000, 1)
end


-- Cria as caixas dos hospitais
hospitalCol = {}
function createHospitalPacks()
  number1 = 0
  for i, box in ipairs(hospitalPacks) do
    number1 = number1 + 1
    local x, y, z = box[1], box[2], box[3]
    object = createObject(1558, x, y, z, nil, nil, nil)
    hospitalCol[i] = createColSphere(x, y, z, 2)
    setElementData(hospitalCol[i], "parent", object)
    setElementData(hospitalCol[i], "hospitalbox", true)
    setElementData(hospitalCol[i], "MAX_Slots", 20)
    for _, items in ipairs(lootItems.hospital) do
      local randomNumber = math.random(1, 10)
      if randomNumber >= 2 then
        setElementData(hospitalCol[i], items[1], math.random(1, 5))
      end
    end
  end
  setTimer(updateHospitals, 3600000, 1)
end
createHospitalPacks()

for i, patrol in ipairs(patrolPoints) do
  local x, y, z = patrol[1], patrol[2], patrol[3]
  patrolCol = createColSphere(x, y, z, 3)
  setElementData(patrolCol, "patrolstation", true)
end


-- Cria os veículos
dayzVehicles = {}
function spawnDayZVehicles()
  if getElementData(getRootElement(), "serverhasloadvehicles") then
    return
  end
  
  -- Find max fuel on pickups.lua
  
  for i, veh in ipairs(rancherSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(489, x, y, z)
    vehCol = createColSphere(x, y, z, 2)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 20)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      489,
      x,
      y,
      z
    })
	
    setElementData(vehCol, "fuel", math.random(10, 100))
  end
  
  for i, veh in ipairs(mesaSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(500, x, y, z)
    vehCol = createColSphere(x, y, z, 2)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 20)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      500,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 60))
  end
  
  for i, veh in ipairs(admiralSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(445, x, y, z)
    vehCol = createColSphere(x, y, z, 2)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 20)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      445,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 80))
  end
  
  for i, veh in ipairs(pickupSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(422, x, y, z)
    vehCol = createColSphere(x, y, z, 2)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 20)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      422,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 80))
  end
  
  for i, veh in ipairs(patriotSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(470, x, y, z)
    vehCol = createColSphere(x, y, z, 2.5)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 38)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      470,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 100))
    for i, items in ipairs(lootItems.helicrashsides) do
      local randomNumber = math.random(1, 10)
      if randomNumber == 5 then
        setElementData(vehCol, items[1], 1)
      end
    end
  end
  
  for i, veh in ipairs(sanchezSpanws) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(468, x, y, z)
    vehCol = createColSphere(x, y, z, 1.5)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 6)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      468,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 30))
  end
  for i, veh in ipairs(barracksSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(433, x, y, z)
    vehCol = createColSphere(x, y, z, 4)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 64)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      433,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 140))
    for i, items in ipairs(lootItems.helicrashsides) do
      local randomNumber = math.random(1, 10)
      if randomNumber == 5 then
        setElementData(vehCol, items[1], math.random(1, 2))
      end
    end
  end
  for i, veh in ipairs(coachSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(437, x, y, z)
    vehCol = createColSphere(x, y, z, 4)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 56)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      437,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 140))
  end
  for i, veh in ipairs(fisherBootSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(453, x, y, z)
    vehCol = createColSphere(x, y, z, 4)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 30)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      453,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", math.random(10, 60))
  end
  for i, veh in ipairs(bikeSpawns) do
    local x, y, z = veh[1], veh[2], veh[3]
    veh = createVehicle(509, x, y, z)
    vehCol = createColSphere(x, y, z, 2)
    attachElements(vehCol, veh, 0, 0, 0)
    setElementData(vehCol, "parent", veh)
    setElementData(veh, "parent", vehCol)
    setElementData(vehCol, "vehicle", true)
    setElementData(vehCol, "MAX_Slots", 0)
    local tires, engine = getVehicleAddonInfos(getElementModel(veh))
    setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
    setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
    setElementData(vehCol, "spawn", {
      509,
      x,
      y,
      z
    })
    setElementData(vehCol, "fuel", 0)
  end
  for i, tent in ipairs(tentSpawns) do
    local x, y, z = tent[1], tent[2], tent[3]
    tent = createObject(3243, x, y, z - 1)
    setObjectScale(tent, 0.5)
    tentCol = createColSphere(x, y, z, 4)
    attachElements(tentCol, tent, 0, 0, 0)
    setElementData(tentCol, "parent", tent)
    setElementData(tent, "parent", tentCol)
    setElementData(tentCol, "tent", true)
    setElementData(tentCol, "vehicle", true)
    setElementData(tentCol, "MAX_Slots", 30)
  end
  for i, hunter in ipairs(maverikSpawns) do
	local x, y, z = hunter[1], hunter[2], hunter[3]
	hunter = createVehicle(487, x, y, z)
	vehCol = createColSphere(x, y, z, 4)
	attachElements(vehCol, hunter, 0, 0, 0)
	setElementData(vehCol, "parent", hunter)
	setElementData(hunter, "parent", vehCol)
	setElementData(vehCol, "vehicle", true)
	setElementData(vehCol, "MAX_Slots", 10)
	local tires, engine = getVehicleAddonInfos(487)
	setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
	setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
	setElementData(vehCol, "spawn", {
		487,
		x,
		y,
		z
	})
	setElementData(vehCol, "fuel", math.random(10, 60))
  end
  for i, hunter in ipairs(hunterSpawns) do
	local x, y, z = hunter[1], hunter[2], hunter[3]
	hunter = createVehicle(497, x, y, z)
	vehCol = createColSphere(x, y, z, 4)
	attachElements(vehCol, hunter, 0, 0, 0)
	setElementData(vehCol, "parent", hunter)
	setElementData(hunter, "parent", vehCol)
	setElementData(vehCol, "vehicle", true)
	setElementData(vehCol, "MAX_Slots", 10)
	local tires, engine = getVehicleAddonInfos(497)
	setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
	setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "Parts_inVehicle", math.random(0, 1))
	setElementData(vehCol, "spawn", {
    497,
    x,
    y,
    z
	})
	setElementData(vehCol, "fuel", math.random(10, 60))
  end
end


-- Respawn all vehicles / Respawna todos os veículos
function spawnVehiclePack(ps, cmd)
  if getElementData(ps, "DW-Desenvolvedor") then
    spawnDayZVehicles()
    outputChatBox("Os veículos foram respawnados!", ps, 255, 0, 0, true)
  end
end
addCommandHandler("criarTodosOsVeiculos", spawnVehiclePack)


-- Create explosion / Cria explosão
function notifyAboutExplosion()
  local col = getElementData(source, "parent")
  local x1, y1, z1 = getElementPosition(source)
  id, x, y, z = getElementData(col, "spawn")[1], getElementData(col, "spawn")[2], getElementData(col, "spawn")[3], getElementData(col, "spawn")[4]
  setTimer(respawnDayZVehicle, 1800000, 1, id, x, y, z, source, col, getElementData(col, "MAX_Slots"))
  setElementData(col, "deadVehicle", true)
  setElementData(source, "isExploded", true)
  createExplosion(x1 + 4, y1 + 1, z1, 4)
  createExplosion(x1 + 2, y1 - 4, z1, 4)
  createExplosion(x1 - 1, y1 + 5, z1, 4)
  createExplosion(x1 - 4, y1, z1 - 2, 4)
end
addEventHandler("onVehicleExplode", getRootElement(), notifyAboutExplosion)


function respawnVehiclesInWater(vehiclesInWater)
  for i, veh in ipairs(vehiclesInWater) do
    if getElementModel(veh) == 453 then
      break
    end
    local col = getElementData(veh, "parent")
    id, x, y, z = getElementData(col, "spawn")[1], getElementData(col, "spawn")[2], getElementData(col, "spawn")[3], getElementData(col, "spawn")[4]
    respawnDayZVehicle(id, x, y, z, veh, col, getElementData(col, "MAX_Slots"))
  end
end
addEvent("respawnVehiclesInWater", true)
addEventHandler("respawnVehiclesInWater", getRootElement(), respawnVehiclesInWater)


function checkVehicleInWater()
  local randomPlayer = getRandomPlayer()
  if randomPlayer then
	triggerClientEvent("checkVehicleInWaterClient", randomPlayer)
	--triggerClientEvent(randomPlayer, "checkVehicleInWaterClient", randomPlayer)
  end
end
setTimer(checkVehicleInWater, 1800000, 0)


-- Reset vehicles manually // Reseta veiculos manualmente
function resetVehiclesManually(thePlayer, commandName)
	local vehicles = getElementsByType("vehicle") -- gets all vehicles
	
	if (getElementData(thePlayer, "DW-Desenvolvedor")) then
		for i, veh in ipairs(vehicles) do
			if (getElementData(veh, "parent")) then
				local col = getElementData(veh, "parent")
				destroyElement(veh)
				destroyElement(col)
			end
		end
	end
end
addCommandHandler("excluirTodosOsVeiculos", resetVehiclesManually)


-- Respawn DayZ vehicles // Respawna veículos
function respawnDayZVehicle(id, x, y, z, veh, col, max_slots)
	--[[
	if id == 497 then
		local item_id = math.random(table.size(hunterSpawns))
		x, y, z = hunterSpawns[item_id][1], hunterSpawns[item_id][2], hunterSpawns[item_id][3]
	end
	if id == 487 then
		local item_id = math.random(table.size(maverikSpawns))
		x, y, z = maverikSpawns[item_id][1], maverikSpawns[item_id][2], maverikSpawns[item_id][3]
	end
	]]
	destroyElement(veh)
	destroyElement(col)
	veh = createVehicle(id, x, y, z + 1)
	vehCol = createColSphere(x, y, z, 4)
	attachElements(vehCol, veh, 0, 0, 0)
	setElementData(vehCol, "parent", veh)
	setElementData(veh, "parent", vehCol)
	setElementData(vehCol, "vehicle", true)
	setElementData(vehCol, "MAX_Slots", max_slots)
	local tires, engine = getVehicleAddonInfos(getElementModel(veh))
	setElementData(vehCol, DB_TireInVehicle, math.random(0, tires))
	setElementData(vehCol, DB_EngineInVehicle, math.random(0, engine))
	setElementData(vehCol, "spawn", {
		id,
		x,
		y,
		z
	})
	setElementData(vehCol, "fuel", 10)
	if id == 433 then
		for i, items in ipairs(lootItems.helicrashsides) do
			local randomNumber = math.random(1, 10)
			if randomNumber == 5 then
				setElementData(vehCol, items[1], math.random(1, 2))
			end
		end
	elseif id == 470 then
		for i, items in ipairs(lootItems.helicrashsides) do
			local randomNumber = math.random(1, 10)
			if randomNumber == 5 then
				setElementData(vehCol, items[1], math.random(1, 2))
			end
		end
	end
end


-- syntax: id model, tires, engine
vehicleAddonsInfo = {
  {
    489,
    4,
    1
  },
  {
    500,
    4,
    1
  },
  {
    445,
    4,
    1
  },
  {
    422,
    4,
    1
  },
  {
    470,
    4,
    1
  },
  {
    468,
    2,
    1
  },
  {
    433,
    6,
    1
  },
  {
    437,
    6,
    1
  },
  {
    509,
    0,
    0
  },
  {
    487,
    0,
    1
  },
  {
    497,
    0,
    1
  },
  {
    453,
    0,
    1
  }
}
vehicleFuelInfo = {
  {422, 0.25},
  {470, 0.1},
  {468, 0.1},
  {433, 0.5},
  {437, 0.5},
  {509, 0},
  {487, 0.25},
  {497, 0.25},
  {453, 0.1}
}
function getVehicleAddonInfos(id)
  for i, veh in ipairs(vehicleAddonsInfo) do
    if veh[1] == id then
      return veh[2], veh[3]
    end
  end
end


-- When player enters on vehicle // Quando jogador entra no veiculo
function onPlayerEnterDayzVehicle(veh, seat)
  local col = getElementData(veh, "parent")
  local id = getElementModel(veh)
  if not seat == 1 then
    return
  end
  local tires, engine = getVehicleAddonInfos(id)
  setVehicleEngineState(veh, false)
  setElementData(veh, "maxfuel", getVehicleMaxFuel(col))
  setElementData(veh, "needtires", tires)
  setElementData(veh, "needengines", engine)
  setElementData(veh, "needparts", 1)
  if (getElementData(col, DB_TireInVehicle) or 0) < tonumber(tires) then
    setVehicleEngineState(veh, false)
    return
  end
  if (getElementData(col, DB_EngineInVehicle) or 0) < tonumber(engine) then
    setVehicleEngineState(veh, false)
    return
  end
  if 1 >= (getElementData(col, "fuel") or 0) and not getElementModel(veh) == 509 then
    triggerClientEvent(source, "displayClientInfo", source, "Vehicle", "Não há gasolina neste veículo!", 22, 255, 0)
    setVehicleEngineState(veh, false)
    return
  end
  setVehicleEngineState(veh, true)
  bindKey(source, "k", "down", setEngineStateByPlayer)
  outputChatBox("#FF6A00Pressione #FFFFFF'K' #FF6A00para ligar/desligar o motor.", source, 255, 255, 255, true)
end
addEventHandler("onPlayerVehicleEnter", getRootElement(), onPlayerEnterDayzVehicle)


function onPlayerExitDayzVehicle(veh, seat)
  if seat == 0 then
    setVehicleEngineState(veh, false)
    unbindKey(source, "k", "down", setEngineStateByPlayer)
  end
end
addEventHandler("onPlayerVehicleExit", getRootElement(), onPlayerExitDayzVehicle)


-- Removes vehicle's fuel // Diminui a gasolina
function getVehicleFuelRemove(id)
  for i, veh in ipairs(vehicleFuelInfo) do
    if veh[1] == id then
      return veh[2]
    end
  end
end


-- Set vehicle fuel // Define gasolina do veículo
function setVehiclesFuelPerMinute()
	for i, veh in ipairs(getElementsByType("vehicle")) do
		if getVehicleEngineState(veh) == true then
			if getElementData(getElementData(veh, "parent"), "fuel") >= 0 then
				if getElementData(getElementData(veh, "parent"), "Tank Parts") and getElementData(getElementData(veh, "parent"), "Tank Parts") >= 1 then
					setElementData(getElementData(veh, "parent"), "fuel", getElementData(getElementData(veh, "parent"), "fuel") - getVehicleFuelRemove(getElementModel(veh))/2)
				else
					setElementData(getElementData(veh, "parent"), "fuel", getElementData(getElementData(veh, "parent"), "fuel") - getVehicleFuelRemove(getElementModel(veh)))
				end
			else
				setVehicleEngineState(veh, false)
			end
		end
	end
end
setTimer(setVehiclesFuelPerMinute, 20000, 0)



function isVehicleReadyToStart2(veh)
  if getElementData(getElementData(veh, "parent"), "fuel") >= 1 then
	local tires, engine = getVehicleAddonInfos(getElementModel(veh))
	if (getElementData(getElementData(veh, "parent"), DB_TireInVehicle) or 0) > tonumber(tires) then
		if (getElementData(getElementData(veh, "parent"), DB_EngineInVehicle) or 0) > tonumber(engine) then
			setVehicleEngineState(veh, true)
		end
	end
  end
  setTimer(isVehicleReadyToStart2, 1000, 1, veh)
end
repairTimer = {}


--  When starts to fix vehicle // Quando começa a reparar o veículo
function repairVehicle(veh)
  if repairTimer[veh] then
    triggerClientEvent(source, "displayClientInfo", source, "Vehicle", getVehicleName(veh) .. " está sendo reparado(a)!", 255, 22, 0)
    return
  end
  local health = math.floor(getElementHealth(veh))
  repairTimer[veh] = setTimer(fixVehicleDayZ, (1000 - health) * 120, 1, veh, source)
  setElementFrozen(veh, true)
  setElementData(veh, "repairer", source)
  setElementData(source, "repairingvehicle", veh)
  setElementData(source, "isrepairing", true) -- bug fix, player won't be able to use another animation to bug vehicle fixing
  setPedAnimation(source, "SCRATCHING", "sclng_r", nil, true, false)
  triggerClientEvent(source, "displayClientInfo", source, "Vehicle", "Você começou a reparar o(a) " .. getVehicleName(veh), 22, 255, 0)
end
addEvent("repairVehicle", true)
addEventHandler("repairVehicle", getRootElement(), repairVehicle)


-- When finish fixing vehicle // Quando terminar de arrumar veiculo
function fixVehicleDayZ(veh, player)
  setElementHealth(veh, 1000)
  fixVehicle(veh)
  setPedAnimation(player, false)
  setElementFrozen(veh, false)
  repairTimer[veh] = nil
  setElementData(veh, "repairer", nil)
  setElementData(player, "repairingvehicle", nil)
  setElementData(player, "isrepairing", false)
  triggerClientEvent(player, "displayClientInfo", player, "Vehicle", "Você terminou de reparar o(a) " .. getVehicleName(veh), 22, 255, 0)
end


-- When player get away from vehicle while fixing // Quando jogador sai de perto do veiculo enquanto repara
function stopFixxingWhileMoving()
  local veh = getElementData(source, "repairingvehicle")
  setPedAnimation(source)
  setElementFrozen(veh, false)
  setElementData(veh, "repairer", nil)
  setElementData(source, "repairingvehicle", nil)
  triggerClientEvent(source, "displayClientInfo", source, "Vehicle", "Você parou de reparar o(a) " .. getVehicleName(veh), 255, 22, 0)
  killTimer(repairTimer[veh])
  repairTimer[veh] = nil
end
addEvent("onClientMovesWhileAnimation", true)
addEventHandler("onClientMovesWhileAnimation", getRootElement(), stopFixxingWhileMoving)


-- When player quit while fixing vehicle // Quando jogador sai enquanto arruma veiculo
function debugFixxing()
  for i, veh in ipairs(getElementsByType("vehicle")) do
    if getElementData(veh, "repairer") == source then
      outputDebugString("Vehicle repairer disconnected - destroyed tables")
      killTimer(repairTimer[veh])
      setElementFrozen(veh, false)
      repairTimer[veh] = nil
      setElementData(veh, "repairer", nil)
    end
  end
end
addEventHandler("onPlayerQuit", getRootElement(), debugFixxing)


-- When player turn on/off engine // Quando jogador desliga/liga motor
function setEngineStateByPlayer(playersource)
	local veh = getPedOccupiedVehicle(playersource)
	
	if getElementData(getElementData(veh, "parent"), "fuel") <= 0 then
		triggerClientEvent(player, "displayClientInfo", playersource, "Vehicle", "Você não pode ligar um veículo sem gasolina.", 255, 22, 0)
		return
	end
	
	if getPedOccupiedVehicleSeat(playersource) == 0 then
		setVehicleEngineState(veh, not getVehicleEngineState(veh))
	else
		triggerClientEvent(playersource, "displayClientInfo", playersource, "Vehicle", "Só o(a) motorista pode desligar o motor.", 255, 22, 0)
		return
	end
	
	if getVehicleEngineState(veh) == true then
		triggerClientEvent(playersource, "displayClientInfo", playersource, "Vehicle", "Motor ligado.", 22, 255, 0)
	else
		triggerClientEvent(playersource, "displayClientInfo", playersource, "Vehicle", "Motor desligado.", 255, 22, 0)
	end
	 
end


-- Bind "k" key // Binda a tecla "k"
addEventHandler("onPlayerLogin", getRootElement(), function()
	bindKey(source, "k", "down", setEngineStateByPlayer)
end)
