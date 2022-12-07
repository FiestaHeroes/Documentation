---@diagnostic disable: lowercase-global

----------------------------------------------
---------------- Common.lua ------------------
----------------------------------------------

--- Return type for AIScripts.
---@class ReturnAI
--- Returning this value will stop the zone from
--- running any custom logic for the mob. It will
--- be fully controlled by lua.
---@field END integer
--- Returning this value will make the zone run
--- normal mob logic for this mob.
---@field CPP integer
ReturnAI = {}
ReturnAI.END = 1
ReturnAI.CPP = 2

--- Types for objects.
---@class ObjectType
---@field Invalid integer
---@field Flag integer
---@field DropItem integer
---@field Player integer
---@field MiniHouse integer
---@field NPC integer
---@field Mob integer
---@field MagicField integer
---@field Door integer
---@field Bandit integer
---@field Effect integer
---@field Servant integer
---@field Mover integer
---@field Pet integer
--- Max value for this field.\
--- Mostly used in conditional expressions to test
--- if a value is actually valid.
---@field Max integer

ObjectType = {}
ObjectType.Invalid = -1
ObjectType.Flag = 0
ObjectType.DropItem = 1
ObjectType.Player = 2
ObjectType.MiniHouse = 3
ObjectType.NPC = 4
ObjectType.Mob = 5
ObjectType.MagicField = 6
ObjectType.Door = 7
ObjectType.Bandit = 8
ObjectType.Effect = 9
ObjectType.Servant = 10
ObjectType.Mover = 11
ObjectType.Pet = 12
ObjectType.Max = 13

--- BaseClass Enum. Use this to compare against the
--- return value of functions returning this type.
---@class BasicClass
---@field None integer
---@field Fighter integer
---@field Cleric integer
---@field Archer integer
---@field Mage integer
---@field Joker integer
--- Needs to be manually added to common.lua
---@field Sentinel integer
BasicClass = {}
BasicClass.None = 0
BasicClass.Fighter = 1
BasicClass.Cleric = 6
BasicClass.Archer = 11
BasicClass.Mage = 16
BasicClass.Joker = 21
BasicClass.Sentinel = 26

---
---@class EFFECT_MSG_TYPE
---@field EMT_WIN integer
---@field EMT_LOSE integer
---@field EMT_DRAW integer
---@field EMT_START integer
---@field EMT_COUNT_8_SEC integer
---@field EMT_SUCCESS integer
---@field EMT_FAIL integer
---@field EMT_START_OLYMPIC integer
---@field EMT_GOAL_OLYMPIC integer
---@field EMT_SOCCER_WIN integer
---@field EMT_SOCCER_LOSE integer
---@field EMT_SOCCER_DRAW integer
---@field EMT_SOCCER_KICK_OFF integer
---@field EMT_SOCCER_GOAL integer
---@field EMT_WATER_START integer
EFFECT_MSG_TYPE = {}
EFFECT_MSG_TYPE.EMT_WIN = 0
EFFECT_MSG_TYPE.EMT_LOSE = 1
EFFECT_MSG_TYPE.EMT_DRAW = 2
EFFECT_MSG_TYPE.EMT_START = 3
EFFECT_MSG_TYPE.EMT_COUNT_8_SEC = 4
EFFECT_MSG_TYPE.EMT_SUCCESS = 5
EFFECT_MSG_TYPE.EMT_FAIL = 6
EFFECT_MSG_TYPE.EMT_START_OLYMPIC = 7
EFFECT_MSG_TYPE.EMT_GOAL_OLYMPIC = 8
EFFECT_MSG_TYPE.EMT_SOCCER_WIN = 9
EFFECT_MSG_TYPE.EMT_SOCCER_LOSE = 10
EFFECT_MSG_TYPE.EMT_SOCCER_DRAW = 11
EFFECT_MSG_TYPE.EMT_SOCCER_KICK_OFF = 12
EFFECT_MSG_TYPE.EMT_SOCCER_GOAL = 13
EFFECT_MSG_TYPE.EMT_WATER_START = 14

