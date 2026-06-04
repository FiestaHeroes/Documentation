# Documentation

<!---
This file is auto-generated. Do not attempts to modify this file directly.
Script is located under scripts/convert_lua.py
-->

## Normal Types

### ReturnAI

Return type for AIScripts.

| Name | Type | Description | Value |
|------|------|-------------|-------|
| END | number | Returning this value will stop the zone from running any custom logic for the mob. It will be fully controlled by lua. | 1 |
| CPP | number | Returning this value will make the zone run normal mob logic for this mob. | 2 |

### ObjectType

Types for objects.

| Name | Type | Description | Value |
|------|------|-------------|-------|
| Invalid | number | - | -1 |
| Flag | number | - | 0 |
| DropItem | number | - | 1 |
| Player | number | - | 2 |
| MiniHouse | number | - | 3 |
| NPC | number | - | 4 |
| Mob | number | - | 5 |
| MagicField | number | - | 6 |
| Door | number | - | 7 |
| Bandit | number | - | 8 |
| Effect | number | - | 9 |
| Servant | number | - | 10 |
| Mover | number | - | 11 |
| Pet | number | - | 12 |
| Max | number | Max value for this field. Mostly used in conditional expressions to test if a value is actually valid. | 13 |

### ObjectMode

Types for object modes.

| Name | Type | Description | Value |
|------|------|-------------|-------|
| Linking | string | - | 'linking' |
| Normal | string | - | 'normal' |
| Fight | string | - | 'fight' |
| Corpse | string | - | 'corpse' |
| House | string | - | 'house' |
| Booth | string | - | 'booth' |
| Riding | string | - | 'riding' |
| LogoutWait | string | - | 'logoutwait' |

### BasicClass

BaseClass Enum. Use this to compare against the return value of functions returning this type.

| Name | Type | Description | Value |
|------|------|-------------|-------|
| None | number | - | 0 |
| Fighter | number | - | 1 |
| Cleric | number | - | 6 |
| Archer | number | - | 11 |
| Mage | number | - | 16 |
| Joker | number | - | 21 |
| Sentinel | number | Needs to be manually added to common.lua | 26 |

### EFFECT_MSG_TYPE

| Name | Type | Description | Value |
|------|------|-------------|-------|
| EMT_WIN | number | - | 0 |
| EMT_LOSE | number | - | 1 |
| EMT_DRAW | number | - | 2 |
| EMT_START | number | - | 3 |
| EMT_COUNT_8_SEC | number | - | 4 |
| EMT_SUCCESS | number | - | 5 |
| EMT_FAIL | number | - | 6 |
| EMT_START_OLYMPIC | number | - | 7 |
| EMT_GOAL_OLYMPIC | number | - | 8 |
| EMT_SOCCER_WIN | number | - | 9 |
| EMT_SOCCER_LOSE | number | - | 10 |
| EMT_SOCCER_DRAW | number | - | 11 |
| EMT_SOCCER_KICK_OFF | number | - | 12 |
| EMT_SOCCER_GOAL | number | - | 13 |
| EMT_WATER_START | number | - | 14 |

### CAMERA_STATE

| Name | Type | Description | Value |
|------|------|-------------|-------|
| NONE | number | - | 0 |
| MOVING | number | - | 1 |

### KQ_TEAM

| Name | Type | Description | Value |
|------|------|-------------|-------|
| RED | number | - | 0 |
| BLUE | number | - | 1 |
| MAX | number | Max value for this field. Mostly used in conditional  expressions to test if a value is actually valid. | 2 |

### PlayerDamage

| Name | Type | Description | Value |
|------|------|-------------|-------|
| Handle | number | - | - |
| DamageDealt | number | - | - |
| DamageTaken | number | - | - |
| HealingDone | number | - | - |
| PlyName | string | - | - |

<br></br>

## Normal Functions

<hr></hr>

### cAbstateRestTime

Returns the remaining time of an abstate on the given handle.<br/>
Returns nil if the abstate is not found on the target.

```lua  title='Definitions'
function cAbstateRestTime(Handle: number, AbstateInx: string) -> number|nil
```


```lua title='Example'
local restTime = cAbstateRestTime(player, "StaImmortal")
```

<hr></hr>

### cActByEventCode

Lets a handle do an action based on the given event code.
Event codes can be found in the .kfm of each object.

```lua  title='Definitions'
function cActByEventCode(Handle: number, EventCode: number)
```


```lua title='Example'
cActByEventCode(player, 101000)
```

<hr></hr>

### cAddCharacterTitle

Adds a character title to the given character.

```lua  title='Definitions'
function cAddCharacterTitle(CharNumber: number, TitleType: number, ElementNumber: number)
```


```lua title='Example'
cAddCharacterTitle(player, 1, 0)
```

<hr></hr>

### cAggroList

Returns a table containing all objects that are aggroed on the given handle.

```lua  title='Definitions'
function cAggroList(Handle: number, Range: number) -> number[]
```


```lua title='Example'
local aggroList = { cAggroList(player, 100) }
```

<hr></hr>

### cAggroListSize

Returns the size of the aggro list of the given handle.

```lua  title='Definitions'
function cAggroListSize(Handle: number) -> number
```


```lua title='Example'
local aggroListSize = cAggroListSize(player)
```

<hr></hr>

### cAggroReset

Resets the aggro of the given handle on the given target.

```lua  title='Definitions'
function cAggroReset(Handle: number, TargetHandle: number)
```


```lua title='Example'
cAggroReset(player, target)
```

<hr></hr>

### cAggroSet

Sets the aggro of the given handle on the given target.
The aggro rate is the strength of the aggro.

```lua  title='Definitions'
function cAggroSet(Handle: number, TargetHandle: number, AggroRate: number)
```


```lua title='Example'
cAggroSet(player, target, 100)
```

<hr></hr>

### cAIScriptFunc

Set callback function for special events on NPCs.
- Possible Events and callback arguments:
    - "Entrance" -> func( Handle, MapIndex )
    - "NPCClick" -> func( NPCHandle, PlyHandle, PlyCharNo )
    - "NPCMenu" -> func( NPCHandle, PlyHandle, PlyCharNo, Value )
    - "MobDamaged" -> func( MapIndex, AttackerHandle, MaxHP, CurHP, DefenderHandle )
    - "ObjectDied" -> func( MapIndex, KillerHandle, DeadHandle )
    - "NPCAction" -> func( MapIndex, NPCHandle, PlyHandle, PlyCharNo )
    - "MobAttack" -> func( MapIndex, AtkHandle )
    - "RankingValue" -> func( MapIndex, PlyHandle, DamageDone, DamageTaken,Healing )

```lua  title='Definitions'
function cAIScriptFunc(Handle: number, ZoneEvent: string, CallBack: string) -> boolean|nil
```


```lua title='Example'
function OnNPCClicked(NPCHandle, PlyHandle, PlyCharNo)
    -- Do something
end
cAIScriptFunc(Mob, "NPCClick", "OnNPCClicked" )
```

<hr></hr>

### cAIScriptSet

Copies the script from the object associated with handle to
the object associated with HandleTarget.

```lua  title='Definitions'
function cAIScriptSet(HandleTarget: number, Handle: number) -> boolean|nil
```


```lua title='Example'
cAIScriptSet(mobHandle, mobHandle2)
```

<hr></hr>

### cAnimate

Starts or stops an animation on the given object.

```lua  title='Definitions'
function cAnimate(Handle: number, Action: "start", AnimationName: string)
function cAnimate(Handle: number, Action: "stop")
```


```lua title='Example'
cAnimate(player, "start", "ActionProduct")
cAnimate(player, "stop")
```

<hr></hr>

### cAnimateForcedly

Starts or stops an animation on the given object, forcing the animation state.

```lua  title='Definitions'
function cAnimateForcedly(Handle: number, Action: "start", AnimationName: string)
function cAnimateForcedly(Handle: number, Action: "stop")
```


```lua title='Example'
cAnimateForcedly(player, "start", "ActionProduct")
cAnimateForcedly(player, "stop")
```

<hr></hr>

### cAssertLog

Writes a message to the server log.

```lua  title='Definitions'
function cAssertLog(Message: string)
```


```lua title='Example'
cAssertLog("Hello World!")
```

<hr></hr>

### cCameraMove

Set camera for all objects on map.

```lua  title='Definitions'
function cCameraMove(MapInx: string, X: number, Y: number, AngleX: number, AngleY: number, Distance: number, MoveType: CAMERA_STATE)
```


```lua title='Example'
cCameraMove(Var["MapIndex"], 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
```

<hr></hr>

### cCameraMove_Obj

Set camera for a specific object.

```lua  title='Definitions'
function cCameraMove_Obj(Handle: number, X: number, Y: number, AngleX: number, AngleY: number, Distance: number, MoveType: CAMERA_STATE)
```


```lua title='Example'
cCameraMove_Obj(player, 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
```

<hr></hr>

### cCastingBar

Renders a casting bar when a player interacts with an NPC.
The casting bar is rendered for the duration of the CastTime.
The AnimationName is the name of the animation that is played while the casting bar is rendered.

```lua  title='Definitions'
function cCastingBar(PlayerHandle: number, NPCHandle: number, CastTime: number, AnimationName: string)
```


```lua title='Example'
cCastingBar(player, npc, 4000, "ActionProduct")
```

<hr></hr>

