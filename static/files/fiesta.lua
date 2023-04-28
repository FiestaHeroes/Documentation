---@diagnostic disable: lowercase-global

----------------------------------------------
---------------- Common.lua ------------------
----------------------------------------------

--- Return type for AIScripts.
---@class ReturnAI
--- Returning this value will stop the zone from
--- running any custom logic for the mob. It will
--- be fully controlled by lua.
---@field END number
--- Returning this value will make the zone run
--- normal mob logic for this mob.
---@field CPP number
ReturnAI = {}
ReturnAI.END = 1
ReturnAI.CPP = 2

--- Types for objects.
---@class ObjectType
---@field Invalid number
---@field Flag number
---@field DropItem number
---@field Player number
---@field MiniHouse number
---@field NPC number
---@field Mob number
---@field MagicField number
---@field Door number
---@field Bandit number
---@field Effect number
---@field Servant number
---@field Mover number
---@field Pet number
--- Max value for this field.\
--- Mostly used in conditional expressions to test
--- if a value is actually valid.
---@field Max number
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

--- Types for object modes.
---@class ObjectMode
---@field Linking string
---@field Normal string
---@field Fight string
---@field Corpse string
---@field House string
---@field Booth string
---@field Riding string
---@field LogoutWait string
ObjectMode = {}
ObjectMode.Linking = 'linking'
ObjectMode.Normal = 'normal'
ObjectMode.Fight = 'fight'
ObjectMode.Corpse = 'corpse'
ObjectMode.House = 'house'
ObjectMode.Booth = 'booth'
ObjectMode.Riding = 'riding'
ObjectMode.LogoutWait = 'logoutwait'

--- BaseClass Enum. Use this to compare against the
--- return value of functions returning this type.
---@class BasicClass
---@field None number
---@field Fighter number
---@field Cleric number
---@field Archer number
---@field Mage number
---@field Joker number
--- Needs to be manually added to common.lua
---@field Sentinel number
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
---@field EMT_WIN number
---@field EMT_LOSE number
---@field EMT_DRAW number
---@field EMT_START number
---@field EMT_COUNT_8_SEC number
---@field EMT_SUCCESS number
---@field EMT_FAIL number
---@field EMT_START_OLYMPIC number
---@field EMT_GOAL_OLYMPIC number
---@field EMT_SOCCER_WIN number
---@field EMT_SOCCER_LOSE number
---@field EMT_SOCCER_DRAW number
---@field EMT_SOCCER_KICK_OFF number
---@field EMT_SOCCER_GOAL number
---@field EMT_WATER_START number
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
---@field NONE number
---@field MOVING number
CAMERA_STATE = {}
CAMERA_STATE.NONE = 0
CAMERA_STATE.MOVING = 1

---@class KQ_TEAM
---@field RED number
---@field BLUE number
--- Max value for this field.\
--- Mostly used in conditional  expressions to test
--- if a value is actually valid.
---@field MAX number
KQ_TEAM = {}
KQ_TEAM.RED = 0
KQ_TEAM.BLUE = 1
KQ_TEAM.MAX = 2

---@class PlayerDamage
---@field Handle number
---@field DamageDealt number
---@field DamageTaken number
---@field HealingDone number
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
---@param Field number MapID
function InstanceDungeonClear(Field)
    cExecCheck "InstanceDungeonClear"

    InstanceField[Field] = nil
end
----------------------------------------------
------------------- Fiesta -------------------
----------------------------------------------
----------------- Functions ------------------
----------------------------------------------

--- Returns the remaining time of an abstate on the given handle.<br/>
--- Returns nil if the abstate is not found on the target.
---
--- ```
--- local restTime = cAbstateRestTime(player, "StaImmortal")
--- ```
---@param Handle number
---@param AbstateInx string
---@return number|nil RemainingTime
function cAbstateRestTime(Handle, AbstateInx)
end

--- Lets a handle do an action based on the given event code.
--- Event codes can be found in the .kfm of each object.
---
--- ```
--- cActByEventCode(player, 101000)
--- ```
---@param Handle number
---@param EventCode string
function cActByEventCode(Handle, EventCode)
end

--- Adds a character title to the given character.
---
--- ```
--- cAddCharacterTitle(player, 1, 0)
--- ```
---@param CharNumber number
---@param TitleType number
---@param ElementNumber number
function cAddCharacterTitle(CharNumber, TitleType, ElementNumber)
end

--- Returns a table containing all objects that are aggroed on the given handle.
---
--- ```
--- local aggroList = { cAggroList(player, 100) }
--- ```
---@param Handle number
---@param Range number
---@return number[] AggroList
function cAggroList(Handle, Range)
end

--- Returns the size of the aggro list of the given handle.
---
--- ```
--- local aggroListSize = cAggroListSize(player)
--- ```
---@param Handle number
---@return number AggroListSize
function cAggroListSize(Handle)
end

--- Resets the aggro of the given handle on the given target.
---
--- ```
--- cAggroReset(player, target)
--- ```
---@param Handle number
---@param TargetHandle number
function cAggroReset(Handle, TargetHandle)
end

--- Sets the aggro of the given handle on the given target.
--- The aggro rate is the strength of the aggro.
---
--- ```
--- cAggroSet(player, target, 100)
--- ```
---@param Handle number
---@param TargetHandle number
---@param AggroRate number
function cAggroSet(Handle, TargetHandle, AggroRate)
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
---@param Handle number|nil
---@param ZoneEvent string
---@param CallBack string
---@return boolean|nil Success
function cAIScriptFunc(Handle, ZoneEvent, CallBack)
end

--- Copies the script from the object associated with handle to
--- the object associated with HandleTarget.
---
--- ```
--- cAIScriptSet(mobHandle, mobHandle2)
--- ```
---@param HandleTarget number
---@param Handle number
---@return boolean|nil Success
function cAIScriptSet(HandleTarget, Handle)
end

function cAnimate(Handle, AnimationName)
end

function cAnimateForcedly(Handle, AnimationName)
end

--- Writes a message to the server log.
---
--- ```
--- cAssertLog("Hello World!")
--- ```
---@param Message string
function cAssertLog(Message)
end

--- Set camera for all objects on map.
---
--- ```
--- cCameraMove(Var["MapIndex"], 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
--- ```
---@param MapInx number
---@param X number
---@param Y number
---@param AngleX number
---@param AngleY number
---@param Distance number
---@param MoveType CAMERA_STATE
function cCameraMove(MapInx, X, Y, AngleX, AngleY, Distance, MoveType)
end

--- Set camera for a specific object.
---
--- ```
--- cCameraMove_Obj(player, 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
--- ```
---@param Handle number
---@param X number
---@param Y number
---@param AngleX number
---@param AngleY number
---@param Distance number
---@param MoveType CAMERA_STATE
function cCameraMove_Obj(Handle, X, Y, AngleX, AngleY, Distance, MoveType)
end

--- Renders a casting bar when a player interacts with an NPC.
--- The casting bar is rendered for the duration of the CastTime.
--- The AnimationName is the name of the animation that is played while the casting bar is rendered.
---
--- ```
--- cCastingBar(player, npc, 4000, "ActionProduct")
--- ```
---@param PlayerHandle number
---@param NPCHandle number
---@param CastTime number
---@param AnimationName string
function cCastingBar(PlayerHandle, NPCHandle, CastTime, AnimationName)
end

function cCharTitleAddValue(PlayerHandle, TitleType, ElementNumber)
end

--- Opens the class change window for the given player.
---
--- ```
--- cClassChangeOpen(player)
--- ```
---@param PlayerHandle number
function cClassChangeOpen(PlayerHandle)
end

--- Gets current time in seconds.
---
--- ```
--- local time = cCurSec()
--- ```
---@return number CurSec
function cCurSec()
end

--- Gets current time in seconds.
---
--- ```
--- local time = cCurrentSecond()
--- ```
---@return number CurSec
function cCurrentSecond()
end

--- Teleports object on the same map.\
--- If the _Type_ argument is "SpecificCoord" the _X_ and _Y_ parameters are used as coordinates.\
--- If the _Type_ argument is "AnyWhere" the _X_ and _Y_ parameters are ignored.\
--- Be careful when using on players.\
--- Other objects only get updated when they move.
---
--- ```
--- cCastTeleport(pPlayer, "SpecificCoord", 5000, 5000)
--- ```
---@param Handle number
---@param Type string
---@param X number
---@param Y number
---@return boolean|nil Success
function cCastTeleport(Handle, Type, X, Y)
end

--- Damages the target object for the given amount of damage.\
--- The source of the damage is the object associated with the _SourceHandle_ parameter.\
--- If the _SourceHandle_ parameter is not given, the damage is considered to be from the environment.\
---
--- ```
--- cDamage(monster, 1000, player)
--- ```
---@param TargetHandle number
---@param Damage number
---@param SourceHandle number
function cDamaged(TargetHandle, Damage, SourceHandle)
end

--- Writes a debug message to the server log.
---
--- ```
--- cDebugLog("Hello World!")
--- ```
---@param Message string
function cDebugLog(Message)
end