---@class CAMERA_STATE
---@field NONE integer
---@field MOVING integer
CAMERA_STATE = {}
CAMERA_STATE.NONE = 0
CAMERA_STATE.MOVING = 1

---@class KQ_TEAM
---@field RED integer
---@field BLUE integer
--- Max value for this field.\
--- Mostly used in conditional  expressions to test
--- if a value is actually valid.
---@field MAX integer
KQ_TEAM = {}
KQ_TEAM.RED = 0
KQ_TEAM.BLUE = 1
KQ_TEAM.MAX = 2

---@class PlayerDamage
---@field Handle integer
---@field DamageDealt integer
---@field DamageTaken integer
---@field HealingDone integer
---@field PlyName string

---@class PlayerList
---@field PlyDmg PlayerDamage[]

WAIT_PLAYER_MAP_LOGIN_SEC_MAX = 240

----------------------------------------------
------------------- Fiesta -------------------
----------------------------------------------
---------------- Damage Board ----------------
----------------------------------------------

--- Global variable holding instance data.
InstanceField = {}

--- Resets damage for damage board for the current instance.
---@param Field integer MapID
function InstanceDungeonClear(Field)
    cExecCheck "InstanceDungeonClear"

    InstanceField[Field] = nil
end
----------------------------------------------
------------------- Fiesta -------------------
----------------------------------------------
----------------- Functions ------------------
----------------------------------------------

--- Needs to be first call in **every** function.\
--- Tells the server the last function called for error logging.
---
--- ```
--- function TestFunction()
---     cExecCheck("TestFunction")
--- end
--- ```
---@param FunctionName string
function cExecCheck(FunctionName)
end

--- Spawns a mob at position X Y.
---
--- ```
--- local mobHandle = cMobRegen_XY("Rou", "Slime", 5000, 5000, 0)
--- ```
---@param MapINX string
---@param MobINX string
---@param X integer
---@param Y integer
---@param Direction integer
---@return integer|nil MobHandle
function cMobRegen_XY(MapINX, MobINX, X, Y, Direction)
end

--- Spawns a mob in a circle specified through X Y and Radius.
---
--- ```
--- local mobNumber = cMobRegen_Circle("Rou", "Slime", 5000, 5000, 100)
--- ```
---@param MapINX string
---@param MobINX string
---@param X integer
---@param Y integer
---@param Radius integer
---@return integer|nil MobHandle
function cMobRegen_Circle(MapINX, MobINX, X, Y, Radius)
end

--- Returns the X and Y of the Handle.
---
--- ```
--- local playerX, playerY = cObjectLocate(player)
--- ```
---@param Handle integer
---@return integer|nil x
---@return integer|nil y
function cObjectLocate(Handle)
end

--- Gets the amount of the specificed Object Type.
---
--- ```
--- local mobNumber = cObjectCount("Rou", ObjectType.Mob)
--- ```
---@param MapINX string
---@param ObjectType integer
---@return integer Amount
function cObjectCount(MapINX, ObjectType)
end

--- Generates a random integer between two values.
---
--- ```
--- local random = cRandomInt(1, 10)
--- ```
---@param LowerLimit integer
---@param UpperLimit integer
---@return integer RandomNumber
function cRandomInt(LowerLimit, UpperLimit)
end

--- Gets current time in seconds.
---
--- ```
--- local time = cCurSec()
--- ```
---@return integer CurSec
function cCurSec()
end

--- Gets current time in seconds.
---
--- ```
--- local time = cCurrentSecond()
--- ```
---@return integer CurSec
function cCurrentSecond()
end

--- Checks if Object is dead.
---
--- ```
--- cIsObjectDead(player)
--- ```
---@param Handle integer
---@return boolean IsDead
function cIsObjectDead(Handle)
end