### cCharTitleAddValue
```lua  title='Definitions'
function cCharTitleAddValue()
```


<hr></hr>

### cClassChangeOpen

Opens the class change window for the given player.

```lua  title='Definitions'
function cClassChangeOpen(PlayerHandle: number)
```


```lua title='Example'
cClassChangeOpen(player)
```

<hr></hr>

### cCurSec

Gets current time in seconds.

```lua  title='Definitions'
function cCurSec() -> number
```


```lua title='Example'
local time = cCurSec()
```

<hr></hr>

### cCurrentSecond

Gets current time in seconds.

```lua  title='Definitions'
function cCurrentSecond() -> number
```


```lua title='Example'
local time = cCurrentSecond()
```

<hr></hr>

### cCastTeleport

Teleports object on the same map.
If the _Type_ argument is "SpecificCoord" the _X_ and _Y_ parameters are used as coordinates.
If the _Type_ argument is "AnyWhere" the _X_ and _Y_ parameters are ignored.
Be careful when using on players.
Other objects only get updated when they move.

```lua  title='Definitions'
function cCastTeleport(Handle: number, Type: string, X: number, Y: number) -> boolean|nil
```


```lua title='Example'
cCastTeleport(pPlayer, "SpecificCoord", 5000, 5000)
```

<hr></hr>

### cDamaged

Damages the target object for the given amount of damage.
The source of the damage is the object associated with the _SourceHandle_ parameter.
If the _SourceHandle_ parameter is not given, the damage is considered to be from the environment.

```lua  title='Definitions'
function cDamaged(TargetHandle: number, Damage: number, SourceHandle: number)
```


```lua title='Example'
cDamaged(monster, 1000, player)
```

<hr></hr>

### cDebugLog

Writes a debug message to the server log.

```lua  title='Definitions'
function cDebugLog(Message: string)
```


```lua title='Example'
cDebugLog("Hello World!")
```

<hr></hr>

### cDelDirectionalArrow

Removes the directional arrow above the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cDelDirectionalArrow(Handle: number)
```


```lua title='Example'
cDelDirectionalArrow(player)
```

<hr></hr>

### cDePolymorph

Depolymorphs the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cDePolymorph(Handle: number)
```


```lua title='Example'
cDePolymorph(player)
```

<hr></hr>

### cDePolymorph_Area

Depolymorphs all objects in the given area.
The area is defined in the _.aid_ file of the map.

```lua  title='Definitions'
function cDePolymorph_Area(MapIndex: number, Area: string)
```


```lua title='Example'
cDePolymorph_Area(Var["MapIndex"], "AreaName")
```

<hr></hr>

### cDirectionalArrow

Renders an arrow above the object associated with the _Handle_ parameter pointing to the given coordinates.

```lua  title='Definitions'
function cDirectionalArrow(Handle: number, X: number, Y: number)
```


```lua title='Example'
cDirectionalArrow(player, 5000, 5000)
```

<hr></hr>

### cDistanceSquar

Returns the distance between two objects 
Returns the distance between two coordinates.
The distance is squared. Use the `math.sqrt` function to get the actual distance.

```lua  title='Definitions'
function cDistanceSquar(Handle: number, TargetHandle: number) -> number|nil
function cDistanceSquar(SourceX: number, SourceY: number, TargetX: number, TargetY: number) -> number|nil
```


```lua title='Example'
local d1 = cDistanceSquar(player, monster)
local d2 = cDistanceSquar(5000, 5000, 6000, 6000)
```

<hr></hr>

### cDoorAction

Open or close door. Valid values are "close" or "open".

```lua  title='Definitions'
function cDoorAction(DoorHandle: number, SbiBlockName: string, Action: string) -> boolean|nil
```


```lua title='Example'
cDoorAction(Var["Door1"], "Door1", "close")
```

<hr></hr>

### cDoorBuild

Build a door object.

```lua  title='Definitions'
function cDoorBuild(Field: number, DoorInx: string, X: number, Y: number, D: number, Size: number) -> number|nil
```


```lua title='Example'
local doorHandle = cDoorBuild(Var["MapIndex"], "Barrier02", 5311, 3321, 90, 1000)
```

<hr></hr>

### cDropFilm
```lua  title='Definitions'
function cDropFilm()
```


<hr></hr>

### cDropItem

Drops an item on the ground.
_KillerHandle_ is the object that killed the mob. If the mob was killed by the environment, the _KillerHandle_ parameter should be replaced with `-1`.
_Rate_ is the drop rate and is calculated in millions. For example, a _Rate_ of `1000000` is a 100% drop rate.

```lua  title='Definitions'
function cDropItem(ItemIndex: number, Handle: number, KillerHandle: number, Lot: number, Rate: number) -> number|nil
```


```lua title='Example'
cDropItem(Var["ItemIndex"], Var["MonsterHandle"], player, 1, 1000000)
```

<hr></hr>

### cEffectMsg

Displays an animated message on the screen of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cEffectMsg(Handle: number, EffectMessageType: EFFECT_MSG_TYPE)
```


```lua title='Example'
cEffectMsg(player, EFFECT_MSG_TYPE["EMT_SUCCESS"])
```

<hr></hr>

### cEffectMsg_AllInMap

Displays an animated message on the screen of all objects in the map.

```lua  title='Definitions'
function cEffectMsg_AllInMap(MapIndex: number, EffectMessageType: EFFECT_MSG_TYPE)
```


```lua title='Example'
cEffectMsg_AllInMap(Var["MapIndex"], EFFECT_MSG_TYPE["EMT_SUCCESS"])
```

<hr></hr>

### cEffectRegen_Object

Renders an effect on the object associated with the _Handle_ parameter.
Valid values for _EffectName_ are .nif files in the `ResEffect` folder.

```lua  title='Definitions'
function cEffectRegen_Object(MapIndex: number, EffectName: string, Handle: number, Duration: number, Scale: number)
```


```lua title='Example'
cEffectRegen_Object(MapIndex, "BH_Helga_idle01", player, 1000, 1)
```

<hr></hr>

### cEffectRegen_XY

Renders an effect on the ground at the given coordinates.
Valid values for _EffectName_ are .nif files in the `ResEffect` folder.
Loop is unknown. It seems to be a boolean value.

```lua  title='Definitions'
function cEffectRegen_XY(MapIndex: number, EffectName: string, X: number, Y: number, Direction: number, Duration: number, Scale: number, Loop: number)
```


```lua title='Example'
cEffectRegen_XY(Var["MapIndex"], "BH_Helga_idle01", 5000, 5000, 0, 1000, 1, 1)
```

<hr></hr>

### cEmotion

Plays an emote on the object associated with the _Handle_ parameter.
Valid values for _ActionIndex_ can be found in `ActionViewInfo.shn`.

```lua  title='Definitions'
function cEmotion(Handle: number, ActionIndex: number)
```


```lua title='Example'
cEmotion(player, 1)
```

<hr></hr>

### cEndCinematicText

Stop all cinematic texts from displaying.

```lua  title='Definitions'
function cEndCinematicText(Handle: number)
```


```lua title='Example'
cEndCinematicText(player)
```

<hr></hr>

### cEndOfKingdomQuest

Ends the current kingdom quest.

```lua  title='Definitions'
function cEndOfKingdomQuest(MapIndex: number)
```


```lua title='Example'
cEndOfKingdomQuest(Var["MapIndex"])
```

<hr></hr>

### cExecCheck

Needs to be first call in **every** function.
Tells the server the last function called for error logging.

```lua  title='Definitions'
function cExecCheck(FunctionName: string)
```


```lua title='Example'
function TestFunction()
    cExecCheck("TestFunction")
end
```

<hr></hr>

### cFieldScriptFunc

Set callback function for special events on Map.
    - "MapLogin" -> func( MapIndex, PlyHandle )
    - "MapLogout" -> func( MapIndex, PlyHandle )
    - "ItemUse" -> func( MapIndex, PlyHandle, ItemID )
    - "ObjectDied" -> func( MapIndex, KillerHandle, KilledHandle )
    - "ServantSummon" -> func( MapIndex, ServantHandle, ServantIndex, MasterHandle )
    - "RankingValue" -> func( MapIndex, NPCHandle, PlyHandle, PlyCharNo )
    - "Tutorial" -> func( MapIndex, PlayerHandle, nType, nStep )

```lua  title='Definitions'
function cFieldScriptFunc(Map: string, Type: string, Function: string) -> boolean|nil
```


```lua title='Example'
cFieldScriptFunc(Var["MapIndex"], "RankingValue", "Ranking")
```

<hr></hr>

### cFindNearestMobList

Returns a list of mob handles on the given map.
If `MobIndex` is provided, only mobs with that index are returned.

```lua  title='Definitions'
function cFindNearestMobList(MapIndex: string, MobIndex?: string) -> number[]|nil
```


```lua title='Example'
local mobList = { cFindNearestMobList("Rou") }
local slimes = { cFindNearestMobList("Rou", "Slime") }
```

<hr></hr>

### cFindNearPlayer

Returns the handle of the nearest player to the object associated with the _Handle_ parameter.
The _Classes_ parameter takes a list of class IDs.

```lua  title='Definitions'
function cFindNearPlayer(Handle: number, Radius: number, Classes: number[]) -> number|nil
```


```lua title='Example'
local playerHandle = cFindNearPlayer(Var["MonsterHandle"], 1000, {1,6,11,16,21,26})
```

<hr></hr>

### cFollow

Lets the object associated with the _Handle_ parameter follow the object associated with the _FollowerHandle_ parameter.
The _Gap_ parameter is the distance between the two objects.
The _Distance_ parameter is the distance the object will follow the _FollowerHandle_ object.

```lua  title='Definitions'
function cFollow(FollowerHandle: number, Handle: number, Gap: number, Distance: number)
```


```lua title='Example'
cFollow(Var["MonsterHandle"], player, 100, 1000)
```

<hr></hr>

### cGetAbstate

Gets the strength and remaining time of an Abstate on a Handle.

```lua  title='Definitions'
function cGetAbstate(Handle: number, AbstateInx: string) -> number|nil, number|nil
```


```lua title='Example'
local AbstateStrength, AbstateTime = cGetAbstate(player, "StaImmortal")
```

<hr></hr>

### cGetAdminLevel

Returns the admin level of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetAdminLevel(Handle: number) -> number|nil
```


