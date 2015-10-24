﻿--[[
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
		

local spalten = {}
local spalteGuiImage = {}
local spalteGuiText = {}
local optionsTable = {
  player = {
    {
      "Give Painkillers"
    },
    {
      "Give Bandage"
    },
    {
      "Give Morphine"
    }
  }
}
spalten[1] = ""
spalten[2] = ""
spalten[3] = ""
spalten[4] = ""
spalteGuiImage[1] = guiCreateStaticImage(0, 0.45, 0.1, 0.025, "images/scrollmenu_1.png", true)
spalteGuiImage[2] = guiCreateStaticImage(0, 0.475, 0.1, 0.025, "images/scrollmenu_1.png", true)
spalteGuiImage[3] = guiCreateStaticImage(0, 0.5, 0.1, 0.025, "images/scrollmenu_1.png", true)
spalteGuiImage[4] = guiCreateStaticImage(0, 0.525, 0.1, 0.025, "images/scrollmenu_1.png", true)
spalteGuiText[1] = guiCreateLabel(0.05, 0.05, 0.995, 0.95, spalten[1], true, spalteGuiImage[1])
spalteGuiText[2] = guiCreateLabel(0.05, 0.05, 0.995, 0.95, spalten[2], true, spalteGuiImage[2])
spalteGuiText[3] = guiCreateLabel(0.05, 0.05, 0.995, 0.95, spalten[3], true, spalteGuiImage[3])
spalteGuiText[4] = guiCreateLabel(0.05, 0.05, 0.995, 0.95, spalten[4], true, spalteGuiImage[4])
guiSetVisible(spalteGuiImage[1], false)
guiSetVisible(spalteGuiImage[2], false)
guiSetVisible(spalteGuiImage[3], false)
guiSetVisible(spalteGuiImage[4], false)


function showClientMenuItem(arg1, arg2, arg3, arg4)
  local number = 0
  if arg1 == "Take" then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Take " .. arg2)
    if number == 1 then
      guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
      setElementData(spalteGuiText[number], "markedMenuItem", true)
    end
    setElementData(spalteGuiText[number], "usedItem", arg2)
  end
  if arg1 == "stop" then
    disableMenu()
    refreshLoot(false)
  end
  if arg1 == "Helicrashsite" then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Vasculhar (Helicrash)")
    if number == 1 then
      guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
      setElementData(spalteGuiText[number], "markedMenuItem", true)
    end
    setElementData(spalteGuiText[number], "usedItem", "helicrashsite")
  end
  if arg1 == "Hospitalbox" then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Vasculhar (Hospitalbox)")
    if number == 1 then
      guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
      setElementData(spalteGuiText[number], "markedMenuItem", true)
    end
    setElementData(spalteGuiText[number], "usedItem", "hospitalbox")
  end
  if arg1 == "Vehicle" then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Vasculhar (" .. arg2 .. ")")
    guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
    setElementData(spalteGuiText[number], "markedMenuItem", true)
    setElementData(spalteGuiText[number], "usedItem", "vehicle")
    if getElementData(getElementData(arg3, "parent"), "tent") then
      number = number + 1
      guiSetVisible(spalteGuiImage[number], true)
      guiSetText(spalteGuiText[number], "Remover tenda")
      if number == 1 then
        guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
        setElementData(spalteGuiText[number], "markedMenuItem", true)
      end
      setElementData(spalteGuiText[number], "usedItem", "tent")
      return
    end
    if getElementHealth(arg3) < 1000 and 50 <= getElementHealth(arg3) and 1 <= getElementData(getLocalPlayer(), Item_Toolbox) then
      number = number + 1
      guiSetVisible(spalteGuiImage[number], true)
      guiSetText(spalteGuiText[number], "Reparar (" .. arg2 .. ")")
      setElementData(spalteGuiText[number], "usedItem", "repairvehicle")
    end
  end
  if arg1 == "Player" then
    if 0 < getElementData(arg2, "bleeding") and 1 <= getElementData(getLocalPlayer(), Item_Bandage) then
      number = number + 1
      guiSetVisible(spalteGuiImage[number], true)
      guiSetText(spalteGuiText[number], "Dar "..Item_Bandage)
      guiLabelSetColor(spalteGuiText[1], 50, 255, 50)
      setElementData(spalteGuiText[1], "markedMenuItem", true)
      setElementData(spalteGuiText[number], "usedItem", "bandage")
    end
    if getElementData(arg2, "blood") < 11900 and 1 <= getElementData(getLocalPlayer(), Item_BloodBag) then
      number = number + 1
      guiSetVisible(spalteGuiImage[number], true)
      guiSetText(spalteGuiText[number], "Usar "..Item_BloodBag)
      setElementData(spalteGuiText[number], "usedItem", "giveblood")
      if number == 1 then
        guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
        setElementData(spalteGuiText[number], "markedMenuItem", true)
      end
    end
	--[[
	local currentlyBackpack = getElementData(arg2, "MAX_Slots")
	if currentlyBackpack == 8 or currentlyBackpack == 12 or currentlyBackpack == 16 or currentlyBackpack == 26 or currentlyBackpack == 36 then
		number = number + 1
		guiSetVisible(spalteGuiImage[number], true)
		guiSetText(spalteGuiText[number], "Abrir mochila")
		if number == 1 then
			guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
			setElementData(spalteGuiText[number], "markedMenuItem", true)
		end
		setElementData(spalteGuiText[number], "usedItem", "itemloot")
		outputChatBox(number)
		--outputChatBox(getElementData(spalteGuiText[number], "usedItem"))
	end
	]]
  end
  if arg1 == "Dead" then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Vasculhar (" .. arg2 .. ")")
    if number == 1 then
      guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
      setElementData(spalteGuiText[number], "markedMenuItem", true)
    end
    setElementData(spalteGuiText[number], "usedItem", "dead")
    number = number + 1
    setElementData(spalteGuiText[number], "usedItem", "deadreason")
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Analisar corpo")
  end
  if arg1 == "Fireplace" and 1 <= getElementData(getLocalPlayer(), Item_RawMeat) then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], Item_CookedMeat)
    guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
    setElementData(spalteGuiText[number], "markedMenuItem", true)
    setElementData(spalteGuiText[number], "usedItem", "fireplace")
  end
  if arg1 == "patrol" and 1 <= getElementData(getLocalPlayer(), Item_EmptyPatrol) then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Encher (Galão de Gasolina)")
    if number == 1 then
      guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
      setElementData(spalteGuiText[number], "markedMenuItem", true)
    end
    setElementData(spalteGuiText[number], "usedItem", "patrolstation")
  end
  if arg1 == "Wirefence" and 1 <= getElementData(getLocalPlayer(), Item_Toolbox) then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Remover cerca")
    if number == 1 then
      guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
      setElementData(spalteGuiText[number], "markedMenuItem", true)
    end
    setElementData(spalteGuiText[number], "usedItem", "wirefence")
  end
  if arg1 == "Gear" then
    number = number + 1
    guiSetVisible(spalteGuiImage[number], true)
    guiSetText(spalteGuiText[number], "Vasculhar")
    if number == 1 then
      guiLabelSetColor(spalteGuiText[number], 50, 255, 50)
      setElementData(spalteGuiText[number], "markedMenuItem", true)
    end
    setElementData(spalteGuiText[number], "usedItem", "itemloot")
  end