--- Copies the script from the object associated with handle to
--- the object associated with HandleTarget.
---
--- ```
--- cAIScriptSet(mobHandle, mobHandle2)
--- ```
---@param HandleTarget integer
---@param Handle integer
---@return boolean|nil Success
function cAIScriptSet(HandleTarget, Handle)
end

--- Resets the script of the object associated with the handle.
---
--- ```
--- cAIScriptSet(mobHandle)
--- ```
---@param Handle integer
---@return boolean|nil Success
function cAIScriptSet(Handle)
end

--- Sets script on an object associated with the handle.
---
--- ```
--- cSetAIScript("ID/AdlF/AdlF", mobHandle)
--- ```
---@param LuaScriptPath string
---@param MobHandle integer|nil
---@return boolean|nil Success
function cSetAIScript(LuaScriptPath, MobHandle)
end

--- Vanishes NPC associated with the Handle.
---
--- ```
--- cNPCVanish(npcHandle)
--- ```
---@param NpcHandle integer
function cNPCVanish(NpcHandle)
end

--- Sends notices on map.
---
--- ```
--- local lot = cNoticeString("Rou", "Map wide notice")
--- ```
---@param MapINX string
---@param Notice string
function cNoticeString(MapINX, Notice)
end

--- Sends notices on map from ScriptMsg.shn\
--- Refer to printf format strings on how strings
--- are formatted and how to pass extra paramters
---
--- ```
--- -- ScriptMsg - 1 - SM_Msg - "Test: %s"
--- -- Prints "Test: Success"
--- cScriptMessage("Rou", 1, "Success")
--- ```
---@param MapINX string
---@param MsgINX string
---@param ... string
function cScriptMessage(MapINX, MsgINX, ...)
end

--- Sends a notice to a player from ScriptMsg.SHN\
--- Refer to printf format strings on how strings
--- are formatted and how to pass extra paramters
---
--- ```
--- -- ScriptMsg - 1 - SM_Msg - "Test: %s"
--- -- Prints "Test: Success"
--- cScriptMessage_Obj(playerHandle, 1, "Success")
--- ```
---@param Player integer
---@param MsgINX string
---@param ... string
function cScriptMessage_Obj(Player, MsgINX, ...)
end

--- Destroys the specified amount of an item in the
--- players inventory.
---
--- ```
--- cInvenItemDestroy(playerHandle, 1, 1)
--- ```
---@param Player integer
---@param ItemINX string
---@param Amount integer
---@return boolean|nil Success
function cInvenItemDestroy(Player, ItemINX, Amount)
end

--- Returns the amount of an item in a specified player's inventory.
---
--- ```
--- local lot, isBlocked = cGetItemLot(playerHandle, 1)
--- ```
---@param Player integer
---@param ItemINX string
---@return integer|nil ItemLot
---@return boolean|nil IsSlotBlocked
function cGetItemLot(Player, ItemINX)
end

--- Gets the Map Index of a player.
---
--- ```
--- local mapName = cGetCurMapIndex(playerHandle)
--- ```
---@param Handle integer
---@return string MapINX
function cGetCurMapIndex(Handle)
end

--- Returns the name of a player.
---
--- ```
--- local playerName = cGetPlayerName(playerHandle)
--- ```
---@param Player integer
---@return string PlayerName
function cGetPlayerName(Player)
end

