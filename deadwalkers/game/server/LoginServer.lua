--------------------------------------------------------------------
-- Connects a player in to the game
-- @param Player player:      the player that is trying to login
-- @param string user:        player's username
-- @param string pass:        player's password
-- @param string origin:      the resource's name which is calling this function
-- @param string callback:    function (in origin resource) that will receive the response
-- @exported_function
--------------------------------------------------------------------
function login(player, user, pass, origin, callback)
  local account = getAccount(user, pass)
  if not account then 
    call(getResourceFromName(origin), callback, false) 
    return false
  end

  if logIn(player, account, pass) then
    call(getResourceFromName(origin), callback, true)
    ElementDataManagerServer:saveAllPropertiesFromAccountData(account, player)
    hideHudElementsWhenRegistering(player)
    spawnPlayerOnMap(player)
    return true
  end
end

--------------------------------------------------------------------
-- Registers a player in to the game
-- @param Player player:      the player that is trying to login
-- @param string user:        player's username
-- @param string pass:        player's password
-- @param string origin:      the resource's name which is calling this function
-- @param string callback:    function (in origin resource) that will receive the response
-- @exported_function
--------------------------------------------------------------------
function register(player, user, pass, origin, callback)
  local registered = addAccount(user, pass)
  if registered then
    call(getResourceFromName(origin), callback, true)
    login(player, user, pass, origin, callback)
    return true
  else
    call(getResourceFromName(origin), callback, false)
    return false
  end
end

--------------------------------------------------------------------
-- Gets the last player positions and spawns him on map
-- @param Player thePlayer: current player
--------------------------------------------------------------------
function spawnPlayerOnMap(thePlayer)
  local x, y, z = AccountDataManagerServer:getLastPosition(thePlayer)
  if not x or not y or not z then
    local spawns = PlayerSpawnsConfig:getSpawnsList()
    local n = math.random(#spawns)
    x = spawns[n][1]
    y = spawns[n][2]
    z = spawns[n][3]
  end
  spawnPlayer(thePlayer, x, y, z + 1.5, 0, AccountDataManagerServer:getSkin(thePlayer))
  fadeCamera(thePlayer, true)
  setCameraTarget(thePlayer, thePlayer)
end

--------------------------------------------------------------------
-- Calls a function which hides all HUD elements when player is 
-- registering, since he has not any item.
-- @param Player thePlayer: current player
--------------------------------------------------------------------
function hideHudElementsWhenRegistering(thePlayer)
  UtilitiesServer:hideAllHUDElements(thePlayer)
end

--------------------------------------------------------------------
-- Saves player's data
-- @param Player thePlayer: current player
--------------------------------------------------------------------
function savePlayerData(thePlayer)
  AccountDataManagerServer:setLastPosition(thePlayer)
end

function ePlayerQuit(quitType, reason, responsibleElement)
  savePlayerData(source)
end
addEventHandler("onPlayerQuit", getRootElement(), ePlayerQuit)

function ePlayerLogout()
  savePlayerData(source)
end
addEventHandler("onPlayerLogout", getRootElement(), ePlayerLogout)

addEventHandler("onPlayerLogin", getRootElement(getThisResource()), function() 
  
end)