end
addEvent("showClientMenuItem", true)
addEventHandler("showClientMenuItem", getLocalPlayer(), showClientMenuItem)


-- Player scroll menu // Scroll do menu
function PlayerScrollMenu(key, keyState, arg)
  if keyState == "down" then
    if not guiGetVisible(spalteGuiImage[2]) then
      return
    end
    if arg == "up" then
      if getElementData(spalteGuiText[1], "markedMenuItem") then
        setElementData(spalteGuiText[1], "markedMenuItem", false)
        setElementData(spalteGuiText[2], "markedMenuItem", true)
        guiLabelSetColor(spalteGuiText[2], 50, 255, 50)
        guiLabelSetColor(spalteGuiText[1], 255, 255, 255)
      elseif getElementData(spalteGuiText[2], "markedMenuItem") then
        setElementData(spalteGuiText[2], "markedMenuItem", false)
        setElementData(spalteGuiText[1], "markedMenuItem", true)
        guiLabelSetColor(spalteGuiText[1], 50, 255, 50)
        guiLabelSetColor(spalteGuiText[2], 255, 255, 255)
      end
    elseif arg == "down" then
      if getElementData(spalteGuiText[1], "markedMenuItem") then
        setElementData(spalteGuiText[1], "markedMenuItem", false)
        setElementData(spalteGuiText[2], "markedMenuItem", true)
        guiLabelSetColor(spalteGuiText[2], 50, 255, 50)
        guiLabelSetColor(spalteGuiText[1], 255, 255, 255)
      elseif getElementData(spalteGuiText[2], "markedMenuItem") then
        setElementData(spalteGuiText[2], "markedMenuItem", false)
        setElementData(spalteGuiText[1], "markedMenuItem", true)
        guiLabelSetColor(spalteGuiText[1], 50, 255, 50)
        guiLabelSetColor(spalteGuiText[2], 255, 255, 255)
      end
    end
  end