--- Removes the directional arrow above the object associated with the _Handle_ parameter.
---
--- ```
--- cDelDirectionalArrow(player)
--- ```
---@param Handle number
function cDelDirectionalArrow(Handle)
end

--- Depolymorphs the object associated with the _Handle_ parameter.\
---
--- ```
--- cDePolymorph(player)
--- ```
---@param Handle number
function cDePolymorph(Handle)
end

--- Depolymorphs all objects in the given area.\
--- The area is defined in the _.aid_ file of the map.\
---
--- ```
--- cDePolymorph_Area(Var["MapIndex"], "AreaName")
--- ```
---@param MapIndex number
---@param Area string
function cDePolymorph_Area(MapIndex, Area)
end

--- Renders an arrow above the object associated with the _Handle_ parameter pointing to the given coordinates.\
---
--- ```
--- cDirectionalArrow(player, 5000, 5000)
--- ```
---@param Handle number
---@param X number
---@param Y number
function cDirectionalArrow(Handle, X, Y)
end

--- Returns the distance between the object associated with the _Handle_ parameter and the object associated with the _TargetHandle_ parameter.\
--- The distance is squared. Use the `math.sqrt` function to get the actual distance.\
---
--- ```
--- local distance = cDistanceSquar(player, monster)
--- ```
---@param Handle number
---@param TargetHandle number
---@return number|nil Distance
function cDistanceSquar(Handle, TargetHandle)
end

--- Returns the distance between two coordinates.\
--- The distance is squared. Use the `math.sqrt` function to get the actual distance.\
---
--- ```
--- local distance = cDistanceSquar(5000, 5000, 6000, 6000)
--- ```
---@param SourceX number
---@param SourceY number
---@param TargetX number
---@param TargetY number
---@return number|nil Distance
function cDistanceSquar(SourceX, SourceY, TargetX, TargetY)
end

--- Open or close door. Valid values are "close" or "open".
---
--- ```
--- cDoorAction(Var["Door1"], "Door1", "close")
--- ```
---@param DoorHandle number
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
---@param Field number
---@param DoorInx string
---@param X number
---@param Y number
---@param D number
---@param Size number
---@return number|nil DoorHandle
function cDoorBuild(Field, DoorInx, X, Y, D, Size)
end

function cDropFilm(MapIndex, MainScript)
end

--- Drops an item on the ground.\
--- _KillerHandle_ is the object that killed the mob. If the mob was killed by the environment, the _KillerHandle_ parameter should be replaced with `-1`.\
--- _Rate_ is the drop rate and is calculated in millions. For example, a _Rate_ of `1000000` is a 100% drop rate.\
---
--- ```
--- cDropItem(Var["ItemIndex"], Var["MonsterHandle"], player, 1, 1000000)
--- ```
---@param ItemIndex number
---@param Handle number
---@param KillerHandle number
---@param Lot number
---@param Rate number
---@return number|nil Success
function cDropItem(ItemIndex, Handle, KillerHandle, Lot, Rate)
end

--- Displays an animated message on the screen of the object associated with the _Handle_ parameter.\
---
--- ```
--- cEffectMsg(player, EFFECT_MSG_TYPE["EMT_SUCCESS"])
--- ```
---@param Handle number
---@param EffectMessageType EFFECT_MSG_TYPE
function cEffectMsg(Handle, EffectMessageType)
end

--- Displays an animated message on the screen of all objects in the map.\
---
--- ```
--- cEffectMsg_AllInMap(Var["MapIndex"], EFFECT_MSG_TYPE["EMT_SUCCESS"])
--- ```
---@param MapIndex number
---@param EffectMessageType EFFECT_MSG_TYPE
function cEffectMsg_AllInMap(MapIndex, EffectMessageType)
end

--- Renders an effect on the object associated with the _Handle_ parameter.\
--- Valid values for _EffectName_ are .nif files in the `ResEffect` folder.\
---
--- ```
--- cEffectRegen_Object(MapIndex, "BH_Helga_idle01", player, 1000, 1)
--- ```
---@param MapIndex number
---@param EffectName string
---@param Handle number
---@param Duration number
---@param Scale number
function cEffectRegen_Object(MapIndex, EffectName, Handle, Duration, Scale)
end

--- Renders an effect on the ground at the given coordinates.\
--- Valid values for _EffectName_ are .nif files in the `ResEffect` folder.\
--- Loop is unknown. It seems to be a boolean value.\
---
--- ```
--- cEffectRegen_XY(Var["MapIndex"], "BH_Helga_idle01", 5000, 5000, 0, 1000, 1, 1)
--- ```
---@param MapIndex number
---@param EffectName string
---@param X number
---@param Y number
---@param Direction number
---@param Duration number
---@param Scale number
---@param Loop number
function cEffectRegen_XY(MapIndex, EffectName, X, Y, Direction, Duration, Scale, Loop)
end

--- Plays an emote on the object associated with the _Handle_ parameter.\
--- Valid values for _ActionIndex_ can be found in `ActionViewInfo.shn`.\
---
--- ```
--- cEmotion(player, 1)
--- ```
---@param Handle number
---@param ActionIndex number
function cEmotion(Handle, ActionIndex)
end

--- Stop all cinematic texts from displaying.\
---
--- ```
--- cEndCinematicText(player)
--- ```
---@param Handle number
function cEndCinematicText(Handle)
end

--- Ends the current kingdom quest.\
---
--- ```
--- cEndOfKingdomQuest(Var["MapIndex"])
--- ```
---@param MapIndex number
function cEndOfKingdomQuest(MapIndex)
end

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

--- Returns a list of mobs in the map associated with the _MapIndex_ parameter.\
---
--- ```
--- local mobList = { cFindMobList(Var["MapIndex"]) }
--- ```
---@param MapIndex number
---@param Handle number
---@return number[]|nil MobList
function cFindNearestMobList(MapIndex, Handle)
end

--- Returns the handle of the nearest player to the object associated with the _Handle_ parameter.\
--- The _Classes_ parameter takes a list of class IDs.\
---
--- ```
--- local playerHandle = cFindNearPlayer(Var["MonsterHandle"], 1000, {1,6,11,16,21,26})
--- ```
---@param Handle number
---@param Radius number
---@param Classes number[]
---@return number|nil PlayerHandle
function cFindNearPlayer(Handle, Radius, Classes)
end

--- Lets the object associated with the _Handle_ parameter follow the object associated with the _FollowerHandle_ parameter.\
--- The _Gap_ parameter is the distance between the two objects.\
--- The _Distance_ parameter is the distance the object will follow the _FollowerHandle_ object.\
---
--- ```
--- cFollow(Var["MonsterHandle"], player, 100, 1000)
--- ```
---@param FollowerHandle number
---@param Handle number
---@param Gap number
---@param Distance number
function cFollow(FollowerHandle, Handle, Gap, Distance)
end

--- Gets the strength and remaining time of an Abstate on a Handle.
---
--- ```
--- local AbstateStrength, AbstateTime = cGetAbstate(player, "StaImmortal")
--- ```
---@param Handle number
---@param AbstateInx string
---@return number|nil AbstateStrength
---@return number|nil AbstateTime
function cGetAbstate(Handle, AbstateInx)
end

--- Returns the admin level of the object associated with the _Handle_ parameter.\
---
--- ```
--- local adminLevel = cGetAdminLevel(player)
--- ```
---@param Handle number
---@return number|nil AdminLevel
function cGetAdminLevel(Handle)
end

--- Checks if the object associated with the _Handle_ parameter is inside an area.\
--- The _AreaIndex_ parameter is the index of the area. It is defined in the _.aid_ file of the map.\
---
--- ```
--- local isInArea = cGetAreaObject(Var["MapIndex"], "AdlF_Zone02_3", player)
--- ```
---@param MapIndex number
---@param AreaIndex string
---@param Handle number
---@return boolean|nil IsInArea
function cGetAreaObject(MapIndex, AreaIndex, Handle)
end

--- Returns a list of objects in the area associated with the _AreaIndex_ parameter.\
--- The _ObjectType_ parameter is the type of object to return.\
---
--- ```
--- local objectList = { cGetAreaObjectList(Var["MapIndex"], "AdlF_Zone02_3", ObjectType["Player"]) }
--- ```
---@param MapIndex number
---@param AreaIndex string
---@param ObjectType ObjectType
---@return number[]|nil ObjectList
function cGetAreaObjectList(MapIndex, AreaIndex, ObjectType)
end

--- Returns a random coordinate within the radius of the object associated with the _Handle_ parameter.\
--- The _Direction_ parameter is the direction the object is facing.\
---
--- ```
--- local x, y = cGetAroundCoord(player, 0, 1000)
--- ```
---@param Handle number
---@param Direction number
---@param Radius number
---@return number|nil X
---@return number|nil Y
function cGetAroundCoord(Handle, Direction, Radius)
end

--- Returns the base class of the object associated with the _Handle_ parameter.\
---
--- ```
--- local baseClass = cGetBaseClass(player)
--- ```
---@param Handle number
---@return number|nil BaseClass
function cGetBaseClass(Handle)
end

