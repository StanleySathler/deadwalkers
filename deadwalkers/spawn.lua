﻿--[[
#---------------------------------------------------------------#
----*			DayZ MTA Script spawn.lua					*----
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
	
	

local spawnPositions = {
  {
    -278.6669921875,
    -2882.1572265625,
    32.104232788086
  },
  {
    -958.5595703125,
    -2887.9912109375,
    64.82421875
  },
  {
    -1816.9375,
    -2748.18359375,
    1.7327127456665
  },
  {
    -2816.166015625,
    -2439.0546875,
    2.4004096984863
  },
  {
    -2941.5673828125,
    -1206.2373046875,
    2.7848854064941
  },
  {
    -2911.51171875,
    -895.22265625,
    2.4013109207153
  },
  {
    -2185.6669921875,
    2957.380859375,
    11.474840164185
  },
  {
    272.2265625,
    2928.505859375,
    1.3713493347168
  },
  {
    2803.943359375,
    595.9365234375,
    7.7612648010254
  },
  {
    2883.7509765625,
    -178.4658203125,
    3.2714653015137
  },
  {
    -233.46484375,
    -1735.8173828125,
    1.5520644187927
  },
  {
    -1056.8720703125,
    2939.068359375,
    42.311294555664
  }
}
local playerDataTable = {
  {"alivetime"},
  {"skin"},
  {"MAX_Slots"},
  {"bandit"},
  {"blood"},
  {"food"},
  {"thirst"},
  {"temperature"},
  {"currentweapon_1"},
  {"currentweapon_2"},
  {"currentweapon_3"},
  {"bleeding"},
  {"brokenbone"},
  {"pain"},
  {"cold"},
  {"infection"},
  {"humanity"},
  {"zombieskilled"},
  {"headshots"},
  {"murders"},
  {"banditskilled"},
  {Item_WoodPile},
  {Item_Bandage},
  {Item_FullWaterBottle},
  {Item_PastaCan},
  {Item_BeansCan},
  {Item_Burger},
  {Item_BoxOfMatches},
  {Weapon_PistolAmmo},
  {Weapon_SilencedAmmo},
  {Weapon_DesertAmmo},
  {Weapon_Pistol},
  {Weapon_Silenced},
  {Weapon_Shotgun},
  {Weapon_Uzi},
  {Weapon_Knife},
  {Weapon_Katana},
  {Item_Pizza},
  {Item_Morphine},
  {Item_SodaBottle},
  {Item_EmptyPatrol},
  {Item_FullPatrol},
  {Item_RoadFlare},
  {Item_Milk},
  {Weapon_UziAmmo},
  {Weapon_MP5Ammo},
  {Weapon_AKAmmo},
  {Weapon_M4Ammo},
  {Weapon_TearGas},
  {Weapon_Grenade},
  {Weapon_Desert},
  {Weapon_SawnOff},
  {Weapon_Spas},
  {Weapon_MP5},
  {Item_Watch},
  {Item_MedicKit},
  {Item_HeatPack},
  {Weapon_Country},
  {Weapon_Uzi},
  {Weapon_AK},
  {Item_BloodBag},
  {Item_GPS},
  {Item_Map},
  {Item_Toolbox},
  {Item_WireFence},
  {Item_Tire},
  {"Motor"},
  {"Tank Parts"},
  {Weapon_SniperAmmo},
  {Weapon_CountryAmmo},
  {Weapon_M4},
  {Weapon_Sniper},
  {Item_InfraredVision},
  {Item_NightVision},
  {Item_Tent},
  {Item_RawMeat},
  {Item_CookedMeat},
  {Skin_Military},
  {Skin_GhillieDesert},
  {Skin_GhillieForest},
  {Skin_Civilian},
  {Skin_Survivor},
  {Item_Painkiller},
  {Item_EmptyWaterBottle},
  {Item_EmptySodaCan},
  {Item_ScruffyBurger},
  {Weapon_ShotgunAmmo},
  {Weapon_SawnOffAmmo},
  {Weapon_SpasAmmo},
  {Item_Radio},
  {Weapon_Binoculars},
  {Weapon_Baseball},
  {Weapon_Shovel},
  {Weapon_Crowbar},
  {Weapon_Parachute}
}
local vehicleDataTable = {
  {"MAX_Slots"},
  {DB_TireInVehicle},
  {DB_EngineInVehicle},
  {"Parts_inVehicle"},
  {"fuel"},
  {Item_WoodPile},
  {Item_Bandage},
  {Item_FullWaterBottle},
  {Item_PastaCan},
  {Item_BeansCan},
  {Item_Burger},
  {Item_BoxOfMatches},
  {Weapon_PistolAmmo},
  {Weapon_Pistol},
  {Weapon_Silenced},
  {Weapon_DesertAmmo},
  {Weapon_Shotgun},
  {Weapon_Uzi},
  {Weapon_Knife},
  {Item_Morphine},
  {Weapon_Katana},
  {Item_Pizza},
  {Item_SodaBottle},
  {Item_EmptyPatrol},
  {
    Item_FullPatrol
  },
  {Item_RoadFlare},
  {Item_Milk},
  {Weapon_UziAmmo},
  {Weapon_MP5Ammo},
  {Weapon_AKAmmo},
  {Weapon_M4Ammo},
  {Weapon_TearGas},
  {Weapon_Grenade},
  {
    Weapon_Desert
  },
  {
    Weapon_SawnOff
  },
  {
    Weapon_Spas
  },
  {Weapon_MP5},
  {Item_Watch},
  {Item_MedicKit},
  {Item_HeatPack},
  {
    Weapon_Country
  },
  {Weapon_AK},
  {Item_BloodBag},
  {Item_GPS},
  {Item_Map},
  {Item_Toolbox},
  {Item_WireFence},
  {Item_Tire},
  {"Motor"},
  {"Tank Parts"},
  {Weapon_SniperAmmo},
  {
    Weapon_CountryAmmo
  },
  {Weapon_M4},
  {Weapon_Sniper},
  {
    Item_InfraredVision
  },
  {
    Item_NightVision
  },
  {Item_Tent},
  {Item_RawMeat},
  {
    Item_CookedMeat
  },
  {Skin_GhillieDesert},
  {Skin_GhillieForest},
  {Skin_Civilian},
  {Skin_Survivor},
  {Item_Painkiller},
  {Weapon_Binoculars},
  {
    Item_EmptyWaterBottle
  },
  {
    Item_EmptySodaCan
  },
  {
    Item_ScruffyBurger
  },
  {Weapon_ShotgunAmmo},
  {Weapon_SawnOffAmmo},
  {
    Weapon_SpasAmmo
  },
  {
    "Assault Pack (ACU)"
  },
  {"Alice Pack"},
  {
    Item_Radio
  },
  {
    "Coyote Backpack"
  },
  {
    "Czech Backpack"
  },
  {Weapon_Baseball},
  {Weapon_Shovel},
  {Weapon_Crowbar}
}
Skins = {}


-- Spawns the player on the map // Spawna o jogador
function spawnDayZPlayer(player)
  local number = math.random(table.size(spawnPositions))
  local x, y, z = spawnPositions[number][1], spawnPositions[number][2], spawnPositions[number][3]
  spawnPlayer(player, x, y, z + 0.5, math.random(0, 360), 73, 0, 0)
  fadeCamera(player, true)
  setCameraTarget(player, player)
  playerCol = createColSphere(x, y, z, 1.5)
  setElementData(player, "playerCol", playerCol)
  attachElements(playerCol, player, 0, 0, 0)
  setElementData(playerCol, "parent", player)
  setElementData(playerCol, "player", true)
  local account = getPlayerAccount(player)
  setAccountData(account, "isDead", false)
  setElementData(player, "isDead", false)
  setElementData(player, "logedin", true)
  setElementData(player, "admin", getAccountData(account, "admin") or false)
  setElementData(player, "supporter", getAccountData(account, "supporter") or false)
  if getElementData(player, "armor") then
	setElementData(player, "armor", false)
  end -- Just a check ;P
  for i, data in ipairs(playerDataTable) do
    if data[1] == Item_Bandage then
      setElementData(player, data[1], 2)
    elseif data[1] == Item_Painkiller then
      setElementData(player, data[1], 1)
    elseif data[1] == "MAX_Slots" then
      setElementData(player, data[1], 8)
    elseif data[1] == "skin" then
      setElementData(player, data[1], 73)
    elseif data[1] == "blood" then
      setElementData(player, data[1], 12000)
    elseif data[1] == "temperature" then
      setElementData(player, data[1], 37)
    elseif data[1] == "brokenbone" then
      setElementData(player, data[1], false)
    elseif data[1] == "pain" then
      setElementData(player, data[1], false)
    elseif data[1] == "cold" then
      setElementData(player, data[1], false)
    elseif data[1] == "infection" then
      setElementData(player, data[1], false)
    elseif data[1] == "food" then
      setElementData(player, data[1], 100)
    elseif data[1] == "thirst" then
      setElementData(player, data[1], 100)
    elseif data[1] == "currentweapon_1" then
      setElementData(player, data[1], false)
    elseif data[1] == "currentweapon_2" then
      setElementData(player, data[1], false)
    elseif data[1] == "currentweapon_3" then
      setElementData(player, data[1], false)
    elseif data[1] == "bandit" then
      setElementData(player, data[1], false)
    elseif data[1] == "humanity" then
      setElementData(player, data[1], 2500)
    else
      setElementData(player, data[1], 0)
    end
  end
  
  
  -- VIP ITEMS
  local premiumBronze = {
	{"MAX_Slots", 16},
	{Weapon_Katana, 1},
	{Weapon_Uzi, 1},
	{Weapon_UziAmmo, 30},
	{Item_Pizza, 1},
	{Item_SodaBottle, 1},
	{Item_Map, 1},
  }
  
  local premiumSilver = {
	{"MAX_Slots", 26},
	{Weapon_Katana, 1},
	{Weapon_Uzi, 1},
	{Weapon_UziAmmo, 30},
	{Weapon_Shotgun, 1},
	{Weapon_ShotgunAmmo, 14},
	{Item_Pizza, 1},
	{Item_FullWaterBottle, 1},
	{Item_Map, 1},
  }
  
  local premiumGold = {
	{"MAX_Slots", 36},
	{Weapon_Katana, 1},
	{Weapon_M4, 1},
	{Weapon_M4Ammo, 60},
	{Weapon_Sniper, 1},
	{Weapon_SniperAmmo, 5},
	{Item_Pizza, 1},
	{Item_FullWaterBottle, 1},
	{Item_Map, 1},
	{Item_GPS, 1},
  }
  
  local premiumPartner = {
	{"MAX_Slots", 26},
	{Weapon_M4, 1},
	{Weapon_M4Ammo, 60},
	{Weapon_Sniper, 1},
	{Weapon_SniperAmmo, 5},
	{"Motor", 1},
	{Item_Tire, 2},
  }

  
	-- GIVE VIP ITEMS
	if getElementData(player, "DW-VIPBronze") == true then
		for i, v in ipairs(premiumBronze) do
			setElementData(player, v[1], v[2])
			outputChatBox("dafqu")
		end
	elseif getElementData(player, "DW-VIPSilver") == true then
		for i, v in ipairs(premiumSilver) do
			setElementData(player, v[1], v[2])
		end
	elseif getElementData(player, "DW-VIPGold") == true then
		for i, v in ipairs(premiumGold) do
			setElementData(player, v[1], v[2])
		end
	elseif getElementData(player, "DW-VIPPartner") == true then
		for i, v in ipairs(premiumPartner) do
			setElementData(player, v[1], v[2])
		end
	end
  
  
  
  -- STAFF STATUS
	if not getElementData(player, "DW-Administrador") and not getElementData(player, "DW-Moderador") and not getElementData(player, "DW-Gerente") then
		setElementModel(player, getElementData(player, "skin"))
	else
		setElementModel(player, 217)
		setElementData(player, "skin", 217)
	end
  
  
  outputChatBox("Para se suicidar, use /suicidar", player, 22, 255, 22, true)
end


-- Check if the account is bugged
function checkBuggedAccount()
  for i, player in ipairs(getElementsByType("player")) do
    local account = getPlayerAccount(player)
    if not account then
      return
    end
    if getElementData(player, "logedin") and getElementModel(player) == 0 then
      spawnDayZPlayer(player)
      outputChatBox("A conta de " .. getPlayerName(player) .. " está bugada e está sendo resetada.", getRootElement(), 22, 255, 22, true)
    end
  end
end
setTimer(checkBuggedAccount, 90000, 0)


-- Notify about explosion [2]
function notifyAboutExplosion2()
  for i, player in pairs(getVehicleOccupants(source)) do
    triggerEvent("kilLDayZPlayer", player)
  end
end
addEventHandler("onVehicleExplode", getRootElement(), notifyAboutExplosion2)


-- Destroy dead body // Destrói corpo morto
function destroyDeadPlayer(ped, pedCol)
  destroyElement(ped)
  destroyElement(pedCol)
end


-- When player kills himself // Quando player se suicida
function killPlayerWithCommand(thePlayer)
	pedCol = false
	local account = getPlayerAccount(thePlayer)
	if not account then
		return
	end
	killPed(thePlayer)
	triggerClientEvent(thePlayer, "hideInventoryManual", thePlayer)
	if getElementData(thePlayer, "alivetime") > 5 and not isElementInWater(thePlayer) then
		if getElementData(thePlayer, "DW-Administrador") ~= true and getElementData(thePlayer, "DW-Moderador") ~= true and getElementData(thePlayer, "DW-Gerente") ~= true then
			local x, y, z = getElementPosition(thePlayer)
			if getDistanceBetweenPoints3D(x, y, z, 6000, 6000, 0) > 200 then
			  local x, y, z = getElementPosition(thePlayer)
			  local rotX, rotY, rotZ = getElementRotation(thePlayer)
			  local skin = getElementModel(thePlayer)
			  local ped = createPed(skin, x, y, z, rotZ)
			  pedCol = createColSphere(x, y, z, 1.5)
			  killPed(ped)
			  setTimer(destroyDeadPlayer, 1200000, 1, ped, pedCol) -- 20 minutes
			  attachElements(pedCol, ped, 0, 0, 0)
			  setElementData(pedCol, "parent", ped)
			  setElementData(pedCol, "playername", getPlayerName(thePlayer))
			  setElementData(pedCol, "deadman", true)
			  setElementData(pedCol, "MAX_Slots", getElementData(thePlayer, "MAX_Slots"))
			  local time = getRealTime()
			  local hours = time.hour
			  local minutes = time.minute
			  setElementData(pedCol, "deadreason", "#FF6A00" .. getPlayerName(thePlayer) .. " #FFFFFFestá morto(a) | Motivo: #FF6A00suicídio #FFFFFF | Quando morreu: #FF6A00" .. hours .. ":" .. minutes .. "#FFFFFF.")
			end
		end
	end
	if pedCol then
		for i, data in ipairs(playerDataTable) do
			local plusData = getElementData(thePlayer, data[1])
			if data[1] == Weapon_PistolAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 7)
			elseif data[1] == Weapon_SilencedAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 15)
			elseif data[1] == Weapon_DesertAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 7)
			elseif data[1] == Weapon_UziAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 30)
			elseif data[1] == Weapon_MP5Ammo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 20)
			elseif data[1] == Weapon_AKAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 30)
			elseif data[1] == Weapon_M4Ammo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 20)
			elseif data[1] == Weapon_SniperAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 5)
			elseif data[1] == Weapon_CountryAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 10)
			elseif data[1] == Weapon_ShotgunAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 7)
			elseif data[1] == Weapon_SpasAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 7)
			elseif data[1] == Weapon_SawnOffAmmo then
				plusData = math.floor(getElementData(thePlayer, data[1]) / 2)
			end
			setElementData(pedCol, data[1], plusData)
		end
		local skinID = getElementData(thePlayer, "skin")
		local skin = getSkinNameFromID(skinID)
		setElementData(pedCol, skin, 1)
		local backpackSlots = getElementData(thePlayer, "MAX_Slots")
		if backpackSlots == 12 then
			setElementData(pedCol, "Assault Pack (ACU)", 1)
		elseif backpackSlots == 16 then
			setElementData(pedCol, "Alice Pack", 1)
		elseif backpackSlots == 26 then
			setElementData(pedCol, "Czech Backpack", 1)
		elseif backpackSlots == 36 then
			setElementData(pedCol, "Coyote Backpack", 1)
		end
	end
	setTimer(setElementPosition, 500, 1, thePlayer, 6000, 6000, 0)
	triggerClientEvent(thePlayer, "onClientPlayerDeathInfo", thePlayer)
	setAccountData(account, "isDead", true)
	setElementData(thePlayer, "isDead", true)
	triggerClientEvent("onRollMessageStart", getRootElement(), "#FFFFFF" .. getPlayerName(thePlayer) .. " #FFFFFFmorreu.", 0, 22, 255, "died")
	destroyElement(getElementData(thePlayer, "playerCol"))
	setTimer(spawnDayZPlayer, 5000, 1, thePlayer)