end
bindKey("mouse_wheel_up", "down", PlayerScrollMenu, "up")
bindKey("pgup", "down", PlayerScrollMenu, "up")
bindKey("mouse_wheel_down", "down", PlayerScrollMenu, "down")
bindKey("pgdn", "down", PlayerScrollMenu, "down")
function disableMenu()
  guiSetVisible(spalteGuiImage[1], false)
  guiSetVisible(spalteGuiImage[2], false)
  guiSetVisible(spalteGuiImage[3], false)
  guiSetVisible(spalteGuiImage[4], false)
  setElementData(spalteGuiText[1], "markedMenuItem", false)
  setElementData(spalteGuiText[2], "markedMenuItem", false)
  setElementData(spalteGuiText[3], "markedMenuItem", false)
  setElementData(spalteGuiText[4], "markedMenuItem", false)
  setNewbieInfo(false, "", "")
end
addEvent("disableMenu", true)
addEventHandler("disableMenu", getLocalPlayer(), disableMenu)
function getPlayerInCol(tab)
  for theKey, thePlayer in ipairs(tab) do
    if thePlayer ~= getLocalPlayer() then
      return true
    end
  end
  return false
end
isInFirePlace = false


function onPlayerTargetPickup(theElement)
  if theElement == getLocalPlayer() then
    if getElementData(source, "parent") == getLocalPlayer() then
      return
    end
    local player = getPlayerInCol(getElementsWithinColShape(source, "player"))
    if getPedOccupiedVehicle(getLocalPlayer()) then
      return
    end
    isInFirePlace = false
    setElementData(spalteGuiText[2], "markedMenuItem", false)
    setElementData(spalteGuiText[1], "markedMenuItem", true)
    guiLabelSetColor(spalteGuiText[1], 50, 255, 50)
    guiLabelSetColor(spalteGuiText[2], 255, 255, 255)
    if getElementData(source, "player") then
      showClientMenuItem("Player", getElementData(source, "parent"))
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", false)
      return
    end
    if player then
      return
    end
    if getElementData(source, "patrolstation") then
      showClientMenuItem("patrol")
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", false)
      setNewbieInfo(true, "patrolstation", [[
Pressione '-' ou 'scroll do mouse' para encher o botijão!
NECESSÁRIO: ]]..Item_EmptyPatrol, source)
      return
    end
    if getElementData(source, "wirefence") then
      showClientMenuItem("Wirefence")
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", false)
      setNewbieInfo(true, Item_Toolbox, [[
Pressione '-' ou 'scroll do mouse' para remover o arame!
NECESSÁRIO: ]]..Item_Toolbox, source)
      return
    end
    if getElementData(source, "fireplace") then
      showClientMenuItem("Fireplace")
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", false)
      setNewbieInfo(true, "Fogueira", [[
Pressione '-' ou 'scroll do mouse' para cozinhar a carne!
NECESSÁRIO: ]]..Item_RawMeat, source)
      isInFirePlace = true
      return
    end
    if getElementData(source, "deadman") then
      showClientMenuItem("Dead", getElementData(source, "playername"))
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", true)
      setElementData(getLocalPlayer(), "lootname", "Vasculhar (" .. getElementData(source, "playername") .. ")")
      setNewbieInfo(true, "Gear", "Pressione 'J' para vasculhar os objetos!", source)
      return
    end
    if getElementData(source, "item") then
      showClientMenuItem("Take", getElementData(source, "item"))
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", false)
      setNewbieInfo(true, "Item pickup", "Pressione '-' ou 'scroll do mouse' para pegar este ítem!", source)
      return
    end
    if getElementData(source, "helicrash") then
      showClientMenuItem("Helicrashsite", "helicrash")
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", true)
      setElementData(getLocalPlayer(), "lootname", "Vasculhar (Helicrash)")
      setNewbieInfo(true, "Gear", "Pressione 'J' para vasculhar o helicóptero!", source)
      return
    end
    if getElementData(source, "hospitalbox") then
      showClientMenuItem("Hospitalbox", "hospitalbox")
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", true)
      setElementData(getLocalPlayer(), "lootname", "Vasculhar (Hospitalbox)")
      setNewbieInfo(true, "Gear", "Pressione 'J' para vasculhar a caixa!", source)
      return
    end
    if getElementData(source, "vehicle") and not getElementData(source, "deadVehicle") then
      showClientMenuItem("Vehicle", getVehicleName(getElementData(source, "parent")) or Item_Tent, getElementData(source, "parent"))
      setElementData(getLocalPlayer(), "currentCol", source)
      setElementData(getLocalPlayer(), "loot", true)
      setElementData(getLocalPlayer(), "lootname", "Vasculhar (" .. (getVehicleName(getElementData(source, "parent")) or Item_Tent) .. ")")
      setNewbieInfo(true, "Gear", "Pressione 'J' para vasculhar!", source)
      return
    end
    if getElementData(source, "itemloot") then
      showClientMenuItem("Gear")
      setElementData(getLocalPlayer(), "loot", true)
      setElementData(getLocalPlayer(), "lootname", "Gear")
      setElementData(getLocalPlayer(), "currentCol", source)
      setNewbieInfo(true, "Gear", "Pressione 'J' para vasculhar os objetos!", source)
      return
    end
    showClientMenuItem("stop")
  end