--- Set callback function for special events on NPCs.
--- - Possible Events and callback arguments:
---     - "Entrance" -> func( Handle, MapIndex )
---     - "NPCClick" -> func( NPCHandle, PlyHandle, PlyCharNo )
---     - "NPCMenu" -> func( NPCHandle, PlyHandle, PlyCharNo, Value )
---     - "MobDamaged" -> func( MapIndex, AttackerHandle, MaxHP, CurHP, DefenderHandle )
---     - "ObjectDied" -> func( MapIndex, KillerHandle, DeadHandle )
---     - "NPCAction" -> func( MapIndex, NPCHandle, PlyHandle, PlyCharNo )
---     - "MobAttack" -> func( MapIndex, AtkHandle )
---     - "RankingValue" -> func( MapIndex, PlyHandle, DamageDone, DamageTaken,Healing )
---
--- ```
--- function OnNPCClicked(NPCHandle, PlyHandle, PlyCharNo)
---     -- Do something
--- end
---
--- cAIScriptFunc(Mob, "NPCClick", "OnNPCClicked" )
--- ```
---@param Handle integer|nil
---@param ZoneEvent string
---@param CallBack string
---@return boolean|nil Success
function cAIScriptFunc(Handle, ZoneEvent, CallBack)
end

--- Opens the dialogue menu of an NPC to the selected player.
---
--- ```
--- cNPCMenuOpen(npcHandle, PlayerHandle)
--- ```
---@param NpcHandle integer
---@param Player integer
---@return boolean|nil Success
function cNPCMenuOpen(NpcHandle, Player)
end

--- Kills all of a specified MobINX in a Map.
---
--- ```
--- cVanishAll("Rou", "Slime")
--- ```
---@param Map string
---@param MobINX string
---@return integer|nil NumberOfVanishedMobs
function cVanishAll(Map, MobINX)
end

--- Returns the current HP and Max HP of an object.
---
--- ```
--- local CurHP, MaxHP = cObjectHP(mob)
--- ```
---@param Handle integer
---@return integer CurHP
---@return integer MaxHP
function cObjectHP(Handle)
end

--- Activates Regen for an Instance.
---
--- ```
--- cGroupRegenInstance("AdlF", "AdlF_01_SP01")
--- ```
---@param MapINX string
---@param RegenINX string
---@return boolean|nil Success
function cGroupRegenInstance(MapINX, RegenINX)
end

--- Sets an Abstate on a Handle.
---
--- ```
--- cSetAbstate(player, "StaImmortal", 1, 2000000000)
--- ```
---@param Handle integer
---@param AbstateINX string
---@param AbstateSTR integer
---@param KeepTime integer
---@return boolean|nil Success
function cSetAbstate(Handle, AbstateINX, AbstateSTR, KeepTime)
end

--- Teleports player to given location.
---
--- ```
--- cLinkTo(player, "Rou", 5000, 5000)
--- ```
---@param Player integer
---@param MapINX string
---@param X integer
---@param Y integer
---@return boolean|nil Success
function cLinkTo(Player, MapINX, X, Y)
end

--- Returns the players level.
---
--- ```
--- local playerLevel = cGetLevel(player)
--- ```
---@param Player integer
---@return integer Level
---@return integer|nil PlayerLevel
function cGetLevel(Player)
end

--- Sets the script for the map.
---
--- ```
--- cSetFieldScript(MapIndex, "ID/BH_Karen/BH_Karen_P")
--- ```
---@param Field integer
---@param Script string
---@return boolean|nil Success
function cSetFieldScript(Field, Script)
end

--- Kills mob instantly. Kill gets creditet to player.
---
--- ```
--- cKillObject(mobHandle, playerHandle)
--- ```
---@param Mob integer
---@param Player integer
function cKillObject(Mob, Player)
end

--- Kills mob instantly.
---
--- ```
--- cKillObject(mobHandle)
--- ```
---@param Mob integer
function cKillObject(Mob)
end

--- Show damage ranking.
---
--- ```
--- cIndunRankResult(Field, 100, PlyList)
--- ```
---@param MapInx string
---@param Time integer
---@param PlyList PlayerList
function cIndunRankResult(MapInx, Time, PlyList)
end

--- Start timer for all player on map that ticks down.\
--- To make the timer disappear call again with Time = 0.
---
--- ```
--- cTimer(MapIndex, 600)
--- ```
---@param Field integer
---@param Time integer
function cTimer(Field, Time)
end