end
addCommandHandler("suicidar", killPlayerWithCommand)


-- When player die // Quando jogador morre
function kilLDayZPlayer(killer, headshot, weapon)
	pedCol = false
	local account = getPlayerAccount(source)
	if not account then
		return
	end
	killPed(source)
	triggerClientEvent(source, "hideInventoryManual", source)
	if getElementData(source, "alivetime") > 5 and not isElementInWater(source) then
		if getElementData(source, "DW-Administrador") ~= true and getElementData(source, "DW-Moderador") ~= true and getElementData(source, "DW-Gerente") ~= true then
			local x, y, z = getElementPosition(source)
			if getDistanceBetweenPoints3D(x, y, z, 6000, 6000, 0) > 200 then
			  local x, y, z = getElementPosition(source)
			  local rotX, rotY, rotZ = getElementRotation(source)
			  local skin = getElementModel(source)
			  local ped = createPed(skin, x, y, z, rotZ)
			  pedCol = createColSphere(x, y, z, 1.5)
			  killPed(ped)
			  setTimer(destroyDeadPlayer, 2700000, 1, ped, pedCol)
			  attachElements(pedCol, ped, 0, 0, 0)
			  setElementData(pedCol, "parent", ped)
			  setElementData(pedCol, "playername", getPlayerName(source))
			  setElementData(pedCol, "deadman", true)
			  setElementData(pedCol, "MAX_Slots", getElementData(source, "MAX_Slots"))
			  local time = getRealTime()
			  local hours = time.hour
			  local minutes = time.minute
			  setElementData(pedCol, "deadreason", "#FF6A00" .. getPlayerName(source) .. " #FFFFFFestá morto(a) | Arma utilizada: #FF6A00" .. (weapon or "desconhecida") .. "#FFFFFF | Quando morreu: #FF6A00" .. hours .. ":" .. minutes .. "#FFFFFF.")
			end
		end
	end
	if killer then
		if not getElementData(source, "bandit") then
			addPlayerStats(killer, "humanity", math.random(-2500, -1000))
		else
			addPlayerStats(killer, "humanity", math.random(1000, 2500))
		end
		if getElementData(source, "alivetime") > 2 then
			setElementData(killer, "murders", getElementData(killer, "murders") + 1)
		else
			outputChatBox("Você não ganhou um 'assassinato' pois matou um jogagdor com poucas horas de jogo.", source)
		end
		if 0 > getElementData(killer, "humanity") then
			setElementData(killer, "bandit", true)
		end
		if getElementData(source, "bandit") == true then
			setElementData(killer, "banditskilled", getElementData(killer, "banditskilled") + 1)
		end
		if headshot == true then
			setElementData(killer, "headshots", getElementData(killer, "headshots") + 1)
		end
	end
  if pedCol then
    for i, data in ipairs(playerDataTable) do
      local plusData = getElementData(source, data[1])
      if data[1] == Weapon_PistolAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 7)
      elseif data[1] == Weapon_SilencedAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 15)
      elseif data[1] == Weapon_DesertAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 7)
      elseif data[1] == Weapon_UziAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 30)
      elseif data[1] == Weapon_MP5Ammo then
        plusData = math.floor(getElementData(source, data[1]) / 20)
      elseif data[1] == Weapon_AKAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 30)
      elseif data[1] == Weapon_M4Ammo then
        plusData = math.floor(getElementData(source, data[1]) / 20)
      elseif data[1] == Weapon_SniperAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 5)
      elseif data[1] == Weapon_CountryAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 10)
      elseif data[1] == Weapon_ShotgunAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 7)
      elseif data[1] == Weapon_SpasAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 7)
      elseif data[1] == Weapon_SawnOffAmmo then
        plusData = math.floor(getElementData(source, data[1]) / 2)
      end
      setElementData(pedCol, data[1], plusData)
    end
    local skinID = getElementData(source, "skin")
    local skin = getSkinNameFromID(skinID)
    setElementData(pedCol, skin, 1)
    local backpackSlots = getElementData(source, "MAX_Slots")
    if backpackSlots == 12 then
      setElementData(pedCol, "Assault Pack (ACU)", 1)
    elseif backpackSlots == 16 then
      setElementData(pedCol, "Alice Pack", 1)
    elseif backpackSlots == 26 then
      setElementData(pedCol, "Czech Backpack", 1)
    elseif backpackSlots == 36 then
      setElementData(pedCol, "Coyote Backpack", 1)
    end
  end
  setTimer(setElementPosition, 500, 1, source, 6000, 6000, 0)
  triggerClientEvent(source, "onClientPlayerDeathInfo", source)
  setAccountData(account, "isDead", true)
  setElementData(source, "isDead", true)
  setAccountData(account, "armor", false)
  setElementData(source, "armor", false)
  triggerClientEvent("onRollMessageStart", getRootElement(), "#FFFFFF" .. getPlayerName(source) .. " #FFFFFFmorreu.", 0, 22, 255, "died")
  destroyElement(getElementData(source, "playerCol"))
  setTimer(spawnDayZPlayer, 5000, 1, source)
end
addEvent("kilLDayZPlayer", true)
addEventHandler("kilLDayZPlayer", getRootElement(), kilLDayZPlayer)