--- Returns the character number of the object associated with the _Handle_ parameter.\
---
--- ```
--- local charNo = cGetCharNo(player)
--- ```
---@param Handle number
---@return number|nil CharNo
function cGetCharNo(Handle)
end

--- Returns a random coordinate within a radius in a circle.\
--- The _X_ and _Y_ parameters are the center of the circle.\
---
--- ```
--- local x, y = cGetCoord_Circle(0, 0, 1000)
--- ```
---@param X number
---@param Y number
---@param Radius number
---@return number|nil X
---@return number|nil Y
function cGetCoord_Circle(X, Y, Radius)
end

--- Gets the Map Index of a player.
---
--- ```
--- local mapName = cGetCurMapIndex(playerHandle)
--- ```
---@param Handle number
---@return string MapINX
function cGetCurMapIndex(Handle)
end

--- Returns the skill information, the object associated with the _Handle_ parameter is currently using.\
--- This includes the skill index and the end time of the skill.\
---
--- ```
--- local skillIndex, endTime = cGetCurrentSkillInfo(player)
--- ```
---@param Handle number
---@return string|nil SkillIndex
---@return number|nil EndTime
function cGetCurrentSkillInfo(Handle)
end

--- Returns the current facing direction of the object associated with the _Handle_ parameter.\
---
--- ```
--- local direction = cGetDirect(player)
--- ```
---@param Handle number
---@return number|nil Direction
function cGetDirect(Handle)
end

--- Returns the InxName related to the _ItemNumber_ parameter.\
---
--- ```
--- local itemInx = cGetItemInx(1)
--- ```
---@param ItemNumber number
---@return string|nil ItemInx
function cGetItemIndex(ItemNumber)
end

--- Returns the amount of an item in a specified player's inventory.
---
--- ```
--- local lot, isBlocked = cGetItemLot(playerHandle, 1)
--- ```
---@param Player number
---@param ItemINX string
---@return number|nil ItemLot
---@return boolean|nil IsSlotBlocked
function cGetItemLot(Player, ItemINX)
end

--- Returns the second limit of the Kingdom Quest associated with the _MapIndex_ parameter.\
---
--- ```
--- local secondLimit = cGetKQLimitSecond(Var["MapIndex"])
--- ```
---@param MapIndex number
---@return number|nil SecondLimit
function cGetKQLimitSecond(MapIndex)
end

--- Returns the team type of the object associated with the _Handle_ parameter.\
--- This function is used for the Football or Water Ball Kingdom Quests.\
---
--- ```
--- local teamType = cGetKQTeamType(player)
--- ```
---@param Handle number
---@return number|nil TeamType
function cGetKQTeamType(Handle)
end

--- Returns the players level.
---
--- ```
--- local playerLevel = cGetLevel(player)
--- ```
---@param Player number
---@return number Level
function cGetLevel(Player)
end

--- Returns the map name of the map associated with the _MapIndex_ parameter.\
---
--- ```
--- local mapName = cGetMapName(Var["MapIndex"])
--- ```
---@param MapIndex number
---@return string|nil MapName
function cGetMapName(MapIndex)
end

--- Returns the ID of the mob associated with the _Handle_ parameter.\
---
--- ```
--- local mobID = cGetMobID(mobHandle)
--- ```
---@param Handle number
---@return number|nil MobID
function cGetMobID(Handle)
end

--- Returns the move state, the move state time and the move state set time of the object associated with the _Handle_ parameter.\
---
--- ```
--- local moveState, moveStateTime, moveStateSetTime = cGetMoveState(player)
--- ```
---@param Handle number
---@return number|nil MoveState
---@return number|nil MoveStateTime
---@return number|nil MoveStateSetTime
function cGetMoveState(Handle)
end

--- Returns the handle of the closest mob to the given coordinates on the map associated with the _MapIndex_ parameter.\
--- The _MobIndex_ parameter is the mob index of the mob to search for.\
--- The _Method_ parameter is the method of searching for the mob. In this case, it is `so_mobile_GetIdxName`.\
---
--- ```
--- local mobHandle = cGetNearestMobByCoord(Var["MapIndex"], 5000, 5000, 1000, "Slime", "so_mobile_GetIdxName")
--- ```
---@param MapIndex number
---@param X number
---@param Y number
---@param Radius number
---@param MobIndex string
---@param Method string
---@return number|nil MobHandle
function cGetNearestObjByCoord(MapIndex, X, Y, Radius, MobIndex, Method)
end

--- Returns the handle of the closest object to the given coordinates on the map associated with the _MapIndex_ parameter.\
--- The _ObjectType_ parameter is the type of object to search for.\
--- The _Method_ parameter is the method of searching for the object. In this case, it is `so_ObjectType`.\
---
--- ```
--- local mobHandle = cGetNearestObjByCoord(Var["MapIndex"], 5000, 5000, 1000, ObjectType["Player"], "so_ObjectType")
--- ```
---@param MapIndex number
---@param X number
---@param Y number
---@param Radius number
---@param ObjectType ObjectType
---@param Method string
---@return number|nil Handle
function cGetNearestObjByCoord(MapIndex, X, Y, Radius, ObjectType, Method)
end

--- Get a list of all objects in a radius around a coord.
---
--- ```
--- local players = { cGetNearObjListByCoord(Var["MapIndex"], 5000, 5000, 1000, ObjectType.Player, "so_ObjectType", 5 ) }
--- ```
---@param MapInx number
---@param X number
---@param Y number
---@param Range number
---@param ObjectType number
---@param SearchType string
---@param MaxObjects number
---@return boolean|nil Success
function cGetNearObjListByCoord(MapInx, X, Y, Range, ObjectType, SearchType, MaxObjects)
end

--- Returns the handle of an npc associated with the _MapIndex_ and _MobIndex_ parameters.\
---
--- ```
--- local npcHandle = cGetNPCHandle(Var["MapIndex"], "RouItemMctPey")
--- ```
---@param MapIndex number
---@param MobIndex string
---@return number|nil NpcHandle
function cGetNPCHandle(MapIndex, MobIndex)
end