--- Start timer for a specific player that ticks down.\
--- To make the timer disappear call again with Time = 0.
---
--- ```
--- cTimer_Obj(Handle, 600)
--- ```
---@param Player integer
---@param Delay integer
function cTimer_Obj(Player, Delay)
end

--- Ends timer for a specific player.\
---
---
--- ```
--- cTimer(MapIndex, 600)
--- ```
---@param Player integer
---@param Delay integer
function cTimerEnd(Player, Delay)
end

--- Get ObjectType of the given handle.
---
--- ```
--- if cObjectType(Handle) == ObjectType.Player then
--- end
--- ```
---@param Handle integer
---@return ObjectType|nil objectType
function cObjectType(Handle)
end

--- Teleports object to a specific coordinate on the same map.\
--- Be careful when using on players.\
--- Other objects only get updated when they move.
---
--- ```
--- cCastTeleport(pPlayer, "SpecificCoord", 5000, 5000)
--- ```
---@param Handle integer
---@param Type string
---@param X integer
---@param Y integer
---@return boolean|nil Success
function cCastTeleport(Handle, Type, X, Y)
end

--- Teleports object to a random place on the map.\
--- Be careful when using on players.\
--- Other objects only get updated when they move.
---
--- ```
--- cCastTeleport(pPlayer, "AnyWhere")
--- ```
---@param Handle integer
---@param Type string
---@return boolean|nil Success
function cCastTeleport(Handle, Type)
end

--- Reset abstate on object.
---
--- ```
--- cResetAbstate(MobHandle, "StaImmortal")
--- ```
---@param Handle integer
---@param Abstate string
---@return boolean|nil Success
function cResetAbstate(Handle, Abstate)
end

--- Get a list of all objects in a radius around a coord.
---
--- ```
--- local players = { cGetNearObjListByCoord(Var["MapIndex"], 5000, 5000, 1000, ObjectType.Player, "so_ObjectType", 5 ) }
--- ```
---@param MapInx integer
---@param X integer
---@param Y integer
---@param Range integer
---@param ObjectType integer
---@param SearchType string
---@param MaxObjects integer
---@return boolean|nil Success
function cGetNearObjListByCoord(MapInx, X, Y, Range, ObjectType, SearchType, MaxObjects)
end

--- Set Abstate in range for all objects of a specific type.
---
--- ```
--- cSetAbstate_Range(MobHandle, 1000, ObjectType.Mob, "StaImmortal", 1, 20000)
--- ```
---@param Handle integer
---@param Range string
---@param ObjectType integer
---@param Index integer
---@param Strength integer
---@param KeepTime integer
---@return boolean|nil Success
function cSetAbstate_Range(Handle, Range, ObjectType, Index, Strength, KeepTime)
end

--- Set camera for all objects on map.
---
--- ```
--- cCameraMove(Var["MapIndex"], 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
--- ```
---@param MapInx integer
---@param X integer
---@param Y integer
---@param AngleX integer
---@param AngleY integer
---@param Dist integer
---@param MoveType CameraState
function cCameraMove(MapInx, X, Y, AngleX, AngleY, Dist, MoveType)
end

--- Get a list of all players on a map.
---
--- ```
--- local playerlist = { cGetPlayerList(Var["MapIndex"]) }
--- ```
---@param MapHandle string
---@return integer playerHandleArray
function cGetPlayerList(MapHandle)
end

--- Open or close door. Valid values are "close" or "open".
---
--- ```
--- cDoorAction(Var["Door1"], "Door1", "close")
--- ```
---@param DoorHandle integer
---@param SbiBlockName string
---@param Action string
---@return boolean|nil Success
function cDoorAction(DoorHandle, SbiBlockName, Action)
end

--- Build a door object.
---
--- ```
--- local doorHandle = cDoorBuild(Var["MapIndex"], "Barrier02", 5311, 3321, 90, 1000)
--- ```
---@param Field integer
---@param DoorInx string
---@param X integer
---@param Y integer
---@param D integer
---@param Size integer
---@return integer|nil DoorHandle
function cDoorBuild(Field, DoorInx, X, Y, D, Size)
end