```lua title='Example'
local adminLevel = cGetAdminLevel(player)
```

<hr></hr>

### cGetAreaObject

Checks if the object associated with the _Handle_ parameter is inside an area.
The _AreaIndex_ parameter is the index of the area. It is defined in the _.aid_ file of the map.

```lua  title='Definitions'
function cGetAreaObject(MapIndex: number, AreaIndex: string, Handle: number) -> boolean|nil
```


```lua title='Example'
local isInArea = cGetAreaObject(Var["MapIndex"], "AdlF_Zone02_3", player)
```

<hr></hr>

### cGetAreaObjectList

Returns a list of objects in the area associated with the _AreaIndex_ parameter.
The _ObjectType_ parameter is the type of object to return.

```lua  title='Definitions'
function cGetAreaObjectList(MapIndex: number, AreaIndex: string, ObjectType: ObjectType) -> number[]|nil
```


```lua title='Example'
local objectList = { cGetAreaObjectList(Var["MapIndex"], "AdlF_Zone02_3", ObjectType["Player"]) }
```

<hr></hr>

### cGetAroundCoord

Returns a random coordinate within the radius of the object associated with the _Handle_ parameter.
The _Direction_ parameter is the direction the object is facing.

```lua  title='Definitions'
function cGetAroundCoord(Handle: number, Direction: number, Radius: number) -> number|nil, number|nil
```


```lua title='Example'
local x, y = cGetAroundCoord(player, 0, 1000)
```

<hr></hr>

### cGetBaseClass

Returns the base class of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetBaseClass(Handle: number) -> number|nil
```


```lua title='Example'
local baseClass = cGetBaseClass(player)
```

<hr></hr>

### cGetCharNo

Returns the character number of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetCharNo(Handle: number) -> number|nil
```


```lua title='Example'
local charNo = cGetCharNo(player)
```

<hr></hr>

### cGetCoord_Circle

Returns a random coordinate within a radius in a circle.
The _X_ and _Y_ parameters are the center of the circle.

```lua  title='Definitions'
function cGetCoord_Circle(X: number, Y: number, Radius: number) -> number|nil, number|nil
```


```lua title='Example'
local x, y = cGetCoord_Circle(0, 0, 1000)
```

<hr></hr>

### cGetCurMapIndex

Gets the Map Index of a player.

```lua  title='Definitions'
function cGetCurMapIndex(Handle: number) -> string
```


```lua title='Example'
local mapName = cGetCurMapIndex(playerHandle)
```

<hr></hr>

### cGetCurrentSkillInfo

Returns the skill information, the object associated with the _Handle_ parameter is currently using.
This includes the skill index and the end time of the skill.

```lua  title='Definitions'
function cGetCurrentSkillInfo(Handle: number) -> string|nil, number|nil
```


```lua title='Example'
local skillIndex, endTime = cGetCurrentSkillInfo(player)
```

<hr></hr>

### cGetDirect

Returns the current facing direction of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetDirect(Handle: number) -> number|nil
```


```lua title='Example'
local direction = cGetDirect(player)
```

<hr></hr>

### cGetItemIndex

Returns the InxName related to the _ItemNumber_ parameter.

```lua  title='Definitions'
function cGetItemIndex(ItemNumber: number) -> string|nil
```


```lua title='Example'
local itemInx = cGetItemIndex(1)
```

<hr></hr>

### cGetItemLot

Returns the amount of an item in a specified player's inventory.

```lua  title='Definitions'
function cGetItemLot(Player: number, ItemINX: string) -> number|nil, boolean|nil
```


```lua title='Example'
local lot, isBlocked = cGetItemLot(playerHandle, 1)
```

<hr></hr>

### cGetKQLimitSecond

Returns the second limit of the Kingdom Quest associated with the _MapIndex_ parameter.

```lua  title='Definitions'
function cGetKQLimitSecond(MapIndex: number) -> number|nil
```


```lua title='Example'
local secondLimit = cGetKQLimitSecond(Var["MapIndex"])
```

<hr></hr>

### cGetKQTeamType

Returns the team type of the object associated with the _Handle_ parameter.
This function is used for the Football or Water Ball Kingdom Quests.

```lua  title='Definitions'
function cGetKQTeamType(Handle: number) -> number|nil
```


```lua title='Example'
local teamType = cGetKQTeamType(player)
```

<hr></hr>

### cGetLevel

Returns the players level.

```lua  title='Definitions'
function cGetLevel(Player: number) -> number
```


```lua title='Example'
local playerLevel = cGetLevel(player)
```

<hr></hr>

### cGetMapName

Returns the map name of the map associated with the _MapIndex_ parameter.

```lua  title='Definitions'
function cGetMapName(MapIndex: number) -> string|nil
```


```lua title='Example'
local mapName = cGetMapName(Var["MapIndex"])
```

<hr></hr>

### cGetMobID

Returns the ID of the mob associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetMobID(Handle: number) -> number|nil
```


```lua title='Example'
local mobID = cGetMobID(mobHandle)
```

<hr></hr>

### cGetMoveState

Returns the move state, the move state time and the move state set time of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetMoveState(Handle: number) -> number|nil, number|nil, number|nil
```


```lua title='Example'
local moveState, moveStateTime, moveStateSetTime = cGetMoveState(player)
```

<hr></hr>

### cGetNearestObjByCoord

Returns the handle of the closest matching object to the given coordinates on the map associated with the _MapIndex_ parameter.
Use `Method = "so_mobile_GetIdxName"` with a mob index string to search by mob index.
Use `Method = "so_ObjectType"` with an `ObjectType` value to search by object type.

```lua  title='Definitions'
function cGetNearestObjByCoord(MapIndex: string, X: number, Y: number, Radius: number, MobIndex: string, Method: "so_mobile_GetIdxName") -> number|nil
function cGetNearestObjByCoord(MapIndex: string, X: number, Y: number, Radius: number, ObjectType: ObjectType, Method: "so_ObjectType") -> number|nil
```


```lua title='Example'
local mobHandle = cGetNearestObjByCoord("Rou", 5000, 5000, 1000, "Slime", "so_mobile_GetIdxName")
local playerHandle = cGetNearestObjByCoord("Rou", 5000, 5000, 1000, ObjectType.Player, "so_ObjectType")
```

<hr></hr>

### cGetNearObjListByCoord

Returns a sorted list of object handles around the given coordinates.
Results are ordered by nearest first.
Use `SearchType = "so_ObjectType"` with an `ObjectType` value to search by object type.
Use `SearchType = "so_mobile_GetIdxName"` with a mob index string to search by mob index.
If `MaxObjects` is `0`, all matching objects are returned.

```lua  title='Definitions'
function cGetNearObjListByCoord(MapInx: string, X: number, Y: number, Range: number, ObjectType: ObjectType, SearchType: "so_ObjectType", MaxObjects: number) -> number[]|nil
function cGetNearObjListByCoord(MapInx: string, X: number, Y: number, Range: number, MobIndex: string, SearchType: "so_mobile_GetIdxName", MaxObjects: number) -> number[]|nil
```


```lua title='Example'
local players = { cGetNearObjListByCoord("Rou", 5000, 5000, 1000, ObjectType.Player, "so_ObjectType", 5) }
local slimes = { cGetNearObjListByCoord("Rou", 5000, 5000, 1000, "Slime", "so_mobile_GetIdxName", 10) }
```

<hr></hr>

### cGetNPCHandle

Returns the handle of an npc associated with the _MapIndex_ and _MobIndex_ parameters.

```lua  title='Definitions'
function cGetNPCHandle(MapIndex: number, MobIndex: string) -> number|nil
```


```lua title='Example'
local npcHandle = cGetNPCHandle(Var["MapIndex"], "RouItemMctPey")
```

<hr></hr>

### cGetObjectMode

Returns the current mode of the object associated with the _Handle_ parameter.
See [ObjectMode](#objectmode) for a list of possible modes.

```lua  title='Definitions'
function cGetObjectMode(Handle: number) -> ObjectMode|nil
```


```lua title='Example'
local objectMode = cGetObjectMode(player)
```

<hr></hr>

### cGetPlayerList

Get a list of all players on a map.

```lua  title='Definitions'
function cGetPlayerList(MapHandle: string) -> number
```


```lua title='Example'
local playerlist = { cGetPlayerList(Var["MapIndex"]) }
```

<hr></hr>

### cGetPlayerName

Returns the name of a player.

```lua  title='Definitions'
function cGetPlayerName(Player: number) -> string
```


```lua title='Example'
local playerName = cGetPlayerName(playerHandle)
```

<hr></hr>

### cGetRegistNumber

Returns the registNumber of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetRegistNumber(Handle: number) -> number|nil
```