--- Returns the current mode of the object associated with the _Handle_ parameter.\
--- See [ObjectMode](#objectmode) for a list of possible modes.\
---
--- ```
--- local objectMode = cGetObjectMode(player)
--- ```
---@param Handle number
---@return ObjectMode|nil ObjectMode
function cGetObjectMode(Handle)
end

--- Get a list of all players on a map.
---
--- ```
--- local playerlist = { cGetPlayerList(Var["MapIndex"]) }
--- ```
---@param MapHandle string
---@return number playerHandleArray
function cGetPlayerList(MapHandle)
end

--- Returns the name of a player.
---
--- ```
--- local playerName = cGetPlayerName(playerHandle)
--- ```
---@param Player number
---@return string PlayerName
function cGetPlayerName(Player)
end

--- Returns the registNumber of the object associated with the _Handle_ parameter.\
---
--- ```
--- local registNumber = cGetRegistNumber(player)
--- ```
---@param Handle number
---@return number|nil RegistNumber
function cGetRegistNumber(Handle)
end

--- Returns the run speed of the object associated with the _Handle_ parameter.\
---
--- ```
--- local runSpeed = cGetRunSpeed(player)
--- ```
---@param Handle number
---@return number|nil RunSpeed
function cGetRunSpeed(Handle)
end

--- Returns the string of a script file.<br/>
--- The _ScriptFile_ parameter is the name of the script file.\
--- The _TitleKey_ parameter is the key that will be read.\
--- The _Values_ parameter can be as many STRING parameters as needed.\
---
--- ```
--- local string = cGetScriptString("MenuString", "LinkTitle", "Some string")
--- ```
---@param ScriptFile string
---@param TitleKey string
---@param Values string
---@return string|nil String
function cGetScriptString(ScriptFile, TitleKey, Values)
end

--- Returns a list of targets in a circle around the given _Handle_ specified through X Y and Radius.\
---
--- ```
--- local targetList = { cGetTargetList(Var["MobIndex"], 5000, 5000, 150) }
--- ```
---@param Handle number
---@param X number
---@param Y number
---@param Radius number
---@return table TargetList
function cGetTargetList(Handle, X, Y, Radius)
end

--- Returns the walk speed of the object associated with the _Handle_ parameter.\
---
--- ```
--- local walkSpeed = cGetWalkSpeed(player)
--- ```
---@param Handle number
---@return number|nil WalkSpeed
function cGetWalkSpeed(Handle)
end

--- Returns the handle of the object that killed the object associated with the _Handle_ parameter.\
---
--- ```
--- local killerHandle = cGetWhoKillMe(player)
--- ```
---@param Handle number
---@return number|nil KillerHandle
function cGetWhoKillMe(Handle)
end

--- Spawns a group from a mob regen.
---
--- ```
--- cGroupRegen("BH_Helga", "BH_HelgaBox")
--- ```
---@param MobRegen string
---@param RegenIndex string
---@return boolean|nil Success
function cGroupRegen(MobRegen, RegenIndex)
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

--- Activates Regen for an Instance at position X Y.
---
--- ```
--- cGroupRegenInstance_XY("AdlF", "AdlF_01_SP01", 5000, 5000)
--- ```
---@param MapIndex string
---@param RegenIndex string
---@param X number
---@param Y number
---@return boolean|nil Success
function cGroupRegenInstance_XY(MapIndex, RegenIndex, X, Y)
end

--- Heals the object associated with the _Handle_ parameter by the _Amount_ parameter.\
---
--- ```
--- cHeal(player, 100)
--- ```
---@param Handle number
---@param Amount number
function cHeal(Handle, Amount)
end

function cHideOtherPlayer(Handle)
end

--- Show damage ranking.
---
--- ```
--- cIndunRankResult(Field, 100, PlyList)
--- ```
---@param MapInx string
---@param Time number
---@param PlyList PlayerList
function cIndunRankResult(MapInx, Time, PlyList)
end

--- Destroys the specified amount of an item in the
--- players inventory.
---
--- ```
--- cInvenItemDestroy(playerHandle, 1, 1)
--- ```
---@param Player number
---@param ItemINX string
---@param Amount number
---@return boolean|nil Success
function cInvenItemDestroy(Player, ItemINX, Amount)
end

--- Returns wether the player has the specified item equipped.\
---
--- ```
--- local isEquipped = cIsEquipItem(player, "LeatherBoots")
--- ```
---@param Handle number
---@param ItemIndex string
---@return number|nil IsEquipped
function cIsEquipItem(Handle, ItemIndex)
end

--- Returns wether an object is in a specified area.\
--- The _AreaIndex_ parameter is the index of the area. It is defined in the _.aid_ file of the map.\
---
--- ```
--- local isInArea = cIsInArea(player, "Rou", "Area1")
--- ```
---@param Handle number
---@param MapIndex string
---@param AreaIndex string
---@return boolean|nil IsInArea
function cIsInArea(Handle, MapIndex, AreaIndex)
end

--- Returns wether and object is in a specified map.\
---
--- ```
--- local isInMap = cIsInMap(player, "Rou")
--- ```
---@param Handle number
---@param MapIndex string
---@return boolean|nil IsInMap
function cIsInMap(Handle, MapIndex)
end

--- Returns wether the object associated with the _Handle_ parameter has joined the KQ.\
---
--- ```
--- local isKQJoiner = cIsKQJoiner(player)
--- ```
---@param Handle number
---@return boolean|nil IsKQJoiner
function cIsKQJoiner(Handle)
end

--- Returns wether the object associated with the _Handle_ parameter is able to move or not.\
---
--- ```
--- local isMovable = cIsMovable(player)
--- ```
---@param Handle number
---@return boolean|nil IsMovable
function cIsMovable(Handle)
end

--- Returns wether the object associated with the _Handle_ parameter is already dead.\
---
--- ```
--- local isDead = cIsObjectAlreadyDead(player)
--- ```
---@param Handle number
---@return boolean|nil IsDead
function cIsObjectAlreadyDead(Handle)
end

--- Checks if Object is dead.
---
--- ```
--- cIsObjectDead(player)
--- ```
---@param Handle number
---@return boolean IsDead
function cIsObjectDead(Handle)
end

function cItemErase(MapIndex, ItemID)
end

--- Kills mob instantly. Kill gets creditet to player.
---
--- ```
--- cKillObject(mobHandle, playerHandle)
--- ```
---@param Mob number
---@param Player number
function cKillObject(Mob, Player)
end

--- Kills mob instantly.
---
--- ```
--- cKillObject(mobHandle)
--- ```
---@param Mob number
function cKillObject(Mob)
end

--- Rewards the player with the kq reward specified by the _RewardIndex_ parameter.\
---
--- ```
--- cKQRewardIndex(player, "Reward1")
--- ```
---@param Handle number
---@param RewardIndex string
function cKQRewardIndex(Handle, RewardIndex)
end

--- Levels the player up by 1 level.\
---
--- ```
--- cLevelUp(player)
--- ```
---@param Handle number
function cLevelUp(Handle)
end

--- Teleports player to given location.
---
--- ```
--- cLinkTo(player, "Rou", 5000, 5000)
--- ```
---@param Player number
---@param MapINX string
---@param X number
---@param Y number
---@return boolean|nil Success
function cLinkTo(Player, MapINX, X, Y)
end

--- Teleports all player on the map to given location.
---
--- ```
--- cLinkToAll("Rou", "Eld", 5000, 5000)
--- ```
---@param MapIndex string
---@param DestinationMap string
---@param DestinationX number
---@param DestinationY number
function cLinkToAll(MapIndex, DestinationMap, DestinationX, DestinationY)
end

--- Changes the fog level and sight distance of a map.\
---
--- ```
--- cMapFog("Rou", 0, 1000)
--- ```
---@param MapIndex string
---@param FogValue number
---@param SightDistance number
function cMapFog(MapIndex, FogValue, SightDistance)
end

--- Adds a marker to the map.\
--- The _MarkData_ parameter is a table that contains the data for the marker.\
--- The table needed for the _MarkData_ parameter is shown in the example below.\
---
--- ```
--- cMapMark(player:getMap(), {[100] = {Group = 100, x = 7216, y = 16314, KeepTime = 99999999, IconIndex = 'LinkTown'}})
--- ```
---@param MapIndex string
---@param MarkData table
function cMapMark(MapIndex, MarkData)
end

--- Does the same as [cMapMark](#cMapMark) but for objects.\
---
--- ```
--- cMapMark_Obj(player, {[100] = {Group = 100, x = 7216, y = 16314, KeepTime = 99999999, IconIndex = 'LinkTown'}})
--- ```
---@param Handle number
---@param MarkData table
function cMapMark_Obj(Handle, MarkData)
end

--- Shows a message to the player.<br/>
--- **NOTE:** This function seems to be deprecated. See [cScriptMessage_Obj](#cScriptMessage_Obj) instead.
---
--- ```
--- cMessage(player, "BH_Helga_Buff")
--- ```
---@param Handle number
---@param ScriptMsg string
function cMessage(Handle, ScriptMsg)
end

--- Lets a mob send a chat message from a script file.\
---
--- ```
--- cMobChat(mobHandle, "WarBL", "Mob_01")
--- ```
---@param Handle number
---@param ScriptFile string
---@param Index string
function cMobChat(Handle, ScriptFile, Index)
end

--- Changes the mob detection range of a mob.\
---
--- ```
--- cMobDetectRange(mobHandle, 1000)
--- ```
---@param Handle number
---@param Range number
function cMobDetectRange(Handle, Range)
end

--- Shows an NPC dialog with facecut to all players in the map.\
---
--- ```
--- cMobDialog("Rou", "AdlLoussier", "AdlF", "Loussier_Dead")
--- ```
---@param MapIndex string
---@param FaceCut string
---@param ScriptFile string
---@param Index string
function cMobDialog(MapIndex, FaceCut, ScriptFile, Index)
end

--- This function seems to be deprecated or a duplicate. See [cMobDialog](#cMobDialog) instead.\
---
--- ```
--- cMobDialog_FileName("Rou", "AdlLoussier", "AdlF", "Loussier_Dead")
--- ```
---@param MapIndex string
---@param FaceCut string
---@param ScriptFile string
---@param Index string
function cMobDialog_FileName(MapIndex, FaceCut, ScriptFile, Index)
end

--- Shows an NPC dialog with facecut to a specific player.\
---
--- ```
--- cMobDialog_Obj(player, "AdlLoussier", "AdlF", "Loussier_Dead")
--- ```
---@param Handle number
---@param FaceCut string
---@param ScriptFile string
---@param Index string
function cMobDialog_Obj(Handle, FaceCut, ScriptFile, Index)
end

--- Shows an NPC dialog with facecut to all players within a certain range of the mob associated with the _Handle_ parameter.\
---
--- ```
--- cMobDialog_Range(mobHandle, "AdlLoussier", 1000, "AdlF", "Loussier_Dead")
--- ```
---@param Handle number
---@param FaceCut string
---@param Range number
---@param ScriptFile string
---@param Index string
function cMobDialog_Range(Handle, FaceCut, Range, ScriptFile, Index)
end

--- Returns the id of a mob by its index.\
---
--- ```
--- local mobID = cMobIDFind("Slime")
--- ```
---@param MobIndex string
---@return number|nil MobID
function cMobIDFind(MobIndex)
end

--- Spawns a mob at a random position in a circle specified through X Y and Radius.
---
--- ```
--- local mobNumber = cMobRegen_Circle("Rou", "Slime", 5000, 5000, 100)
--- ```
---@param MapIndex string
---@param MobIndex string
---@param X number
---@param Y number
---@param Radius number
---@return number|nil MobHandle
function cMobRegen_Circle(MapIndex, MobIndex, X, Y, Radius)
end

--- Spawns a mob near another object specified through the _Handle_ parameter.
---
--- ```
--- local mobHandle = cMobRegen_Obj(mobHandle, player)
--- ```
---@param MobIndex string
---@param Handle number
---@return number|nil MobHandle
function cMobRegen_Obj(MobIndex, Handle)
end

--- Spawns a mob at a random position in a rectangle specified through X Y, Width, Height and Rotation.
---
--- ```
--- local mobNumber = cMobRegen_Rectangle("Rou", "Slime", 5000, 5000, 100, 100, 0)
--- ```
---@param MapIndex string
---@param MobIndex string
---@param X number
---@param Y number
---@param Width number
---@param Height number
---@param Rotation number
---@return number|nil MobHandle
function cMobRegen_Rectangle(MapIndex, MobIndex, X, Y, Width, Height, Rotation)
end

--- Spawns a mob at a specific position specified through X Y and Rotation.
---
--- ```
--- local mobHandle = cMobRegen_XY("Rou", "Slime", 5000, 5000, 0)
--- ```
---@param MapIndex string
---@param MobIndex string
---@param X number
---@param Y number
---@param Rotation number
---@return number|nil MobHandle
function cMobRegen_XY(MapIndex, MobIndex, X, Y, Rotation)
end

--- Lets a mob send a shout message from a script file.\
---
--- ```
--- cMobShout(mobHandle, "WarBL", "Mob_01")
--- ```
---@param MobHandle number
---@param ScriptFile string
---@param ScriptIndex string
function cMobShout(MobHandle, ScriptFile, ScriptIndex)
end

--- Kills a mob.<br/>
--- **NOTE:** If the _Handle_ parameter is not provided, all mobs on the map are killed.
---
--- ```
--- cMobSuicide(Var["MapIndex"], mobHandle)
--- ```
---@param MapIndex string
---@param Handle number
function cMobSuicide(MapIndex, Handle)
end

--- Lets an NPC stop moving.\
---
--- ```
--- cMoveStop(mobHandle)
--- ```
---@param Handle number
function cMoveStop(Handle)
end

--- Returns a list of objects near a specific object specified through the _Handle_ parameter.\
---
--- ```
--- local objectList = { cNearObjectList(mobHandle, 1000, ObjectType["PLAYER"]) }
--- ```
---@param Handle number
---@param Radius number
---@param ObjectType ObjectType
---@return number[]|nil ObjectList
function cNearObjectList(Handle, Radius, ObjectType)
end

--- Sends a notice message to all players within a map.\
---
--- ```
--- cNotice("Rou", "WarBL", "Mob_01")
--- ```
---@param MapIndex string
---@param ScriptFile string
---@param ScriptIndex string
function cNotice(MapIndex, ScriptFile, ScriptIndex)
end

--- Sends a notice message to a specific player.\
---
--- ```
--- cNotice_Obj(player, "WarBL", "Mob_01")
--- ```
---@param Handle number
---@param ScriptFile string
---@param ScriptIndex string
function cNotice_Obj(Handle, ScriptFile, ScriptIndex)
end

--- Sends a red warning message to all players within a map.<br/>
--- **NOTE:** This function seems to be broken.
---
--- ```
--- cNoticeRedWarning("Rou", "Started")
--- ```
---@param MapIndex string
---@param Code string
function cNoticeRedWarningCode(MapIndex, Code)
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

--- Lets an NPC show a dialog above their head with a specific message from `ScriptMsg.shn`.\
--- Also sends a message in the chat window.\
---
--- ```
--- cNPCChat(mobHandle, "BH_Helga_Alert")
--- ```
---@param Handle number
---@param ScriptMsg string
function cNPCChat(Handle, ScriptMsg)
end

--- Lets an NPC show a dialog above their head with a specific message.\
---
--- ```
--- cNPCChatTest(mobHandle, "Hello World!")
--- ```
---@param Handle number
---@param Message string
function cNPCChatTest(Handle, Message)
end

--- Opens the dialogue menu of an NPC to the selected player.
---
--- ```
--- cNPCMenuOpen(npcHandle, PlayerHandle)
--- ```
---@param NpcHandle number
---@param Player number
---@return boolean|nil Success
function cNPCMenuOpen(NpcHandle, Player)
end

--- Spawns an npc from the `NPC.txt` into the map.\
--- This function is used to spawn real interactable NPCs in an instance or kingdom quest.\
---
--- ```
--- cNPCRegen("KDCake", "XiaomingR_7th")
--- ```
---@param MapIndex string
---@param NPCIndex string
---@return number|nil Success
function cNPCRegen(MapIndex, NPCIndex)
end

--- Lets a mob use a skill.\
---
--- ```
--- cNPCSkillUse(mobHandle, mobHandle, "BH_Humar_Skill_N_APU")
--- ```
---@param Handle number
---@param Handle2 number
---@param SkillIndex string
function cNPCSkillUse(Handle, Handle2, SkillIndex)
end

--- Vanishes NPC associated with the Handle.
---
--- ```
--- cNPCVanish(npcHandle)
--- ```
---@param NpcHandle number
function cNPCVanish(NpcHandle)
end

--- Gets the amount of the specificed Object Type.
---
--- ```
--- local mobNumber = cObjectCount("Rou", ObjectType.Mob)
--- ```
---@param MapINX string
---@param ObjectType number
---@return number Amount
function cObjectCount(MapINX, ObjectType)
end

--- Returns the first object found within a radius of a specific object specified through the _Handle_ parameter.\
---
--- ```
--- local foundObject = cObjectFind(mobHandle, 1000, ObjectType["PLAYER"], "so_ObjectType")
--- ```
---@param Handle number
---@param Radius number
---@param ObjectType ObjectType
---@param Method string
---@return number|nil ObjectHandle
function cObjectFind(Handle, Radius, ObjectType, Method)
end

--- Returns the first mob found within a radius of a specific object specified through the _Handle_ parameter.\
---
--- ```
--- local foundMob = cObjectFind(mobHandle, 1000, "BH_Helga", "so_mobile_GetIdxName")
--- ```
---@param Handle number
---@param Radius number
---@param MobIndex string
---@param Method string
---@return number|nil MobHandle
function cObjectFind(Handle, Radius, MobIndex, Method)
end

--- Returns the current HP and Max HP of an object.
---
--- ```
--- local CurHP, MaxHP = cObjectHP(mob)
--- ```
---@param Handle number
---@return number CurHP
---@return number MaxHP
function cObjectHP(Handle)
end

--- Returns the X and Y of the Handle.
---
--- ```
--- local playerX, playerY = cObjectLocate(player)
--- ```
---@param Handle number
---@return number|nil x
---@return number|nil y
function cObjectLocate(Handle)
end

--- Returns the X, Y and Direction of the Handle.
---
--- ```
--- local playerX, playerY, playerDir = cObjectLocateDirection(player)
--- ```
---@param Handle number
---@return number|nil x
---@return number|nil y
---@return number|nil direction
function cObjectLocateDirection(Handle)
end

--- Plays a sound to all objects within the objects radius associated with the _Handle_ parameter.\
---
--- ```
--- cObjectSound(mobHandle, "interface/SFX_Critical01")
--- ```
---@param Handle number
---@param SoundFile string
function cObjectSound(Handle, SoundFile)
end

--- Get ObjectType of the given handle.
---
--- ```
--- if cObjectType(Handle) == ObjectType.Player then
--- end
--- ```
---@param Handle number
---@return ObjectType|nil objectType
function cObjectType(Handle)
end

--- Joins to player to a party.\
---
--- ```
--- cPartyJoin(player, player2)
--- ```
---@param PlayerHandle01 number
---@param PlayerHandle02 number
function cPartyJoin(PlayerHandle01, PlayerHandle02)
end

--- Removes a player from his party.\
---
--- ```
--- cPartyLeave(player)
--- ```
---@param PlayerHandle number
function cPartyLeave(PlayerHandle)
end

--- Calculates a chance and returns success or failure.<br/>
--- The example below will return true 50% of the time.
---
--- ```
--- if cPermileRate(500) then
--- end
--- ```
---@param Rate number
---@return boolean Success
function cPermileRate(Rate)
end

--- Checks if a player still exists.
---
--- ```
--- local playerExists = cPlayerExist(player)
--- ```
---@param PlayerHandle number
---@return boolean|nil Exists
function cPlayerExist(PlayerHandle)
end

--- Plays a sound to a specific player.\
---
--- ```
--- cPlaySound(player, "interface/SFX_Critical01")
--- ```
---@param Handle number
---@param SoundFile string
function cPlaySound(Handle, SoundFile)
end

function cProgressTutorial(Handle, StepNo)
end

--- Credits a single mob kill to the quest specified through the _QuestID_ parameter.\
---
--- ```
--- cQuestMobKill(player, 50, "BlackBear")
--- ```
---@param Handle number
---@param QuestID number
---@param MobIndex string
function cQuestMobKill(Handle, QuestID, MobIndex)
end

--- Credits a single mob kill to every player on the map for the quest specified through the _QuestID_ parameter.\
--- Max kills is the maximum amount of kills that can be credited to the quest.\
---
--- ```
--- cQuestMobKill_AllInMap("Rou", 50, "BlackBear", 5)
--- ```
---@param MapIndex string
---@param QuestID number
---@param MobIndex string
---@param MaxKills number
function cQuestMobKill_AllInMap(MapIndex, QuestID, MobIndex, MaxKills)
end

--- Shows either a success or failure message to all players on the map.\
--- This is only used in Kingdom quests and can be replaced with [cEffectMsg_AllInMap](#cEffectMsg_AllInMap).\
--- The _Result_ parameter can be either "Success" or "Fail".\
---
--- ```
--- cQuestResult(Var["MapIndex"], "Success")
--- ```
---@param MapIndex string
---@param Result string
function cQuestResult(MapIndex, Result)
end

--- Shows either a success or failure message to the player specified through the _Handle_ parameter.\
--- See [cQuestResult](#cQuestResult) for more information on the possible results.\
---
--- ```
--- cQuestResult_Individual(player, "Success")
--- ```
---@param Handle number
---@param Result string
function cQuestResult_Individual(Handle, Result)
end

--- This function is deprecated and can be replaced with [cRandomInt](#cRandomInt).\
---
--- ```
--- local random = cRandom(1, 10)
--- ```
---@param LowerLimit number
---@param UpperLimit number
---@return number RandomNumber
function cRandom(LowerLimit, UpperLimit)
end

--- Generates a random number between two values.
---
--- ```
--- local random = cRandomInt(1, 10)
--- ```
---@param LowerLimit number
---@param UpperLimit number
---@return number RandomNumber
function cRandomInt(LowerLimit, UpperLimit)
end

--- Reset abstate on object.
---
--- ```
--- cResetAbstate(MobHandle, "StaImmortal")
--- ```
---@param Handle number
---@param Abstate string
---@return boolean|nil Success
function cResetAbstate(Handle, Abstate)
end

--- Revives all players on the map.
---
--- ```
--- cRevivalAll("Rou")
--- ```
---@param MapIndex string
function cRevivalAll(MapIndex)
end

--- Rewards all players some type of reward.<br/>
--- **NOTE:** This function is only used to credit Kingdom Quest rewards.\
--- The _Type_ parameter can only be "KQ".\
---
--- ```
--- cReward("Rou", "KQ")
--- ```
---@param MapIndex string
---@param Type string
function cReward(MapIndex, Type)
end

--- Rewards a player a specific item to the gift inventory.\
---
--- ```
--- cRewardItem(player, "El1", 5)
--- ```
---@param Handle number
---@param ItemIndex string
---@param ItemLot number
function cRewardItem(Handle, ItemIndex, ItemLot)
end

--- Rewards an item to all players on the map.
---
--- ```
--- cRewardItem_AllInMap("Rou", "El1", 5)
--- ```
---@param MapIndex string
---@param ItemIndex string
---@param ItemLot number
function cRewardItem_AllInMap(MapIndex, ItemIndex, ItemLot)
end

--- Rewards an item to the player's inventory.
---
--- ```
--- cRewardItem_CharInven(player, "El1", 5)
--- ```
---@param Handle number
---@param ItemIndex string
---@param ItemLot number
function cRewardItem_CharInven(Handle, ItemIndex, ItemLot)
end

--- Lets a handle run to a specific position.
---
--- ```
--- cRunTo(mobHandle, 5000, 5000, 1000)
--- ```
---@param Handle number
---@param X number
---@param Y number
function cRunTo(Handle, X, Y, Speed)
end

--- Lets a handle run to a specific position until it hits a wall.
---
--- ```
--- cRunToUntilBlock(mobHandle, 5000, 5000, 1000)
--- ```
---@param Handle number
---@param X number
---@param Y number
---@param Speed number
function cRunToUntilBlock(Handle, X, Y, Speed)
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
---@param Player number
---@param MsgINX string
---@param ... string
function cScriptMessage_Obj(Player, MsgINX, ...)
end

--- Send a notice to all players within the range of the handle from ScriptMsg.SHN.
--- Refer to printf format strings on how strings
--- are formatted and how to pass extra paramters
---
--- ```
--- cScriptMessage_Range(mobHandle, 200, "SM_Msg", "Success")
--- ```
---@param Handle number
---@param Range number
---@param ScriptMsg string
---@param ... string
function cScriptMessage_Range(Handle, Range, ScriptMsg, ...)
end

--- This function is deprecated and can be replaced with [cScriptMessage](#cScriptMessage).\
---
--- ```
--- cScriptMsg("Rou", nil, "SM_Msg", "Success")
--- ```
---@param MapIndex string
---@param ChatHandle number
---@param ScriptMsg string
---@param ... string
function cScriptMsg(MapIndex, ChatHandle, ScriptMsg, ...)
end

--- Sends a notice across the world from ScriptMsg.shn\
--- Refer to printf format strings on how strings
--- are formatted and how to pass extra paramters
---
--- ```
--- cScriptMsg_World(nil, "SM_Msg", "Success")
--- ```
---@param Unk number
---@param ScriptMsg string
---@param ... string
function cScriptMsg_World(Unk, ScriptMsg, ...)
end

--- Opens up a server menu for a player.
--- A server menu is a window like the one when entering a gate.
--- The YesFunction and NoFunction parameters are the functions that are called when the player clicks the Yes or No button.
--- The functions must be defined in the script.<br/>
--- The functions must have the following parameters:<br/>
--- `function YesFunction(NPCHandle, PlayerHandle, CharNo)`<br/>
--- `function NoFunction(NPCHandle, PlayerHandle, CharNo)`\
---
--- ```
--- cServerMenu(player, npcHandle, "Do you want to leave?", "Yes", "LeaveDungeon", "No", "EmptyFunction")
--- ```
---@param PlayerHandle number
---@param NPCHandle number
---@param Title string
---@param YesButton string
---@param YesFunction string
---@param NoButton string
---@param NoFunction string
function cServerMenu(PlayerHandle, NPCHandle, Title, YesButton, YesFunction, NoButton, NoFunction)
end

--- Sets an Abstate on a Handle.
---
--- ```
--- cSetAbstate(player, "StaImmortal", 1, 2000000000)
--- ```
---@param Handle number
---@param AbstateINX string
---@param AbstateSTR number
---@param KeepTime number
---@return boolean|nil Success
function cSetAbstate(Handle, AbstateINX, AbstateSTR, KeepTime)
end

--- Set Abstate in range for all objects of a specific type.
---
--- ```
--- cSetAbstate_Range(MobHandle, 1000, ObjectType.Mob, "StaImmortal", 1, 20000)
--- ```
---@param Handle number
---@param Range string
---@param ObjectType number
---@param Index number
---@param Strength number
---@param KeepTime number
---@return boolean|nil Success
function cSetAbstate_Range(Handle, Range, ObjectType, Index, Strength, KeepTime)
end

--- Set Abstate in a pre-defined area.<br/>
--- _Disclaimer: The areas used here are located in `Shine/AreaBMP`_
---
--- ```
--- cSetAbstateInArea(MapIndex, "StaBRNWarH", 1, 1000, "WarH_BossRoom", 22255, 12636)
--- ```
---@param MapInx number
---@param AbstateInx string
---@param AbstateStrength number
---@param AbstateKeepTime number
---@param AreaBMP string
---@param CenterX number
---@param CenterY number
function cSetAbstateInArea(MapInx, AbstateInx, AbstateStrength, AbstateKeepTime, AreaBMP, CenterX, CenterY)
end

--- Sets script on an object associated with the handle.
---
--- ```
--- cSetAIScript("ID/AdlF/AdlF", mobHandle)
--- ```
---@param LuaScriptPath string
---@param MobHandle number|nil
---@return boolean|nil Success
function cSetAIScript(LuaScriptPath, MobHandle)
end

--- Sets wether the revive item can be used on a map.
---
--- ```
--- cSetCanUseReviveItem("Rou", false)
--- ```
---@param MapIndex string
---@param CanUse boolean
function cSetCanUseReviveItem(MapIndex, CanUse)
end

--- Sets wether the revive skill can be used on a map.
---
--- ```
--- cSetCanUseReviveSkill("Rou", false)
--- ```
---@param MapIndex string
---@param CanUse boolean
function cSetCanUseReviveSkill(MapIndex, CanUse)
end

--- Sets the death delay time for a handle.
---
--- ```
--- cSetDeadDelayTime(mobHandle, 10000)
--- ```
---@param Handle number
---@param Time number
function cSetDeadDelayTime(Handle, Time)
end

--- Sets the script for the map.
---
--- ```
--- cSetFieldScript(MapIndex, "ID/BH_Karen/BH_Karen_P")
--- ```
---@param Field number
---@param Script string
---@return boolean|nil Success
function cSetFieldScript(Field, Script)
end

--- Enables or disables the free battle (PVP) mode on a map.
---
--- ```
--- cSetFreeBattle("Rou", true)
--- ```
---@param MapIndex string
---@param Enabled boolean
function cSetFreeBattle(MapIndex, Enabled)
end

--- Sets an attribute on a mob.
--- Possible attributes are:<br/>
--- `MobAggro` - Aggro range<br/>
--- `CanRecovery` - Can recover HP<br/>
---
--- ```
--- cSetMobAttr(mobHandle, "MobAggro", 1000)
--- ```
---@param Handle number
---@param Attribute string
---@param Value number
---@return boolean|nil Success
function cSetMobAttr(Handle, Attribute, Value)
end

--- Sets wether an NPC drops items or not.
---
--- ```
--- cSetNPCIsItemDrop(npcHandle, false)
--- ```
---@param Handle number
---@param Enabled boolean
function cSetNPCIsItemDrop(Handle, Enabled)
end

--- Sets an attribute on an NPC.
--- Possible attributes are:<br/>
--- `MaxHP` - Maximum HP<br/>
--- `HP` - Current HP<br/>
--- `RunSpeed` - Movement speed<br/>
--- `HPRegen` - HP regeneration<br/>
--- `AC` - Armor<br/>
--- `MR` - Magic resistance<br/>
--- `MobEXP` - Experience<br/>
---
--- ```
--- cSetNPCParam(npcHandle, "HP", 1000)
--- ```
---@param Handle number
---@param Attribute string
---@param Value number
---@return boolean|nil Success
function cSetNPCParam(Handle, Attribute, Value)
end

--- Sets the resistance of an NPC.
--- Resistances are passed as a table. The table must contain the values from the example below.
---
--- ```
--- local resistanceTable = { ResDot = 0, ResStun = 0, ResMoveSpeed = 0, ResFear = 0, ResBinding = 0, ResReverse = 0, ResMesmerize = 0, ResSeverBone = 0, ResKnockBack = 0, ResTBMinus = 0 }
--- cSetNPCResist(npcHandle, resistanceTable)
--- ```
---@param Handle number
---@param ResistanceTable table
function cSetNPCResist(Handle, ResistanceTable)
end

--- Sets the direction an object is facing.
---
--- ```
--- cSetObjectDirect(mobHandle, 180)
--- ```
---@param Handle number
---@param Direction number
function cSetObjectDirect(Handle, Direction)
end

--- Sets the respawn time for a player in seconds.
---
--- ```
--- cSetReviveDelayTime(Var["MapIndex"], 10)
--- ```
---@param MapIndex string
---@param DelayTime number
function cSetReviveDelayTime(MapIndex, DelayTime)
end

--- Sets a flag on a servant. Only Flag `MobCanDamageTo` is known to work.
---
--- ```
--- cSetServantFlag(servantHandle, "MobCanDamageTo", 1)
--- ```
---@param Handle number
---@param Flag string
---@param Value number
function cSetServantFlag(Handle, Flag, Value)
end

--- Sets the team battle mode on a map. Only works in Kingdom Quests.
---
--- ```
--- cSetTeamBattle("Rou", true)
--- ```
---@param MapIndex string
---@param Active boolean
function cSetTeamBattle(MapIndex, Active)
end

--- Shows a cinematic text on the screen.
--- A letterbox effect is applied to the screen
--- and the text is displayed in the middle.
--- Interface elements are hidden.
---
--- ```
--- cShowCinematicText(Var["Handle"], "Hello World!")
--- ```
---@param Handle number
---@param Message string
function cShowCinematicText(Handle, Message)
end

--- Shows the KQ timer on the screen for all players with remaining time and lifes.
---
--- ```
--- cShowKQTimerWithLife(MapIndex, 600)
--- ```
---@param MapIndex string
---@param SecondLimit number
function cShowKQTimerWithLife(MapIndex, SecondLimit)
end

--- Shows the KQ timer on the screen for a specific player with remaining time and lifes.
---
--- ```
--- cShowKQTimerWithLife_Obj(Handle, 600)
--- ```
---@param Handle number
---@param SecondLimit number
function cShowKQTimerWithLife_Obj(Handle, SecondLimit)
end

--- Shows a chat bubble above the handle with a message from `ScriptMsg.shn`.
---
--- ```
--- cSimpleChatScriptMsg(mobHandle, "BH_Helga_Alert")
--- ```
---@param Handle number
---@param ScriptMsg string
function cSimpleChatScriptMsg(Handle, ScriptMsg)
end

--- Lets a handle cast a skill.
---
--- ```
--- cSkillBlast(mobHandle, mobHandle, "BH_Humar_Skill_N_APU")
--- ```
---@param Handle number
---@param Handle2 number
---@param SkillIndex number
function cSkillBlast(Handle, Handle2, SkillIndex)
end

--- Sends a start message to all players on a map.
--- It counts down from 5 to 1.
---
--- ```
--- cStartMsg_AllInMap("Rou")
--- ```
---@param MapIndex string
function cStartMsg_AllInMap(MapIndex)
end

--- Sets static damage on a handle.
--- Meaning the handle will always deal the same amount of damage.
---
--- ```
--- cStaticDamage(mobHandle, 1000)
--- ```
---@param Handle number
---@param Damage number
function cStaticDamage(Handle, Damage)
end

--- Deprecated. Use `cStaticDamage` instead.
---
--- ```
--- cStaticDamage_smo(mobHandle, 1000)
--- ```
---@param Handle number
---@param Damage number
function cStaticDamage_smo(Handle, Damage)
end

--- Sets static movement speed on mounts for a handle.
--- Meaning the handle will always move at the same speed with it's mount.
---
--- ```
--- cStaticMoverSpeed(mobHandle, 1000)
--- ```
---@param Handle number
---@param Speed number
function cStaticMoverSpeed(Handle, Speed)
end

--- Sets static movement speed on a handle.
--- Meaning the handle will always move at the same speed.
---
--- ```
--- cStaticRunSpeed(mobHandle, 1000)
--- ```
---@param Handle number
---@param Speed number
function cStaticRunSpeed(Handle, Speed)
end

--- Deprecated. Use `cStaticRunSpeed` instead.
---
--- ```
--- cStaticSpeed(handle, 1000)
--- ```
---@param Handle number
---@param Speed number
function cStaticSpeed(Handle, Speed)
end

--- Sets static walk speed on a handle.
---
--- ```
--- cStaticWalkSpeed(mobHandle, 1000)
--- ```
---@param Handle number
---@param Speed number
function cStaticWalkSpeed(Handle, Speed)
end

--- This function seems to be broken. At least it doesn't do anything.
---
--- ```
--- cSystemMessage_Obj(player, "Event", "E_X_SysMsg_Fail1")
--- ```
---@param Handle number
---@param ScriptFile string
---@param ScriptIndex string
function cSystemMessage_Obj(Handle, ScriptFile, ScriptIndex)
end

--- Removes the target of a handle.
--- TargetHandle is the handle that will lose it's target.
--- Handle is the handle that will be removed as target.
---
--- ```
--- cTargetChangeNull(player, mobHandle)
--- ```
---@param TargetHandle number
---@param Handle number
function cTargetChangeNull(TargetHandle, Handle)
end

--- Returns the handle of the current target.
---
--- ```
--- local target = cTargetHandle(player)
--- ```
---@param Handle number
---@return number|nil TargetHandle
function cTargetHandle(Handle)
end

--- Start timer for all player on map that ticks down.\
--- To make the timer disappear call again with Time = 0.
---
--- ```
--- cTimer(MapIndex, 600)
--- ```
---@param Field number
---@param Time number
function cTimer(Field, Time)
end

--- Start timer for a specific player that ticks down.\
--- To make the timer disappear call again with Time = 0.
---
--- ```
--- cTimer_Obj(Handle, 600)
--- ```
---@param Player number
---@param Delay number
function cTimer_Obj(Player, Delay)
end

--- Ends timer for a specific player.\
---
---
--- ```
--- cTimer(MapIndex, 600)
--- ```
---@param Player number
---@param Delay number
function cTimerEnd(Player, Delay)
end

--- Starts timer for a specific player.\
--- This function is deprecated. Use [cTimer_Obj](#cTimer_Obj) instead.
---
--- ```
--- cTimerStart(Handle)
--- ```
---@param Handle number
function cTimerStart(Handle)
end

--- Uses money from a player.
--- Returns true if the player had enough money.
---
--- ```
--- local hasEnoughMoney = cUseMoney(player, 1000)
--- ```
---@param PlayerHandle number
---@param Amount number
---@return boolean|nil HasEnoughMoney
function cUseMoney(PlayerHandle, Amount)
end

--- Kills all of a specified MobINX in a Map.
---
--- ```
--- cVanishAll("Rou", "Slime")
--- ```
---@param Map string
---@param MobINX string
---@return number|nil NumberOfVanishedMobs
function cVanishAll(Map, MobINX)
end

--- Vanishes an NPC.
--- This function seems to be deprecated. Use [cVanish](#cVanish) instead.
---
--- ```
--- cVanishReserv(mobHandle, 3)
--- ```
---@param NPCHandle number
---@param Unk number
function cVanishReserv(NPCHandle, Unk)
end

--- Equips a cosmetic outfit in an invisible slot.
---
--- ```
--- cViewEquip(player, "Cos_WesternPink01_1")
--- ```
---@param Handle number
---@param ItemIndex string
function cViewEquip(Handle, ItemIndex)
end

--- Unequips all cosmetics in an invisible slot.
---
--- ```
--- cViewSlotUnEquipAll(player)
--- ```
---@param Handle number
function cViewSlotUnEquipAll(Handle)
end

--- Lets a handle walk to a position with a specific speed.
---
--- ```
--- cWalkTo(mobHandle, 100, 100, 1000)
--- ```
---@param Handle number
---@param X number
---@param Y number
---@param Speed number
function cWalkTo(Handle, X, Y, Speed)
end

--- Shows a scoreboard for all players on a map.
---
--- ```
--- cWinter_Event_ScoreBoard_AllInMap(MapIndex, 0, 0)
--- ```
---@param MapIndex number
---@param Team01 number
---@param Team02 number
function cWinter_Event_ScoreBoard_AllInMap(MapIndex, Team01, Team02)
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
---@field Str number
---@field Con number
---@field Dex number
---@field Int number
---@field End number
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
---@field None number
---@field Fighter number
---@field CleverFighter number
---@field Warrior number
---@field Gladiator number
---@field Knight number
---@field Cleric number
---@field HighCleric number
---@field Paladin number
---@field HolyKnight number
---@field Guardian number
---@field Archer number
---@field HawkArcher number
---@field Scout number
---@field SharpShooter number
---@field Ranger number
---@field Mage number
---@field WizMage number
---@field Enchanter number
---@field Warlock number
---@field Wizard number
---@field Joker number
---@field Chaser number
---@field Cruel number
---@field Closer number
---@field Assassin number
---@field Sentinel number
---@field Savior number
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
---@return number Time
function cGetExactTime(Player, Amount)
end

--- **Hook only**\
--- Gives a player a specific amount of money (in bronze).
---
--- ```
--- cGainMoney(player, 1000000)
--- ```
---@param Player number
---@param Amount number
---@return boolean|nil Success
function cGainMoney(Player, Amount)
end

--- **Hook only**\
--- Gives a player a specific amount of money (in bronze).
---
--- ```
--- cAddMoney(player, 1000000)
--- ```
---@param Player number
---@param Amount number
---@return boolean|nil Success
function cAddMoney(Player, Amount)
end

--- **Hook only**\
--- Returns the exact class of a player.
---
--- ```
--- local class = cGetExactClass(player)
--- ```
---@param Player number
---@return Classes|nil ClassID
function cGetExactClass(Player)
end

--- **Hook only**\
--- Returns the exact class of a player.
---
--- ```
--- local class = cGetClass(player)
--- ```
---@param Player number
---@return Classes|nil ClassID
function cGetClass(Player)
end

--- **Hook only**\
--- Returns SP of object.
---
--- ```
--- local curSp, maxSp = cObjectSP(player)
--- ```
---@param Player number
---@return number|nil CurSP
---@return number|nil MaxSP
function cObjectSP(Player)
end

--- **Hook only**\
--- Gives the player fame.
---
--- ```
--- cGainFame(player, 5000)
--- ```
---@param Player number
---@param Fame number
---@return boolean|nil Success
function cGainFame(Player, Fame)
end

--- **Hook only**\
--- Gives the player fame.
---
--- ```
--- cAddFame(player, 5000)
--- ```
---@param Player number
---@param Fame number
---@return boolean|nil Success
function cAddFame(Player, Fame)
end

--- **Hook only**\
--- Sends a map wide shout. Mob only.
---
--- ```
--- cSendShout(mobHandle, player, "Test", "Test Message")
--- ```
---@param MobHandle number
---@param ReceiverHandle number
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
---@param MobHandle number
---@param ReceiverHandle number
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
---@param ChannelID number
---@param Message number
function cPostDiscord(ChannelID, Message)
end

--- **Hook only**\
--- Disconnects a player.
---
--- ```
--- cKickout(player)
--- ```
---@param Player number
---@return boolean|nil Success
function cKickout(Player)
end

--- **Hook only**\
--- Returns the item power of the player.
---
--- ```
--- local itemPower = cGetItemPower(player)
--- ```
---@param Player number
---@return number|nil ItemPower
function cGetItemPower(Player)
end

--- **Hook only**\
--- Checks if a user has the given sub abstate.
---
--- ```
--- local itemPower = cHasSubAbstate(player, 5)
--- ```
---@param Player number
---@param SubAbstateIndex number
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
---@param Player number
---@return number|nil Players
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
---@param Player number
---@return number|nil Players
function cPartyMembersZone(Player)
end

--- **Hook only**\
--- Returns the total value of the stat for the player.
---
--- ```
--- local stats = cPlayerStatTotal(player, Stats.Str)
--- ```
---@param Player number
---@param StatIndex StatsEnum
---@return number|nil TotalSkilled
function cPlayerStatTotal(Player, StatIndex)
end

--- **Hook only**\
--- Returns the skilled value of the stat.
---
--- ```
--- local stats = cPlayerStatSkilled(player, Stats.Str)
--- ```
---@param Player number
---@param StatIndex StatsEnum
---@return number TotalSkilled
function cPlayerStatSkilled(Player, StatIndex)
end

--- **Hook only**\
--- Mob safe variant to get the targeted object.
---
--- ```
--- local target = cGetTarget(player)
--- ```
---@param MobHandle number
---@return number|nil PlayerHandle
function cGetTarget(MobHandle)
end

--- **Hook only**\
--- Get total exp of players. Gets converted to 32 bit. Do not use.
---
--- ```
--- local exp = cGetExp(player)
--- ```
---@deprecated
---@param Player number
---@return number|nil Exp
function cGetExp(Player)
end

--- **Hook only**\
--- Revives the player.
---
--- ```
--- cRevive(player)
--- ```
---@param Player number
---@return boolean|nil Success
function cRevive(Player)
end

--- **Hook only**\
--- Teleports the user to the default position of the map he is on.
---
--- ```
--- cLinkTo(player)
--- ```
---@param Player number
function cLinkTo(Player)
end

--- **Hook only**\
--- Teleports the user to the default position of the map.
---
--- ```
--- cLinkTo(player, "Rou")
--- ```
---@param Player number
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
---@param Player number
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

--- **Undocumented**
function cEffectTimer(Handle, Index, Time)
end

--- **Undocumented**
function cFindAttackBlockLocate(Handle, X, Y)
end

--- **Undocumented**
function cFreeStatInit(Handle)
end

--- **Undocumented**
function cGetMaster(Handle)
end

--- **Undocumented**
function cGetQuestHero_ItemUse()
end

--- **Undocumented**
function cGetQuestHero_NPC()
end

--- **Undocumented**
function cGetTutorialInfo(Handle)
end

--- **Undocumented**
function cIsNoAttacOrNoMove(Handle)
end

--- **Undocumented**
function cLocationRotate(X, Y, Angle)
end

--- **Undocumented**
function cMagicFieldSpread(Handle, X, Y, Unk, SkillIndex, Unk2)
end

--- **Undocumented**
function cMapMark_FieldSight(MapIndex, X, Y, MarkData)
end

--- **Undocumented**
function cMapObjectControl()
end

--- **Undocumented**
function cMobDialog_String(MapIndex, Handle, Message)
end

--- **Undocumented**
function cMobRegen_XY_Layer(MapIndex, MobIndex, X, Y, Direction, LayerType, LayerNumberType, PlayerHandle)
end

--- **Undocumented**
function cMobWeaponRate(Handle, Values)
end

--- **Undocumented**
function cMove2Where(Handle)
end

--- **Undocumented**
function cMoveLayer(Handle, LayerType, LayerNumberType)
end

--- **Undocumented**
function cObjectEffect(Handle, EffectFile)
end

--- **Undocumented**
function cRegenGroupActiv(MapIndex, RegenIndex, Active)
end

--- **Undocumented**
function cSaveTutorialInfo(Handle, Unk, StepNo)
end

--- **Undocumented**
function cScoreBoard(Handle, Unk, RoundNumber, Team01WinCount, Team01Score, Team02WinCount, Team02Score)
end

--- **Undocumented**
function cScoreBoard_AllInMap(MapIndex, Unk, RoundNumber, Team01WinCount, Team01Score, Team02WinCount, Team02Score)
end

--- **Undocumented**
function cScoreInfo(Handle, MaximumTeams, Team01Score, Team02Score)
end

--- **Undocumented**
function cScoreInfo_AllInMap(MapIndex, MaximumTeams, Team01Score, Team02Score)
end

--- **Undocumented**
function cScoreResultList()
end

--- **Undocumented**
function cScoreTopList()
end

--- **Undocumented**
function cSendGameLogDataType_4()
end

--- **Undocumented**
function cSendGameLogDataType_5()
end

--- **Undocumented**
function cSendRankingList()
end

--- **Undocumented**
function cSetItemDropMobID(Handle, ItemDropIndex)
end

--- **Undocumented**
function cSetSightState(Handle, Active)
end

--- **Undocumented**
function cSkillDamageCalculate(Handle, SkillIndex, Target, Unk)
end

--- **Undocumented**
function cSomebodyShout(MapIndex, ChatterIndex, ScriptFile, ScriptIndex)
end

--- **Undocumented**
function cTopView()
end

--- **Undocumented**
function cTriggerRegist()
end

--- **Undocumented**
function cVanishTimer(MapIndex)
end

--- **Undocumented**
function cWaitIdle(Handle)
end

--- **Undocumented**
function cWillMovement(Handle)
end