--- Set callback function for special events on Map.
---     - "MapLogin" -> func( MapIndex, PlyHandle )
---     - "MapLogout" -> func( MapIndex, PlyHandle )
---     - "ItemUse" -> func( MapIndex, PlyHandle, ItemID )
---     - "ObjectDied" -> func( MapIndex, KillerHandle, KilledHandle )
---     - "ServantSummon" -> func( MapIndex, ServantHandle, ServantIndex, MasterHandle )
---     - "RankingValue" -> func( MapIndex, NPCHandle, PlyHandle, PlyCharNo )
---     - "Tutorial" -> func( MapIndex, PlayerHandle, nType, nStep )
---
--- ```
--- cFieldScriptFunc(Var["MapIndex"], "RankingValue", "Ranking")
--- ```
---@param Map string
---@param Type string
---@param Function string
---@return boolean|nil Success
function cFieldScriptFunc(Map, Type, Function)
end

----------------------------------------------
-------------------- Hook --------------------
----------------------------------------------
----------------- Structures -----------------
----------------------------------------------

--- **Hook only**\
--- Enum for different stat types.\
--- Add this to common.lua
---@class StatsEnum
---@field Str integer
---@field Con integer
---@field Dex integer
---@field Int integer
---@field End integer
StatsEnum = {}
StatsEnum.Str = 1
StatsEnum.Con = 2
StatsEnum.Dex = 3
StatsEnum.Int = 4
StatsEnum.End = 5

--- Classes Enum. Use this to compare against the
--- return value of functions returning this type.\
--- Add this to common.lua
---@class Classes
---@field None integer
---@field Fighter integer
---@field CleverFighter integer
---@field Warrior integer
---@field Gladiator integer
---@field Knight integer
---@field Cleric integer
---@field HighCleric integer
---@field Paladin integer
---@field HolyKnight integer
---@field Guardian integer
---@field Archer integer
---@field HawkArcher integer
---@field Scout integer
---@field SharpShooter integer
---@field Ranger integer
---@field Mage integer
---@field WizMage integer
---@field Enchanter integer
---@field Warlock integer
---@field Wizard integer
---@field Joker integer
---@field Chaser integer
---@field Cruel integer
---@field Closer integer
---@field Assassin integer
---@field Sentinel integer
---@field Savior integer
Classes = {}
Classes.None = 0
Classes.Fighter = 1
Classes.CleverFighter = 2
Classes.Warrior = 3
Classes.Gladiator = 4
Classes.Knight = 5
Classes.Cleric = 6
Classes.HighCleric = 7
Classes.Paladin = 8
Classes.HolyKnight = 9
Classes.Guardian = 10
Classes.Archer = 11
Classes.HawkArcher = 12
Classes.Scout = 13
Classes.SharpShooter = 14
Classes.Ranger = 15
Classes.Mage = 16
Classes.WizMage = 17
Classes.Enchanter = 18
Classes.Warlock = 19
Classes.Wizard = 20
Classes.Joker = 21
Classes.Chaser = 22
Classes.Cruel = 23
Classes.Closer = 24
Classes.Assassin = 25
Classes.Sentinel = 26
Classes.Savior = 27

----------------------------------------------
-------------------- Hook --------------------
----------------------------------------------
------------------ HFunctions -----------------
----------------------------------------------

--- **Hook only**\
--- Gives the exact server tick as return value.
---
--- ```
--- local time = cGetExactTime()
--- ```
---@return integer Time
function cGetExactTime(Player, Amount)
end

--- **Hook only**\
--- Gives a player a specific amount of money (in bronze).
---
--- ```
--- cGainMoney(player, 1000000)
--- ```
---@param Player integer
---@param Amount integer
---@return boolean|nil Success
function cGainMoney(Player, Amount)
end