```lua title='Example'
local registNumber = cGetRegistNumber(player)
```

<hr></hr>

### cGetRunSpeed

Returns the run speed of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetRunSpeed(Handle: number) -> number|nil
```


```lua title='Example'
local runSpeed = cGetRunSpeed(player)
```

<hr></hr>

### cGetScriptString

Returns the string of a script file.<br/>
The _ScriptFile_ parameter is the name of the script file.
The _TitleKey_ parameter is the key that will be read.
The _Values_ parameter can be as many STRING parameters as needed.

```lua  title='Definitions'
function cGetScriptString(ScriptFile: string, TitleKey: string, Values: string) -> string|nil
```


```lua title='Example'
local string = cGetScriptString("MenuString", "LinkTitle", "Some string")
```

<hr></hr>

### cGetTargetList

Returns a list of targets in a circle around the given _Handle_ specified through X Y and Radius.

```lua  title='Definitions'
function cGetTargetList(Handle: number, X: number, Y: number, Radius: number) -> table
```


```lua title='Example'
local targetList = { cGetTargetList(Var["MobIndex"], 5000, 5000, 150) }
```

<hr></hr>

### cGetWalkSpeed

Returns the walk speed of the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetWalkSpeed(Handle: number) -> number|nil
```


```lua title='Example'
local walkSpeed = cGetWalkSpeed(player)
```

<hr></hr>

### cGetWhoKillMe

Returns the handle of the object that killed the object associated with the _Handle_ parameter.

```lua  title='Definitions'
function cGetWhoKillMe(Handle: number) -> number|nil
```


```lua title='Example'
local killerHandle = cGetWhoKillMe(player)
```

<hr></hr>

### cGroupRegen

Spawns a group from a mob regen.

```lua  title='Definitions'
function cGroupRegen(MobRegen: string, RegenIndex: string) -> boolean|nil
```


```lua title='Example'
cGroupRegen("BH_Helga", "BH_HelgaBox")
```

<hr></hr>

### cGroupRegenInstance

Activates Regen for an Instance.

```lua  title='Definitions'
function cGroupRegenInstance(MapINX: string, RegenINX: string) -> boolean|nil
```


```lua title='Example'
cGroupRegenInstance("AdlF", "AdlF_01_SP01")
```

<hr></hr>

### cGroupRegenInstance_XY

Activates Regen for an Instance at position X Y.

```lua  title='Definitions'
function cGroupRegenInstance_XY(MapIndex: string, RegenIndex: string, X: number, Y: number) -> boolean|nil
```


```lua title='Example'
cGroupRegenInstance_XY("AdlF", "AdlF_01_SP01", 5000, 5000)
```

<hr></hr>

### cHeal

Heals the object associated with the _Handle_ parameter by the _Amount_ parameter.

```lua  title='Definitions'
function cHeal(Handle: number, Amount: number)
```


```lua title='Example'
cHeal(player, 100)
```

<hr></hr>

### cHideOtherPlayer
```lua  title='Definitions'
function cHideOtherPlayer()
```


<hr></hr>

### cIndunRankResult

Show damage ranking.

```lua  title='Definitions'
function cIndunRankResult(MapInx: string, Time: number, PlyList: PlayerList)
```


```lua title='Example'
cIndunRankResult(Field, 100, PlyList)
```

<hr></hr>

### cInvenItemDestroy

Destroys the specified amount of an item in the
players inventory.

```lua  title='Definitions'
function cInvenItemDestroy(Player: number, ItemINX: string, Amount: number) -> boolean|nil
```


```lua title='Example'
cInvenItemDestroy(playerHandle, 1, 1)
```

<hr></hr>

### cIsEquipItem

Returns wether the player has the specified item equipped.

```lua  title='Definitions'
function cIsEquipItem(Handle: number, ItemIndex: string) -> number|nil
```


```lua title='Example'
local isEquipped = cIsEquipItem(player, "LeatherBoots")
```

<hr></hr>

### cIsInArea

Returns wether an object is in a specified area.
The _AreaIndex_ parameter is the index of the area. It is defined in the _.aid_ file of the map.

```lua  title='Definitions'
function cIsInArea(Handle: number, MapIndex: string, AreaIndex: string) -> boolean|nil
```


```lua title='Example'
local isInArea = cIsInArea(player, "Rou", "Area1")
```

<hr></hr>

### cIsInMap

Returns wether and object is in a specified map.

```lua  title='Definitions'
function cIsInMap(Handle: number, MapIndex: string) -> boolean|nil
```


```lua title='Example'
local isInMap = cIsInMap(player, "Rou")
```

<hr></hr>

### cIsKQJoiner

Returns wether the object associated with the _Handle_ parameter has joined the KQ.

```lua  title='Definitions'
function cIsKQJoiner(Handle: number) -> boolean|nil
```


```lua title='Example'
local isKQJoiner = cIsKQJoiner(player)
```

<hr></hr>

### cIsMovable

Returns wether the object associated with the _Handle_ parameter is able to move or not.

```lua  title='Definitions'
function cIsMovable(Handle: number) -> boolean|nil
```


```lua title='Example'
local isMovable = cIsMovable(player)
```

<hr></hr>

### cIsObjectAlreadyDead

Returns wether the object associated with the _Handle_ parameter is already dead.

```lua  title='Definitions'
function cIsObjectAlreadyDead(Handle: number) -> boolean|nil
```


```lua title='Example'
local isDead = cIsObjectAlreadyDead(player)
```

<hr></hr>

### cIsObjectDead

Checks if Object is dead.

```lua  title='Definitions'
function cIsObjectDead(Handle: number) -> boolean
```


```lua title='Example'
cIsObjectDead(player)
```

<hr></hr>

### cItemErase
```lua  title='Definitions'
function cItemErase()
```


<hr></hr>

### cKillObject

Kills a mob instantly.
If 'Player' is provided, the kill is credited to that player

```lua  title='Definitions'
function cKillObject(Mob: number)
function cKillObject(Mob: number, Player: number)
```


```lua title='Example'
cKillObject(mobHandle)
cKillObject(mobHandle, playerHandle)
```

<hr></hr>

### cKQRewardIndex

Rewards the player with the kq reward specified by the _RewardIndex_ parameter.

```lua  title='Definitions'
function cKQRewardIndex(Handle: number, RewardIndex: string)
```


```lua title='Example'
cKQRewardIndex(player, "Reward1")
```

<hr></hr>

### cLevelUp

Levels the player up by 1 level.

```lua  title='Definitions'
function cLevelUp(Handle: number)
```


```lua title='Example'
cLevelUp(player)
```

<hr></hr>

### cLinkTo

Teleports player to given location.

```lua  title='Definitions'
function cLinkTo(Player: number, MapINX: string, X: number, Y: number) -> boolean|nil
```


```lua title='Example'
cLinkTo(player, "Rou", 5000, 5000)
```

<hr></hr>

### cLinkToAll

Teleports all player on the map to given location.

```lua  title='Definitions'
function cLinkToAll(MapIndex: string, DestinationMap: string, DestinationX: number, DestinationY: number)
```


```lua title='Example'
cLinkToAll("Rou", "Eld", 5000, 5000)
```

<hr></hr>

### cMapFog

Changes the fog level and sight distance of a map.

```lua  title='Definitions'
function cMapFog(MapIndex: string, FogValue: number, SightDistance: number)
```


```lua title='Example'
cMapFog("Rou", 0, 1000)
```

<hr></hr>

### cMapMark

Adds a marker to the map.
The _MarkData_ parameter is a table that contains the data for the marker.
The table needed for the _MarkData_ parameter is shown in the example below.

```lua  title='Definitions'
function cMapMark(MapIndex: string, MarkData: table)
```


```lua title='Example'
cMapMark(player:getMap(), {[100] = {Group = 100, x = 7216, y = 16314, KeepTime = 99999999, IconIndex = 'LinkTown'}})
```

<hr></hr>

### cMapMark_Obj