end
addEventHandler("onClientColShapeHit", getRootElement(), onPlayerTargetPickup)
function onPlayerTargetPickup(theElement)
  if theElement == getLocalPlayer() then
    local players = getElementsWithinColShape(source, "player")
    if players == getLocalPlayer() then
    end
    showClientMenuItem("stop")
    setElementData(getLocalPlayer(), "loot", false)
    setElementData(getLocalPlayer(), "currentCol", false)
    setNewbieInfo(false, "", "")
    isInFirePlace = false
  end
end
addEventHandler("onClientColShapeLeave", getRootElement(), onPlayerTargetPickup)
local screenWidth, screenHeight = guiGetScreenSize()
local newbieShow = false
local newbieHead = "-"
local newbieText = "-"
local newbiePosition = 0
function setNewbieInfo(show, head, text, element)
  newbieShow = show
  newbieHead = head
  newbieText = text
  newbiePosition = element
end
addEventHandler("onClientRender", getRootElement(), function()
  if newbieShow == false then
    return
  end
  local x, y, z = getElementPosition(newbiePosition)
  local x, y, zT = getScreenFromWorldPosition(x, y, z)
  local length = dxGetTextWidth(newbieText, 1, "default-bold")
  dxDrawRectangle(x - length / 2 - screenWidth * 0.01, y, screenWidth * 0.02 + length, screenHeight * 0.1, tocolor(33, 33, 33, 100))
  dxDrawingColorText(newbieHead, x - length / 2 - screenWidth * 0.01, y, x + length / 2 + screenWidth * 0.01, y + screenHeight * 0.03, tocolor(22, 255, 22, 120), 0.5, 1.1, "default-bold", "center", "center")
  dxDrawingColorText(newbieText, x - length / 2 - screenWidth * 0.01, y + screenHeight * 0.03, x + length / 2 + screenWidth * 0.01, y + screenHeight * 0.07, tocolor(255, 255, 255, 120), 0.5, 1, "default-bold", "center", "center")
end)
function fireRaiseTemperature()
  if isInFirePlace and getElementData(getLocalPlayer(), "temperature") <= 38 then
    setElementData(getLocalPlayer(), "temperature", getElementData(getLocalPlayer(), "temperature") + 0.25)
  end
end
setTimer(fireRaiseTemperature, 10000, 0)
unbindKey("mouse3", "both")