--- **Hook only**\
--- Gives a player a specific amount of money (in bronze).
---
--- ```
--- cAddMoney(player, 1000000)
--- ```
---@param Player integer
---@param Amount integer
---@return boolean|nil Success
function cAddMoney(Player, Amount)
end

--- **Hook only**\
--- Returns the exact class of a player.
---
--- ```
--- local class = cGetExactClass(player)
--- ```
---@param Player integer
---@return Classes|nil ClassID
function cGetExactClass(Player)
end

--- **Hook only**\
--- Returns the exact class of a player.
---
--- ```
--- local class = cGetClass(player)
--- ```
---@param Player integer
---@return Classes|nil ClassID
function cGetClass(Player)
end

--- **Hook only**\
--- Returns SP of object.
---
--- ```
--- local curSp, maxSp = cObjectSP(player)
--- ```
---@param Player integer
---@return integer|nil CurSP
---@return integer|nil MaxSP
function cObjectSP(Player)
end

--- **Hook only**\
--- Gives the player fame.
---
--- ```
--- cGainFame(player, 5000)
--- ```
---@param Player integer
---@param Fame integer
---@return boolean|nil Success
function cGainFame(Player, Fame)
end

--- **Hook only**\
--- Gives the player fame.
---
--- ```
--- cAddFame(player, 5000)
--- ```
---@param Player integer
---@param Fame integer
---@return boolean|nil Success
function cAddFame(Player, Fame)
end

--- **Hook only**\
--- Sends a map wide shout. Mob only.
---
--- ```
--- cSendShout(mobHandle, player, "Test", "Test Message")
--- ```
---@param MobHandle integer
---@param ReceiverHandle integer
---@param CharName string
---@param Message string
---@return boolean|nil Success
function cSendShout(MobHandle, ReceiverHandle, CharName, Message)
end

--- **Hook only**\
--- Sends a map wide shout. Mob only.
---
--- ```
--- cShout(mobHandle, player, "Test", "Test Message")
--- ```
---@param MobHandle integer
---@param ReceiverHandle integer
---@param CharName string
---@param Message string
---@return boolean|nil Success
function cShout(MobHandle, ReceiverHandle, CharName, Message)
end

--- **Hook only**\
--- Sends a roar with the given name and text.
---
--- ```
--- local name = cGetPlayerName(player)
--- cSendRoar(name, "A random roar appeared")
--- ```
---@param Name string
---@param Text string
---@return boolean|nil Success
function cSendRoar(Name, Text)
end

--- **Hook only**\
--- Sends a roar with the given name and text.
---
--- ```
--- local name = cGetPlayerName(player)
--- cRoar(name, "A random roar appeared")
--- ```
---@param Name string
---@param Text string
---@return boolean|nil Success
function cRoar(Name, Text)
end

--- **Hook only**\
--- Posts a message to discord.
---
--- ```
--- cPostDiscord(874596899850711120, "Test Message")
--- ```
---@param ChannelID integer
---@param Message integer
function cPostDiscord(ChannelID, Message)
end

--- **Hook only**\
--- Disconnects a player.
---
--- ```
--- cKickout(player)
--- ```
---@param Player integer
---@return boolean|nil Success
function cKickout(Player)
end

--- **Hook only**\
--- Returns the item power of the player.
---
--- ```
--- local itemPower = cGetItemPower(player)
--- ```
---@param Player integer
---@return integer|nil ItemPower
function cGetItemPower(Player)
end

--- **Hook only**\
--- Checks if a user has the given sub abstate.
---
--- ```
--- local itemPower = cHasSubAbstate(player, 5)
--- ```
---@param Player integer
---@param SubAbstateIndex integer
---@return boolean|nil HasSubAbstate
function cHasSubAbstate(Player, SubAbstateIndex)
end