Does the same as [cMapMark](#cMapMark) but for objects.

```lua  title='Definitions'
function cMapMark_Obj(Handle: number, MarkData: table)
```


```lua title='Example'
cMapMark_Obj(player, {[100] = {Group = 100, x = 7216, y = 16314, KeepTime = 99999999, IconIndex = 'LinkTown'}})
```

<hr></hr>

### cMessage

Shows a message to the player.<br/>
**NOTE:** This function seems to be deprecated. See [cScriptMessage_Obj](#cScriptMessage_Obj) instead.

```lua  title='Definitions'
function cMessage(Handle: number, ScriptMsg: string)
```


```lua title='Example'
cMessage(player, "BH_Helga_Buff")
```

<hr></hr>

### cMobChat

Lets a mob send a chat message from a script file.

```lua  title='Definitions'
function cMobChat(Handle: number, ScriptFile: string, Index: string)
```


```lua title='Example'
cMobChat(mobHandle, "WarBL", "Mob_01")
```

<hr></hr>

### cMobDetectRange

Changes the mob detection range of a mob.

```lua  title='Definitions'
function cMobDetectRange(Handle: number, Range: number)
```


```lua title='Example'
cMobDetectRange(mobHandle, 1000)
```

<hr></hr>

### cMobDialog

Shows an NPC dialog with facecut to all players in the map.

```lua  title='Definitions'
function cMobDialog(MapIndex: string, FaceCut: string, ScriptFile: string, Index: string)
```


```lua title='Example'
cMobDialog("Rou", "AdlLoussier", "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobDialog_FileName

This function seems to be deprecated or a duplicate. See [cMobDialog](#cMobDialog) instead.

```lua  title='Definitions'
function cMobDialog_FileName(MapIndex: string, FaceCut: string, ScriptFile: string, Index: string)
```


```lua title='Example'
cMobDialog_FileName("Rou", "AdlLoussier", "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobDialog_Obj

Shows an NPC dialog with facecut to a specific player.

```lua  title='Definitions'
function cMobDialog_Obj(Handle: number, FaceCut: string, ScriptFile: string, Index: string)
```


```lua title='Example'
cMobDialog_Obj(player, "AdlLoussier", "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobDialog_Range

Shows an NPC dialog with facecut to all players within a certain range of the mob associated with the _Handle_ parameter.

```lua  title='Definitions'
function cMobDialog_Range(Handle: number, FaceCut: string, Range: number, ScriptFile: string, Index: string)
```


```lua title='Example'
cMobDialog_Range(mobHandle, "AdlLoussier", 1000, "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobIDFind

Returns the id of a mob by its index.

```lua  title='Definitions'
function cMobIDFind(MobIndex: string) -> number|nil
```


```lua title='Example'
local mobID = cMobIDFind("Slime")
```

<hr></hr>

### cMobRegen_Circle

Spawns a mob at a random position in a circle specified through X Y and Radius.

```lua  title='Definitions'
function cMobRegen_Circle(MapIndex: string, MobIndex: string, X: number, Y: number, Radius: number) -> number|nil
```


```lua title='Example'
local mobNumber = cMobRegen_Circle("Rou", "Slime", 5000, 5000, 100)
```

<hr></hr>

### cMobRegen_Obj

Spawns a mob near another object specified through the _Handle_ parameter.

```lua  title='Definitions'
function cMobRegen_Obj(MobIndex: string, Handle: number) -> number|nil
```


```lua title='Example'
local mobHandle = cMobRegen_Obj(mobHandle, player)
```

<hr></hr>

### cMobRegen_Rectangle

Spawns a mob at a random position in a rectangle specified through X Y, Width, Height and Rotation.

```lua  title='Definitions'
function cMobRegen_Rectangle(MapIndex: string, MobIndex: string, X: number, Y: number, Width: number, Height: number, Rotation: number) -> number|nil
```


```lua title='Example'
local mobNumber = cMobRegen_Rectangle("Rou", "Slime", 5000, 5000, 100, 100, 0)
```

<hr></hr>

### cMobRegen_XY

Spawns a mob at a specific position specified through X Y and Rotation.

```lua  title='Definitions'
function cMobRegen_XY(MapIndex: string, MobIndex: string, X: number, Y: number, Rotation: number) -> number|nil
```


```lua title='Example'
local mobHandle = cMobRegen_XY("Rou", "Slime", 5000, 5000, 0)
```

<hr></hr>

### cMobShout

Lets a mob send a shout message from a script file.

```lua  title='Definitions'
function cMobShout(MobHandle: number, ScriptFile: string, ScriptIndex: string)
```


```lua title='Example'
cMobShout(mobHandle, "WarBL", "Mob_01")
```

<hr></hr>

### cMobSuicide

Kills a mob.<br/>
**NOTE:** If the _Handle_ parameter is not provided, all mobs on the map are killed.

```lua  title='Definitions'
function cMobSuicide(MapIndex: string, Handle: number)
```


```lua title='Example'
cMobSuicide(Var["MapIndex"], mobHandle)
```

<hr></hr>

### cMoveStop

Lets an NPC stop moving.

```lua  title='Definitions'
function cMoveStop(Handle: number)
```


```lua title='Example'
cMoveStop(mobHandle)
```

<hr></hr>

### cNearObjectList

Returns a list of objects near a specific object specified through the _Handle_ parameter.

```lua  title='Definitions'
function cNearObjectList(Handle: number, Radius: number, ObjectType: ObjectType) -> number[]|nil
```


```lua title='Example'
local objectList = { cNearObjectList(mobHandle, 1000, ObjectType["PLAYER"]) }
```

<hr></hr>

### cNotice

Sends a notice message to all players within a map.

```lua  title='Definitions'
function cNotice(MapIndex: string, ScriptFile: string, ScriptIndex: string)
```


```lua title='Example'
cNotice("Rou", "WarBL", "Mob_01")
```

<hr></hr>

### cNotice_Obj

Sends a notice message to a specific player.

```lua  title='Definitions'
function cNotice_Obj(Handle: number, ScriptFile: string, ScriptIndex: string)
```


```lua title='Example'
cNotice_Obj(player, "WarBL", "Mob_01")
```

<hr></hr>

### cNoticeRedWarningCode

Sends a red warning message to all players within a map.<br/>
**NOTE:** This function seems to be broken.

```lua  title='Definitions'
function cNoticeRedWarningCode(MapIndex: string, Code: string)
```


```lua title='Example'
cNoticeRedWarning("Rou", "Started")
```

<hr></hr>

### cNoticeString

Sends notices on map.

```lua  title='Definitions'
function cNoticeString(MapINX: string, Notice: string)
```


```lua title='Example'
local lot = cNoticeString("Rou", "Map wide notice")
```

<hr></hr>

### cNPCChat

Lets an NPC show a dialog above their head with a specific message from `ScriptMsg.shn`.
Also sends a message in the chat window.

```lua  title='Definitions'
function cNPCChat(Handle: number, ScriptMsg: string)
```


```lua title='Example'
cNPCChat(mobHandle, "BH_Helga_Alert")
```

<hr></hr>

### cNPCChatTest

Lets an NPC show a dialog above their head with a specific message.

```lua  title='Definitions'
function cNPCChatTest(Handle: number, Message: string)
```


```lua title='Example'
cNPCChatTest(mobHandle, "Hello World!")
```

<hr></hr>

### cNPCMenuOpen

Opens the dialogue menu of an NPC to the selected player.

```lua  title='Definitions'
function cNPCMenuOpen(NpcHandle: number, Player: number) -> boolean|nil
```


```lua title='Example'
cNPCMenuOpen(npcHandle, PlayerHandle)
```

<hr></hr>

### cNPCRegen

Spawns an npc from the `NPC.txt` into the map.
This function is used to spawn real interactable NPCs in an instance or kingdom quest.

```lua  title='Definitions'
function cNPCRegen(MapIndex: string, NPCIndex: string) -> number|nil
```


```lua title='Example'
cNPCRegen("KDCake", "XiaomingR_7th")
```

<hr></hr>

### cNPCSkillUse

Lets a mob use a skill.

```lua  title='Definitions'
function cNPCSkillUse(Handle: number, Handle2: number, SkillIndex: string)
```


```lua title='Example'
cNPCSkillUse(mobHandle, mobHandle, "BH_Humar_Skill_N_APU")
```

<hr></hr>

### cNPCVanish

Vanishes NPC associated with the Handle.

```lua  title='Definitions'
function cNPCVanish(NpcHandle: number)
```


```lua title='Example'
cNPCVanish(npcHandle)
```

<hr></hr>

### cObjectCount

Gets the amount of the specificed Object Type.

```lua  title='Definitions'
function cObjectCount(MapINX: string, ObjectType: number) -> number
```


```lua title='Example'
local mobNumber = cObjectCount("Rou", ObjectType.Mob)
```

<hr></hr>

### cObjectFind

Returns the first matching object within a radius of a handle.
Use `Method = "so_ObjectType"` with an `ObjectType` value.
Use `Method = "so_mobile_GetIdxName"` with a mob index string.

```lua  title='Definitions'
function cObjectFind(Handle: number, Radius: number, ObjectType: ObjectType, Method: "so_ObjectType") -> number|nil
function cObjectFind(Handle: number, Radius: number, MobIndex: string, Method: "so_mobile_GetIdxName") -> number|nil
```


```lua title='Example'
local playerObj = cObjectFind(mobHandle, 1000, ObjectType.Player, "so_ObjectType")
local helgaObj = cObjectFind(mobHandle, 1000, "BH_Helga", "so_mobile_GetIdxName")
```

<hr></hr>

### cObjectHP

Returns the current HP and Max HP of an object.

```lua  title='Definitions'
function cObjectHP(Handle: number) -> number, number
```


```lua title='Example'
local CurHP, MaxHP = cObjectHP(mob)
```

<hr></hr>

### cObjectLocate

Returns the X and Y of the Handle.

```lua  title='Definitions'
function cObjectLocate(Handle: number) -> number|nil, number|nil
```


```lua title='Example'
local playerX, playerY = cObjectLocate(player)
```

<hr></hr>

### cObjectLocateDirection

Returns the X, Y and Direction of the Handle.

```lua  title='Definitions'
function cObjectLocateDirection(Handle: number) -> number|nil, number|nil, number|nil
```


```lua title='Example'
local playerX, playerY, playerDir = cObjectLocateDirection(player)
```

<hr></hr>

### cObjectSound

Plays a sound to all objects within the objects radius associated with the _Handle_ parameter.

```lua  title='Definitions'
function cObjectSound(Handle: number, SoundFile: string)
```


```lua title='Example'
cObjectSound(mobHandle, "interface/SFX_Critical01")
```

<hr></hr>

### cObjectType

Get ObjectType of the given handle.

```lua  title='Definitions'
function cObjectType(Handle: number) -> ObjectType|nil
```


```lua title='Example'
if cObjectType(Handle) == ObjectType.Player then
end
```

<hr></hr>

### cPartyJoin

Joins to player to a party.

```lua  title='Definitions'
function cPartyJoin(PlayerHandle01: number, PlayerHandle02: number)
```


```lua title='Example'
cPartyJoin(player, player2)
```

<hr></hr>

### cPartyLeave

Removes a player from his party.

```lua  title='Definitions'
function cPartyLeave(PlayerHandle: number)
```


```lua title='Example'
cPartyLeave(player)
```

<hr></hr>

### cPermileRate

Calculates a chance and returns success or failure.<br/>
The example below will return true 50% of the time.

```lua  title='Definitions'
function cPermileRate(Rate: number) -> boolean
```


```lua title='Example'
if cPermileRate(500) then
end
```

<hr></hr>

### cPlayerExist

Checks if a player still exists.

```lua  title='Definitions'
function cPlayerExist(PlayerHandle: number) -> boolean|nil
```


```lua title='Example'
local playerExists = cPlayerExist(player)
```

<hr></hr>

### cPlaySound

Plays a sound to a specific player.

```lua  title='Definitions'
function cPlaySound(Handle: number, SoundFile: string)
```


```lua title='Example'
cPlaySound(player, "interface/SFX_Critical01")
```

<hr></hr>

### cProgressTutorial
```lua  title='Definitions'
function cProgressTutorial()
```


<hr></hr>

### cQuestMobKill

Credits a single mob kill to the quest specified through the _QuestID_ parameter.

```lua  title='Definitions'
function cQuestMobKill(Handle: number, QuestID: number, MobIndex: string)
```


```lua title='Example'
cQuestMobKill(player, 50, "BlackBear")
```

<hr></hr>

### cQuestMobKill_AllInMap

Credits a single mob kill to every player on the map for the quest specified through the _QuestID_ parameter.
Max kills is the maximum amount of kills that can be credited to the quest.

```lua  title='Definitions'
function cQuestMobKill_AllInMap(MapIndex: string, QuestID: number, MobIndex: string, MaxKills: number)
```


```lua title='Example'
cQuestMobKill_AllInMap("Rou", 50, "BlackBear", 5)
```

<hr></hr>

### cQuestResult

Shows either a success or failure message to all players on the map.
This is only used in Kingdom quests and can be replaced with [cEffectMsg_AllInMap](#cEffectMsg_AllInMap).
The _Result_ parameter can be either "Success" or "Fail".

```lua  title='Definitions'
function cQuestResult(MapIndex: string, Result: string)
```


```lua title='Example'
cQuestResult(Var["MapIndex"], "Success")
```

<hr></hr>

### cQuestResult_Individual

Shows either a success or failure message to the player specified through the _Handle_ parameter.
See [cQuestResult](#cQuestResult) for more information on the possible results.

```lua  title='Definitions'
function cQuestResult_Individual(Handle: number, Result: string)
```


```lua title='Example'
cQuestResult_Individual(player, "Success")
```

<hr></hr>

### cRandom

This function is deprecated and can be replaced with [cRandomInt](#cRandomInt).

```lua  title='Definitions'
function cRandom(LowerLimit: number, UpperLimit: number) -> number
```


```lua title='Example'
local random = cRandom(1, 10)
```

<hr></hr>

### cRandomInt

Generates a random number between two values.

```lua  title='Definitions'
function cRandomInt(LowerLimit: number, UpperLimit: number) -> number
```


```lua title='Example'
local random = cRandomInt(1, 10)
```

<hr></hr>

### cResetAbstate

Reset abstate on object.

```lua  title='Definitions'
function cResetAbstate(Handle: number, Abstate: string) -> boolean|nil
```


```lua title='Example'
cResetAbstate(MobHandle, "StaImmortal")
```

<hr></hr>

### cRevivalAll

Revives all players on the map.

```lua  title='Definitions'
function cRevivalAll(MapIndex: string)
```


```lua title='Example'
cRevivalAll("Rou")
```

<hr></hr>

### cReward

Rewards all players some type of reward.<br/>
**NOTE:** This function is only used to credit Kingdom Quest rewards.
The _Type_ parameter can only be "KQ".

```lua  title='Definitions'
function cReward(MapIndex: string, Type: string)
```


```lua title='Example'
cReward("Rou", "KQ")
```

<hr></hr>

### cRewardItem

Rewards a player a specific item to the gift inventory.

```lua  title='Definitions'
function cRewardItem(Handle: number, ItemIndex: string, ItemLot: number)
```


```lua title='Example'
cRewardItem(player, "El1", 5)
```

<hr></hr>

### cRewardItem_AllInMap

Rewards an item to all players on the map.

```lua  title='Definitions'
function cRewardItem_AllInMap(MapIndex: string, ItemIndex: string, ItemLot: number)
```


```lua title='Example'
cRewardItem_AllInMap("Rou", "El1", 5)
```

<hr></hr>

### cRewardItem_CharInven

Rewards an item to the player's inventory.

```lua  title='Definitions'
function cRewardItem_CharInven(Handle: number, ItemIndex: string, ItemLot: number)
```


```lua title='Example'
cRewardItem_CharInven(player, "El1", 5)
```

<hr></hr>

### cRunTo

Lets a handle run to a specific position.

```lua  title='Definitions'
function cRunTo(Handle: number, X: number, Y: number)
```


```lua title='Example'
cRunTo(mobHandle, 5000, 5000, 1000)
```

<hr></hr>

### cRunToUntilBlock

Lets a handle run to a specific position until it hits a wall.

```lua  title='Definitions'
function cRunToUntilBlock(Handle: number, X: number, Y: number, Speed: number)
```


```lua title='Example'
cRunToUntilBlock(mobHandle, 5000, 5000, 1000)
```

<hr></hr>

### cScriptMessage

Sends notices on map from ScriptMsg.shn
Refer to printf format strings on how strings
are formatted and how to pass extra paramters

```lua  title='Definitions'
function cScriptMessage(MapINX: string, MsgINX: string, ...: string)
```


```lua title='Example'
-- ScriptMsg - 1 - SM_Msg - "Test: %s"
-- Prints "Test: Success"
cScriptMessage("Rou", 1, "Success")
```

<hr></hr>

### cScriptMessage_Obj

Sends a notice to a player from ScriptMsg.SHN
Refer to printf format strings on how strings
are formatted and how to pass extra paramters

```lua  title='Definitions'
function cScriptMessage_Obj(Player: number, MsgINX: string, ...: string)
```


```lua title='Example'
-- ScriptMsg - 1 - SM_Msg - "Test: %s"
-- Prints "Test: Success"
cScriptMessage_Obj(playerHandle, 1, "Success")
```

<hr></hr>

### cScriptMessage_Range

Send a notice to all players within the range of the handle from ScriptMsg.SHN.
Refer to printf format strings on how strings
are formatted and how to pass extra paramters

```lua  title='Definitions'
function cScriptMessage_Range(Handle: number, Range: number, ScriptMsg: string, ...: string)
```


```lua title='Example'
cScriptMessage_Range(mobHandle, 200, "SM_Msg", "Success")
```

<hr></hr>

### cScriptMsg

This function is deprecated and can be replaced with [cScriptMessage](#cScriptMessage).

```lua  title='Definitions'
function cScriptMsg(MapIndex: string, ChatHandle: number, ScriptMsg: string, ...: string)
```


```lua title='Example'
cScriptMsg("Rou", nil, "SM_Msg", "Success")
```

<hr></hr>

### cScriptMsg_World

Sends a notice across the world from ScriptMsg.shn
Refer to printf format strings on how strings
are formatted and how to pass extra paramters

```lua  title='Definitions'
function cScriptMsg_World(Unk: number, ScriptMsg: string, ...: string)
```


```lua title='Example'
cScriptMsg_World(nil, "SM_Msg", "Success")
```

<hr></hr>

### cServerMenu

Opens up a server menu for a player.
A server menu is a window like the one when entering a gate.
After the title, the function accepts any number of button/function pairs.
Each callback function must be defined in the script and has the following signature:

```lua  title='Definitions'
function cServerMenu(PlayerHandle: number, NPCHandle: number, Title: string, Button1: string, Function1: string, ...: string) -> boolean|nil
function cServerMenu(PlayerHandle: number, NPCHandle: number, Title: string, Button1: string, Function1: string, Button2: string, Function2: string, ...) -> boolean|nil
```


```lua title='Example'
cServerMenu(player, npcHandle, "Do you want to leave?", "Yes", "LeaveDungeon", "No", "EmptyFunction")
cServerMenu(player, npcHandle, "Choose an option", "Shop", "OpenShop", "Buff", "OpenBuffs", "Leave", "EmptyFunction")
```

<hr></hr>

### cSetAbstate

Sets an Abstate on a Handle.

```lua  title='Definitions'
function cSetAbstate(Handle: number, AbstateINX: string, AbstateSTR: number, KeepTime: number) -> boolean|nil
```


```lua title='Example'
cSetAbstate(player, "StaImmortal", 1, 2000000000)
```

<hr></hr>

### cSetAbstate_Range

Set Abstate in range for all objects of a specific type.

```lua  title='Definitions'
function cSetAbstate_Range(Handle: number, Range: number, ObjectType: number, Index: string, Strength: number, KeepTime: number) -> boolean|nil
```


```lua title='Example'
cSetAbstate_Range(MobHandle, 1000, ObjectType.Mob, "StaImmortal", 1, 20000)
```

<hr></hr>

### cSetAbstateInArea

Set Abstate in a pre-defined area.<br/>
_Disclaimer: The areas used here are located in `Shine/AreaBMP`_

```lua  title='Definitions'
function cSetAbstateInArea(MapInx: number, AbstateInx: string, AbstateStrength: number, AbstateKeepTime: number, AreaBMP: string, CenterX: number, CenterY: number)
```


```lua title='Example'
cSetAbstateInArea(MapIndex, "StaBRNWarH", 1, 1000, "WarH_BossRoom", 22255, 12636)
```

<hr></hr>

### cSetAIScript

Sets script on an object associated with the handle.

```lua  title='Definitions'
function cSetAIScript(LuaScriptPath: string, MobHandle: number|nil) -> boolean|nil
```


```lua title='Example'
cSetAIScript("ID/AdlF/AdlF", mobHandle)
```

<hr></hr>

### cSetCanUseReviveItem

Sets wether the revive item can be used on a map.

```lua  title='Definitions'
function cSetCanUseReviveItem(MapIndex: string, CanUse: boolean)
```


```lua title='Example'
cSetCanUseReviveItem("Rou", false)
```

<hr></hr>

### cSetCanUseReviveSkill

Sets wether the revive skill can be used on a map.

```lua  title='Definitions'
function cSetCanUseReviveSkill(MapIndex: string, CanUse: boolean)
```


```lua title='Example'
cSetCanUseReviveSkill("Rou", false)
```

<hr></hr>

### cSetDeadDelayTime

Sets the death delay time for a handle.

```lua  title='Definitions'
function cSetDeadDelayTime(Handle: number, Time: number)
```


```lua title='Example'
cSetDeadDelayTime(mobHandle, 10000)
```

<hr></hr>

### cSetFieldScript

Sets the script for the map.

```lua  title='Definitions'
function cSetFieldScript(Field: string, Script: string) -> boolean|nil
```


```lua title='Example'
cSetFieldScript("Rou", "ID/BH_Karen/BH_Karen_P")
```

<hr></hr>

### cSetFreeBattle

Enables or disables the free battle (PVP) mode on a map.

```lua  title='Definitions'
function cSetFreeBattle(MapIndex: string, Enabled: boolean)
```


```lua title='Example'
cSetFreeBattle("Rou", true)
```

<hr></hr>

### cSetMobAttr

Sets an attribute on a mob.
Possible attributes are:<br/>

```lua  title='Definitions'
function cSetMobAttr(Handle: number, Attribute: string, Value: boolean) -> boolean|nil
```


```lua title='Example'
cSetMobAttr(mobHandle, "MobAggro", true)
```

<hr></hr>

### cSetNPCIsItemDrop

Sets wether an NPC drops items or not. 0 is false, every other number is true

```lua  title='Definitions'
function cSetNPCIsItemDrop(Handle: number, Enabled: number)
```


```lua title='Example'
cSetNPCIsItemDrop(npcHandle, 0)
```

<hr></hr>

### cSetNPCParam

Sets an attribute on an NPC.
Possible attributes are:<br/>

```lua  title='Definitions'
function cSetNPCParam(Handle: number, Attribute: string, Value: number) -> boolean|nil
```


```lua title='Example'
cSetNPCParam(npcHandle, "HP", 1000)
```

<hr></hr>

### cSetNPCResist

Sets the resistance of an NPC.
Resistances are passed as a table. The table must contain the values from the example below.

```lua  title='Definitions'
function cSetNPCResist(Handle: number, ResistanceTable: table)
```


```lua title='Example'
local resistanceTable = { ResDot = 0, ResStun = 0, ResMoveSpeed = 0, ResFear = 0, ResBinding = 0, ResReverse = 0, ResMesmerize = 0, ResSeverBone = 0, ResKnockBack = 0, ResTBMinus = 0 }
cSetNPCResist(npcHandle, resistanceTable)
```

<hr></hr>

### cSetObjectDirect

Sets the direction an object is facing.

```lua  title='Definitions'
function cSetObjectDirect(Handle: number, Direction: number)
```


```lua title='Example'
cSetObjectDirect(mobHandle, 180)
```

<hr></hr>

### cSetReviveDelayTime

Sets the respawn time for a player in seconds.

```lua  title='Definitions'
function cSetReviveDelayTime(MapIndex: string, DelayTime: number)
```


```lua title='Example'
cSetReviveDelayTime(Var["MapIndex"], 10)
```

<hr></hr>

### cSetServantFlag

Sets a flag on a servant. Only Flag `MobCanDamageTo` is known to work.

```lua  title='Definitions'
function cSetServantFlag(Handle: number, Flag: string, Value: number)
```


```lua title='Example'
cSetServantFlag(servantHandle, "MobCanDamageTo", 1)
```

<hr></hr>

### cSetTeamBattle

Sets the team battle mode on a map. Only works in Kingdom Quests.

```lua  title='Definitions'
function cSetTeamBattle(MapIndex: string, Active: boolean)
```


```lua title='Example'
cSetTeamBattle("Rou", true)
```

<hr></hr>

### cShowCinematicText

Shows a cinematic text on the screen.
A letterbox effect is applied to the screen
and the text is displayed in the middle.
Interface elements are hidden.

```lua  title='Definitions'
function cShowCinematicText(Handle: number, Message: string)
```


```lua title='Example'
cShowCinematicText(Var["Handle"], "Hello World!")
```

<hr></hr>

### cShowKQTimerWithLife

Shows the KQ timer on the screen for all players with remaining time and lifes.

```lua  title='Definitions'
function cShowKQTimerWithLife(MapIndex: string, SecondLimit: number)
```


```lua title='Example'
cShowKQTimerWithLife(MapIndex, 600)
```

<hr></hr>

### cShowKQTimerWithLife_Obj

Shows the KQ timer on the screen for a specific player with remaining time and lifes.

```lua  title='Definitions'
function cShowKQTimerWithLife_Obj(Handle: number, SecondLimit: number)
```


```lua title='Example'
cShowKQTimerWithLife_Obj(Handle, 600)
```

<hr></hr>

### cSimpleChatScriptMsg

Shows a chat bubble above the handle with a message from `ScriptMsg.shn`.

```lua  title='Definitions'
function cSimpleChatScriptMsg(Handle: number, ScriptMsg: string)
```


```lua title='Example'
cSimpleChatScriptMsg(mobHandle, "BH_Helga_Alert")
```

<hr></hr>

### cSkillBlast

Lets a handle cast a skill.

```lua  title='Definitions'
function cSkillBlast(Handle: number, Handle2: number, SkillIndex: string)
```


```lua title='Example'
cSkillBlast(mobHandle, mobHandle, "BH_Humar_Skill_N_APU")
```

<hr></hr>

### cStartMsg_AllInMap

Sends a start message to all players on a map.
It counts down from 5 to 1.

```lua  title='Definitions'
function cStartMsg_AllInMap(MapIndex: string)
```


```lua title='Example'
cStartMsg_AllInMap("Rou")
```

<hr></hr>

### cStaticDamage

Sets static damage on a handle.
Meaning the handle will always deal the same amount of damage.

```lua  title='Definitions'
function cStaticDamage(Handle: number, Damage: number)
```


```lua title='Example'
cStaticDamage(mobHandle, 1000)
```

<hr></hr>

### cStaticDamage_smo

Deprecated. Use `cStaticDamage` instead.

```lua  title='Definitions'
function cStaticDamage_smo(Handle: number, Damage: number)
```


```lua title='Example'
cStaticDamage_smo(mobHandle, 1000)
```

<hr></hr>

### cStaticMoverSpeed

Sets static movement speed on mounts for a handle.
Meaning the handle will always move at the same speed with it's mount.

```lua  title='Definitions'
function cStaticMoverSpeed(Handle: number, Speed: number)
```


```lua title='Example'
cStaticMoverSpeed(mobHandle, 1000)
```

<hr></hr>

### cStaticRunSpeed

Sets static movement speed on a handle.
Meaning the handle will always move at the same speed.

```lua  title='Definitions'
function cStaticRunSpeed(Handle: number, Speed: number)
```


```lua title='Example'
cStaticRunSpeed(mobHandle, 1000)
```

<hr></hr>

### cStaticSpeed

Deprecated. Use `cStaticRunSpeed` instead.

```lua  title='Definitions'
function cStaticSpeed(Handle: number, Speed: number)
```


```lua title='Example'
cStaticSpeed(handle, 1000)
```

<hr></hr>

### cStaticWalkSpeed

Sets static walk speed on a handle.

```lua  title='Definitions'
function cStaticWalkSpeed(Handle: number, Speed: number)
```


```lua title='Example'
cStaticWalkSpeed(mobHandle, 1000)
```

<hr></hr>

### cSystemMessage_Obj

This function seems to be broken. At least it doesn't do anything.

```lua  title='Definitions'
function cSystemMessage_Obj(Handle: number, ScriptFile: string, ScriptIndex: string)
```


```lua title='Example'
cSystemMessage_Obj(player, "Event", "E_X_SysMsg_Fail1")
```

<hr></hr>

### cTargetChangeNull

Removes the target of a handle.
TargetHandle is the handle that will lose it's target.
Handle is the handle that will be removed as target.

```lua  title='Definitions'
function cTargetChangeNull(TargetHandle: number, Handle: number)
```


```lua title='Example'
cTargetChangeNull(player, mobHandle)
```

<hr></hr>

### cTargetHandle

Returns the handle of the current target.

```lua  title='Definitions'
function cTargetHandle(Handle: number) -> number|nil
```


```lua title='Example'
local target = cTargetHandle(player)
```

<hr></hr>

### cTimer

Start timer for all player on map that ticks down.
To make the timer disappear call again with Time = 0.

```lua  title='Definitions'
function cTimer(Field: string, Time: number)
```


```lua title='Example'
cTimer(MapIndex, 600)
```

<hr></hr>

### cTimer_Obj

Start timer for a specific player that ticks down.
To make the timer disappear call again with Time = 0.

```lua  title='Definitions'
function cTimer_Obj(Player: number, Delay: number)
```


```lua title='Example'
cTimer_Obj(Handle, 600)
```

<hr></hr>

### cTimerEnd

Ends a timer for a specific player or for all players on a map.
Pass a player handle to end that player's timer, or a map name to end the timer for everyone on the map.

```lua  title='Definitions'
function cTimerEnd(Player: number, Delay: number)
function cTimerEnd(MapIndex: string, Delay: number)
```


```lua title='Example'
cTimerEnd(player, 600)
cTimerEnd("Rou", 600)
```

<hr></hr>

### cTimerStart

Starts timer for a specific player.
This function is deprecated. Use [cTimer_Obj](#cTimer_Obj) instead.

```lua  title='Definitions'
function cTimerStart(Handle: number)
```


```lua title='Example'
cTimerStart(Handle)
```

<hr></hr>

### cUseMoney

Uses money from a player.
Returns true if the player had enough money.

```lua  title='Definitions'
function cUseMoney(PlayerHandle: number, Amount: number) -> boolean|nil
```


```lua title='Example'
local hasEnoughMoney = cUseMoney(player, 1000)
```

<hr></hr>

### cVanishAll

Kills all of a specified MobINX in a Map.

```lua  title='Definitions'
function cVanishAll(Map: string, MobINX: string) -> number|nil
```


```lua title='Example'
cVanishAll("Rou", "Slime")
```

<hr></hr>

### cVanishReserv

Vanishes an NPC.
This function seems to be deprecated. Use [cVanish](#cVanish) instead.

```lua  title='Definitions'
function cVanishReserv(NPCHandle: number, Unk: number)
```


```lua title='Example'
cVanishReserv(mobHandle, 3)
```

<hr></hr>

### cViewEquip

Equips a cosmetic outfit in an invisible slot.

```lua  title='Definitions'
function cViewEquip(Handle: number, ItemIndex: string)
```


```lua title='Example'
cViewEquip(player, "Cos_WesternPink01_1")
```

<hr></hr>

### cViewSlotUnEquipAll

Unequips all cosmetics in an invisible slot.

```lua  title='Definitions'
function cViewSlotUnEquipAll(Handle: number)
```


```lua title='Example'
cViewSlotUnEquipAll(player)
```

<hr></hr>

### cWalkTo

Lets a handle walk to a position with a specific speed.

```lua  title='Definitions'
function cWalkTo(Handle: number, X: number, Y: number, Speed: number)
```


```lua title='Example'
cWalkTo(mobHandle, 100, 100, 1000)
```

<hr></hr>

### cWinter_Event_ScoreBoard_AllInMap

Shows a scoreboard for all players on a map.

```lua  title='Definitions'
function cWinter_Event_ScoreBoard_AllInMap(MapIndex: number, Team01: number, Team02: number)
```


```lua title='Example'
cWinter_Event_ScoreBoard_AllInMap(MapIndex, 0, 0)
```

<hr></hr>

<br></br>

## Undocumented

<hr></hr>

### cPet_IsMasterCalling
```lua  title='Definitions'
function cPet_IsMasterCalling()
```


<hr></hr>

### cPet_GetMind
```lua  title='Definitions'
function cPet_GetMind()
```


<hr></hr>

### cPet_GetStress
```lua  title='Definitions'
function cPet_GetStress()
```


<hr></hr>

### cPet_GetWalkSpeed
```lua  title='Definitions'
function cPet_GetWalkSpeed()
```


<hr></hr>

### cPet_GetRunSpeed
```lua  title='Definitions'
function cPet_GetRunSpeed()
```


<hr></hr>

### cPet_Unsummon
```lua  title='Definitions'
function cPet_Unsummon()
```


<hr></hr>

### cPet_GetActionRecord
```lua  title='Definitions'
function cPet_GetActionRecord()
```


<hr></hr>

### cPet_ChangeMind
```lua  title='Definitions'
function cPet_ChangeMind()
```


<hr></hr>

### cPet_SaveTendency
```lua  title='Definitions'
function cPet_SaveTendency()
```


<hr></hr>

### cEffectTimer
```lua  title='Definitions'
function cEffectTimer()
```


<hr></hr>

### cFindAttackBlockLocate
```lua  title='Definitions'
function cFindAttackBlockLocate()
```


<hr></hr>

### cFreeStatInit
```lua  title='Definitions'
function cFreeStatInit()
```


<hr></hr>

### cGetMaster
```lua  title='Definitions'
function cGetMaster()
```


<hr></hr>

### cGetQuestHero_ItemUse
```lua  title='Definitions'
function cGetQuestHero_ItemUse()
```


<hr></hr>

### cGetQuestHero_NPC
```lua  title='Definitions'
function cGetQuestHero_NPC()
```


<hr></hr>

### cGetTutorialInfo
```lua  title='Definitions'
function cGetTutorialInfo()
```


<hr></hr>

### cIsNoAttacOrNoMove
```lua  title='Definitions'
function cIsNoAttacOrNoMove()
```


<hr></hr>

### cLocationRotate
```lua  title='Definitions'
function cLocationRotate()
```


<hr></hr>

### cMagicFieldSpread
```lua  title='Definitions'
function cMagicFieldSpread()
```


<hr></hr>

### cMapMark_FieldSight
```lua  title='Definitions'
function cMapMark_FieldSight()
```


<hr></hr>

### cMapObjectControl
```lua  title='Definitions'
function cMapObjectControl()
```


<hr></hr>

### cMobDialog_String
```lua  title='Definitions'
function cMobDialog_String()
```


<hr></hr>

### cMobRegen_XY_Layer
```lua  title='Definitions'
function cMobRegen_XY_Layer()
```


<hr></hr>

### cMobWeaponRate
```lua  title='Definitions'
function cMobWeaponRate()
```


<hr></hr>

### cMove2Where
```lua  title='Definitions'
function cMove2Where()
```


<hr></hr>

### cMoveLayer
```lua  title='Definitions'
function cMoveLayer()
```


<hr></hr>

### cObjectEffect
```lua  title='Definitions'
function cObjectEffect()
```


<hr></hr>

### cRegenGroupActiv
```lua  title='Definitions'
function cRegenGroupActiv()
```


<hr></hr>

### cSaveTutorialInfo
```lua  title='Definitions'
function cSaveTutorialInfo()
```


<hr></hr>

### cScoreBoard
```lua  title='Definitions'
function cScoreBoard()
```


<hr></hr>

### cScoreBoard_AllInMap
```lua  title='Definitions'
function cScoreBoard_AllInMap()
```


<hr></hr>

### cScoreInfo
```lua  title='Definitions'
function cScoreInfo()
```


<hr></hr>

### cScoreInfo_AllInMap
```lua  title='Definitions'
function cScoreInfo_AllInMap()
```


<hr></hr>

### cScoreResultList
```lua  title='Definitions'
function cScoreResultList()
```


<hr></hr>

### cScoreTopList
```lua  title='Definitions'
function cScoreTopList()
```


<hr></hr>

### cSendGameLogDataType_4
```lua  title='Definitions'
function cSendGameLogDataType_4()
```


<hr></hr>

### cSendGameLogDataType_5
```lua  title='Definitions'
function cSendGameLogDataType_5()
```


<hr></hr>

### cSendRankingList
```lua  title='Definitions'
function cSendRankingList()
```


<hr></hr>

### cSetItemDropMobID
```lua  title='Definitions'
function cSetItemDropMobID()
```


<hr></hr>

### cSetSightState
```lua  title='Definitions'
function cSetSightState()
```


<hr></hr>

### cSkillDamageCalculate
```lua  title='Definitions'
function cSkillDamageCalculate()
```


<hr></hr>

### cSomebodyShout
```lua  title='Definitions'
function cSomebodyShout()
```


<hr></hr>

### cTopView
```lua  title='Definitions'
function cTopView()
```


<hr></hr>

### cTriggerRegist
```lua  title='Definitions'
function cTriggerRegist()
```


<hr></hr>

### cVanishTimer
```lua  title='Definitions'
function cVanishTimer()
```


<hr></hr>

### cWaitIdle
```lua  title='Definitions'
function cWaitIdle()
```


<hr></hr>

### cWillMovement
```lua  title='Definitions'
function cWillMovement()
```


<hr></hr>