-- When player press middle mouse // Quando jogador pressiona o botão do meio do mouse
function onPlayerPressMiddleMouse(key, keyState)
  if keyState == "down" then
    if not guiGetVisible(spalteGuiText[1]) then
      return
    end
    local itemName = getMenuMarkedItem()
    if itemName == "helicrashsite" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      local gearName = "Gear (Helicrash)"
      refreshLoot(col, gearName)
      showInventoryManual()
      return
    end
    if itemName == "itemloot" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      local gearName = "Gear"
      refreshLoot(col, gearName)
      showInventoryManual()
      return
    end
    if itemName == "wirefence" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      local gearName = "Remove Wirefence"
      triggerServerEvent("removeWirefence", getLocalPlayer(), getElementData(col, "parent"))
      disableMenu()
      return
    end
    if itemName == "hospitalbox" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      local gearName = "Gear (Hospitalbox)"
      refreshLoot(col, gearName)
      showInventoryManual()
      return
    end
    if itemName == "vehicle" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      local gearName = "Gear (" .. (getVehicleName(getElementData(col, "parent")) or Item_Tent) .. ")"
      refreshLoot(col, gearName)
      showInventoryManual()
      return
    end
    if itemName == "repairvehicle" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      triggerServerEvent("repairVehicle", getLocalPlayer(), getElementData(col, "parent"))
      disableMenu()
      return
    end
    if itemName == "tent" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      triggerServerEvent("removeTent", getLocalPlayer(), getElementData(col, "parent"))
      disableMenu()
      return
    end
    if itemName == "fireplace" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      triggerServerEvent("addPlayerCookMeat", getLocalPlayer())
      disableMenu()
      return
    end
    if itemName == "bandage" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      triggerServerEvent("onPlayerGiveMedicObject", getLocalPlayer(), itemName, getElementData(col, "parent"))
      disableMenu()
      return
    end
    if itemName == "giveblood" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      triggerServerEvent("onPlayerGiveMedicObject", getLocalPlayer(), itemName, getElementData(col, "parent"))
      disableMenu()
      return
    end
    if itemName == "dead" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      local gearName = "Gear (" .. getElementData(col, "playername") .. ")"
      refreshLoot(col, gearName)
      showInventoryManual()
      return
    end
    if itemName == "deadreason" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      outputChatBox(getElementData(col, "deadreason"), 255, 255, 255, true)
      return
    end
    if itemName == "patrolstation" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      setElementData(getLocalPlayer(), Item_EmptyPatrol, getElementData(getLocalPlayer(), Item_EmptyPatrol) - 1)
      setElementData(getLocalPlayer(), Item_FullPatrol, (getElementData(getLocalPlayer(), Item_FullPatrol) or 0) + 1)
      triggerEvent("displayClientInfo", getLocalPlayer(), "patrolstation", "O botijão foi enchido!", 22, 255, 0)
      disableMenu()
      return
    end
    if isToolbeltItem(itemName) then
      local col = getElementData(getLocalPlayer(), "currentCol")
      triggerServerEvent("onPlayerTakeItemFromGround", getLocalPlayer(), itemName, col)
      disableMenu()
      return
    end
    if itemName == "Assault Pack (ACU)" or itemName == "Alice Pack" or itemName == "Czech Backpack" or itemName == "Coyote Backpack" then
      local col = getElementData(getLocalPlayer(), "currentCol")
      triggerServerEvent("onPlayerTakeItemFromGround", getLocalPlayer(), itemName, col)
      disableMenu()
      return
    end
    if getPlayerCurrentSlots() + getItemSlots(itemName) <= getPlayerMaxAviableSlots() then
      do
        local col = getElementData(getLocalPlayer(), "currentCol")
        triggerServerEvent("onPlayerTakeItemFromGround", getLocalPlayer(), itemName, col)
        disableMenu()
      end
    else
      startRollMessage2("Inventory", "Inventário cheio!", 255, 22, 0)
    end
  end
end
bindKey("mouse3", "down", onPlayerPressMiddleMouse)
bindKey("end", "down", onPlayerPressMiddleMouse)
bindKey("-", "down", onPlayerPressMiddleMouse)


-- Pega o menu selecionado
function getMenuMarkedItem()
  for i, guiItem in ipairs(spalteGuiText) do
    if getElementData(guiItem, "markedMenuItem") then
      return getElementData(guiItem, "usedItem")
    end
  end
end


function playerPressedKey(button, press)
  if press and (button == "w" or button == "a" or button == "s" or button == "d") then
    local anim, anim2 = getPedAnimation(getLocalPlayer())
    if anim and anim == "SCRATCHING" and anim2 == "sclng_r" then
      triggerServerEvent("onClientMovesWhileAnimation", getLocalPlayer())
    end
  end
end
addEventHandler("onClientKey", root, playerPressedKey)