--- **Hook only**\
--- Returns all party members on the same map. First returned value indicates group status.
---
--- ```
--- local memberList = cPartyMembers(player)
---
--- if memberList ~= nil then
---    if memberList[1] == 0 then
---          for k = 2, #memberList do
---              -- memberList[k]
---          end
---    elseif memberList[1] == 1 then
---         -- Raid
---    elseif memberList[1] == 2 then
---         -- Solo
---    end
--- else
---    -- Error -> Handle invalid, not a player, etc.
--- end
--- ```
---@param Player integer
---@return integer|nil Players
function cPartyMembers(Player)
end

--- **Hook only**\
--- Returns all party members on the same zone. First returned value indicates group status.
---
--- ```
--- local memberList = cPartyMembersZone(player)
---
--- if memberList ~= nil then
---    if memberList[1] == 0 then
---          for k = 2, #memberList do
---              -- memberList[k]
---          end
---    elseif memberList[1] == 1 then
---         -- Raid
---    elseif memberList[1] == 2 then
---         -- Solo
---    else
---        -- Error - Handle invalid, not a player, etc.
---    end
--- end
--- ```
---@param Player integer
---@return integer|nil Players
function cPartyMembersZone(Player)
end

--- **Hook only**\
--- Returns the total value of the stat for the player.
---
--- ```
--- local stats = cPlayerStatTotal(player, Stats.Str)
--- ```
---@param Player integer
---@param StatIndex StatsEnum
---@return integer|nil TotalSkilled
function cPlayerStatTotal(Player, StatIndex)
end

--- **Hook only**\
--- Returns the skilled value of the stat.
---
--- ```
--- local stats = cPlayerStatSkilled(player, Stats.Str)
--- ```
---@param Player integer
---@param StatIndex StatsEnum
---@return integer TotalSkilled
function cPlayerStatSkilled(Player, StatIndex)
end

--- **Hook only**\
--- Mob safe variant to get the targeted object.
---
--- ```
--- local target = cGetTarget(player)
--- ```
---@param MobHandle integer
---@return integer|nil PlayerHandle
function cGetTarget(MobHandle)
end

--- **Hook only**\
--- Get total exp of players. Gets converted to 32 bit. Do not use.
---
--- ```
--- local exp = cGetExp(player)
--- ```
---@deprecated
---@param Player integer
---@return integer|nil Exp
function cGetExp(Player)
end

--- **Hook only**\
--- Revives the player.
---
--- ```
--- cRevive(player)
--- ```
---@param Player integer
---@return boolean|nil Success
function cRevive(Player)
end

--- **Hook only**\
--- Teleports the user to the default position of the map he is on.
---
--- ```
--- cLinkTo(player)
--- ```
---@param Player integer
function cLinkTo(Player)
end

--- **Hook only**\
--- Teleports the user to the default position of the map.
---
--- ```
--- cLinkTo(player, "Rou")
--- ```
---@param Player integer
---@param MapInx string
function cLinkTo(Player, MapInx)
end

--- **Hook only**\
--- Finish key after completing instance
---
--- ```
--- cFinishKey("Rou", true)
--- ```
---@param MapInx string
---@param InTime boolean
function cFinishKey(MapInx, InTime)
end

--- **Hook only**\
--- Start key when starting instance
---
--- ```
--- cStartKey("Rou")
--- ```
---@param Player integer
function cStartKey(Player)
end

----------------------------------------------
---------------- Undocumented ----------------
----------------------------------------------

--- **Undocumented**
function cPet_IsMasterCalling()
end

--- **Undocumented**
function cPet_GetMind()
end

--- **Undocumented**
function cPet_GetStress()
end

--- **Undocumented**
function cPet_GetWalkSpeed()
end

--- **Undocumented**
function cPet_GetRunSpeed()
end

--- **Undocumented**
function cPet_Unsummon()
end

--- **Undocumented**
function cPet_GetActionRecord()
end

--- **Undocumented**
function cPet_ChangeMind()
end

--- **Undocumented**
function cPet_SaveTendency()
end
