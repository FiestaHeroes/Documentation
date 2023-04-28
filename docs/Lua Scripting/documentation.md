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

```lua  title='Definition'
function cAbstateRestTime(Handle, AbstateInx)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| AbstateInx | string |
#### Return values

| Name | Type |
|------|------|
| RemainingTime | number&#124;nil |

```lua title='Example'
local restTime = cAbstateRestTime(player, "StaImmortal")
```

<hr></hr>

### cActByEventCode

Lets a handle do an action based on the given event code.
Event codes can be found in the .kfm of each object.

```lua  title='Definition'
function cActByEventCode(Handle, EventCode)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| EventCode | string |

```lua title='Example'
cActByEventCode(player, 101000)
```

<hr></hr>

### cAddCharacterTitle

Adds a character title to the given character.

```lua  title='Definition'
function cAddCharacterTitle(CharNumber, TitleType, ElementNumber)
end
```

#### Arguments

| Name | Type |
|------|------|
| CharNumber | number |
| TitleType | number |
| ElementNumber | number |

```lua title='Example'
cAddCharacterTitle(player, 1, 0)
```

<hr></hr>

### cAggroList

Returns a table containing all objects that are aggroed on the given handle.

```lua  title='Definition'
function cAggroList(Handle, Range)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Range | number |
#### Return values

| Name | Type |
|------|------|
| AggroList | number[] |

```lua title='Example'
local aggroList = { cAggroList(player, 100) }
```

<hr></hr>

### cAggroListSize

Returns the size of the aggro list of the given handle.

```lua  title='Definition'
function cAggroListSize(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| AggroListSize | number |

```lua title='Example'
local aggroListSize = cAggroListSize(player)
```

<hr></hr>

### cAggroReset

Resets the aggro of the given handle on the given target.

```lua  title='Definition'
function cAggroReset(Handle, TargetHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| TargetHandle | number |

```lua title='Example'
cAggroReset(player, target)
```

<hr></hr>

### cAggroSet

Sets the aggro of the given handle on the given target.
The aggro rate is the strength of the aggro.

```lua  title='Definition'
function cAggroSet(Handle, TargetHandle, AggroRate)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| TargetHandle | number |
| AggroRate | number |

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

```lua  title='Definition'
function cAIScriptFunc(Handle, ZoneEvent, CallBack)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number|nil |
| ZoneEvent | string |
| CallBack | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

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

```lua  title='Definition'
function cAIScriptSet(HandleTarget, Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| HandleTarget | number |
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cAIScriptSet(mobHandle, mobHandle2)
```

<hr></hr>

### cAnimate
```lua  title='Definition'
function cAnimate(Handle, AnimationName)
end
```


<hr></hr>

### cAnimateForcedly
```lua  title='Definition'
function cAnimateForcedly(Handle, AnimationName)
end
```


<hr></hr>

### cAssertLog

Writes a message to the server log.

```lua  title='Definition'
function cAssertLog(Message)
end
```

#### Arguments

| Name | Type |
|------|------|
| Message | string |

```lua title='Example'
cAssertLog("Hello World!")
```

<hr></hr>

### cCameraMove

Set camera for all objects on map.

```lua  title='Definition'
function cCameraMove(MapInx, X, Y, AngleX, AngleY, Distance, MoveType)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapInx | number |
| X | number |
| Y | number |
| AngleX | number |
| AngleY | number |
| Distance | number |
| MoveType | CAMERA_STATE |

```lua title='Example'
cCameraMove(Var["MapIndex"], 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
```

<hr></hr>

### cCameraMove_Obj

Set camera for a specific object.

```lua  title='Definition'
function cCameraMove_Obj(Handle, X, Y, AngleX, AngleY, Distance, MoveType)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| X | number |
| Y | number |
| AngleX | number |
| AngleY | number |
| Distance | number |
| MoveType | CAMERA_STATE |

```lua title='Example'
cCameraMove_Obj(player, 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
```

<hr></hr>

### cCastingBar

Renders a casting bar when a player interacts with an NPC.
The casting bar is rendered for the duration of the CastTime.
The AnimationName is the name of the animation that is played while the casting bar is rendered.

```lua  title='Definition'
function cCastingBar(PlayerHandle, NPCHandle, CastTime, AnimationName)
end
```

#### Arguments

| Name | Type |
|------|------|
| PlayerHandle | number |
| NPCHandle | number |
| CastTime | number |
| AnimationName | string |

```lua title='Example'
cCastingBar(player, npc, 4000, "ActionProduct")
```

<hr></hr>

### cCharTitleAddValue
```lua  title='Definition'
function cCharTitleAddValue(PlayerHandle, TitleType, ElementNumber)
end
```


<hr></hr>

### cClassChangeOpen

Opens the class change window for the given player.

```lua  title='Definition'
function cClassChangeOpen(PlayerHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| PlayerHandle | number |

```lua title='Example'
cClassChangeOpen(player)
```

<hr></hr>

### cCurSec

Gets current time in seconds.

```lua  title='Definition'
function cCurSec()
end
```

#### Return values

| Name | Type |
|------|------|
| CurSec | number |

```lua title='Example'
local time = cCurSec()
```

<hr></hr>

### cCurrentSecond

Gets current time in seconds.

```lua  title='Definition'
function cCurrentSecond()
end
```

#### Return values

| Name | Type |
|------|------|
| CurSec | number |

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

```lua  title='Definition'
function cCastTeleport(Handle, Type, X, Y)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Type | string |
| X | number |
| Y | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cCastTeleport(pPlayer, "SpecificCoord", 5000, 5000)
```

<hr></hr>

### cDamaged

Damages the target object for the given amount of damage.
The source of the damage is the object associated with the _SourceHandle_ parameter.
If the _SourceHandle_ parameter is not given, the damage is considered to be from the environment.

```lua  title='Definition'
function cDamaged(TargetHandle, Damage, SourceHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| TargetHandle | number |
| Damage | number |
| SourceHandle | number |

```lua title='Example'
cDamage(monster, 1000, player)
```

<hr></hr>

### cDebugLog

Writes a debug message to the server log.

```lua  title='Definition'
function cDebugLog(Message)
end
```

#### Arguments

| Name | Type |
|------|------|
| Message | string |

```lua title='Example'
cDebugLog("Hello World!")
```

<hr></hr>

### cDelDirectionalArrow

Removes the directional arrow above the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cDelDirectionalArrow(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |

```lua title='Example'
cDelDirectionalArrow(player)
```

<hr></hr>

### cDePolymorph

Depolymorphs the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cDePolymorph(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |

```lua title='Example'
cDePolymorph(player)
```

<hr></hr>

### cDePolymorph_Area

Depolymorphs all objects in the given area.
The area is defined in the _.aid_ file of the map.

```lua  title='Definition'
function cDePolymorph_Area(MapIndex, Area)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| Area | string |

```lua title='Example'
cDePolymorph_Area(Var["MapIndex"], "AreaName")
```

<hr></hr>

### cDirectionalArrow

Renders an arrow above the object associated with the _Handle_ parameter pointing to the given coordinates.

```lua  title='Definition'
function cDirectionalArrow(Handle, X, Y)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| X | number |
| Y | number |

```lua title='Example'
cDirectionalArrow(player, 5000, 5000)
```

<hr></hr>

### cDistanceSquar

Returns the distance between the object associated with the _Handle_ parameter and the object associated with the _TargetHandle_ parameter.
The distance is squared. Use the `math.sqrt` function to get the actual distance.

```lua  title='Definition'
function cDistanceSquar(Handle, TargetHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| TargetHandle | number |
#### Return values

| Name | Type |
|------|------|
| Distance | number&#124;nil |

```lua title='Example'
local distance = cDistanceSquar(player, monster)
```

<hr></hr>

### cDistanceSquar

Returns the distance between two coordinates.
The distance is squared. Use the `math.sqrt` function to get the actual distance.

```lua  title='Definition'
function cDistanceSquar(SourceX, SourceY, TargetX, TargetY)
end
```

#### Arguments

| Name | Type |
|------|------|
| SourceX | number |
| SourceY | number |
| TargetX | number |
| TargetY | number |
#### Return values

| Name | Type |
|------|------|
| Distance | number&#124;nil |

```lua title='Example'
local distance = cDistanceSquar(5000, 5000, 6000, 6000)
```

<hr></hr>

### cDoorAction

Open or close door. Valid values are "close" or "open".

```lua  title='Definition'
function cDoorAction(DoorHandle, SbiBlockName, Action)
end
```

#### Arguments

| Name | Type |
|------|------|
| DoorHandle | number |
| SbiBlockName | string |
| Action | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cDoorAction(Var["Door1"], "Door1", "close")
```

<hr></hr>

### cDoorBuild

Build a door object.

```lua  title='Definition'
function cDoorBuild(Field, DoorInx, X, Y, D, Size)
end
```

#### Arguments

| Name | Type |
|------|------|
| Field | number |
| DoorInx | string |
| X | number |
| Y | number |
| D | number |
| Size | number |
#### Return values

| Name | Type |
|------|------|
| DoorHandle | number&#124;nil |

```lua title='Example'
local doorHandle = cDoorBuild(Var["MapIndex"], "Barrier02", 5311, 3321, 90, 1000)
```

<hr></hr>

### cDropFilm
```lua  title='Definition'
function cDropFilm(MapIndex, MainScript)
end
```


<hr></hr>

### cDropItem

Drops an item on the ground.
_KillerHandle_ is the object that killed the mob. If the mob was killed by the environment, the _KillerHandle_ parameter should be replaced with `-1`.
_Rate_ is the drop rate and is calculated in millions. For example, a _Rate_ of `1000000` is a 100% drop rate.

```lua  title='Definition'
function cDropItem(ItemIndex, Handle, KillerHandle, Lot, Rate)
end
```

#### Arguments

| Name | Type |
|------|------|
| ItemIndex | number |
| Handle | number |
| KillerHandle | number |
| Lot | number |
| Rate | number |
#### Return values

| Name | Type |
|------|------|
| Success | number&#124;nil |

```lua title='Example'
cDropItem(Var["ItemIndex"], Var["MonsterHandle"], player, 1, 1000000)
```

<hr></hr>

### cEffectMsg

Displays an animated message on the screen of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cEffectMsg(Handle, EffectMessageType)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| EffectMessageType | EFFECT_MSG_TYPE |

```lua title='Example'
cEffectMsg(player, EFFECT_MSG_TYPE["EMT_SUCCESS"])
```

<hr></hr>

### cEffectMsg_AllInMap

Displays an animated message on the screen of all objects in the map.

```lua  title='Definition'
function cEffectMsg_AllInMap(MapIndex, EffectMessageType)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| EffectMessageType | EFFECT_MSG_TYPE |

```lua title='Example'
cEffectMsg_AllInMap(Var["MapIndex"], EFFECT_MSG_TYPE["EMT_SUCCESS"])
```

<hr></hr>

### cEffectRegen_Object

Renders an effect on the object associated with the _Handle_ parameter.
Valid values for _EffectName_ are .nif files in the `ResEffect` folder.

```lua  title='Definition'
function cEffectRegen_Object(MapIndex, EffectName, Handle, Duration, Scale)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| EffectName | string |
| Handle | number |
| Duration | number |
| Scale | number |

```lua title='Example'
cEffectRegen_Object(MapIndex, "BH_Helga_idle01", player, 1000, 1)
```

<hr></hr>

### cEffectRegen_XY

Renders an effect on the ground at the given coordinates.
Valid values for _EffectName_ are .nif files in the `ResEffect` folder.
Loop is unknown. It seems to be a boolean value.

```lua  title='Definition'
function cEffectRegen_XY(MapIndex, EffectName, X, Y, Direction, Duration, Scale, Loop)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| EffectName | string |
| X | number |
| Y | number |
| Direction | number |
| Duration | number |
| Scale | number |
| Loop | number |

```lua title='Example'
cEffectRegen_XY(Var["MapIndex"], "BH_Helga_idle01", 5000, 5000, 0, 1000, 1, 1)
```

<hr></hr>

### cEmotion

Plays an emote on the object associated with the _Handle_ parameter.
Valid values for _ActionIndex_ can be found in `ActionViewInfo.shn`.

```lua  title='Definition'
function cEmotion(Handle, ActionIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ActionIndex | number |

```lua title='Example'
cEmotion(player, 1)
```

<hr></hr>

### cEndCinematicText

Stop all cinematic texts from displaying.

```lua  title='Definition'
function cEndCinematicText(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |

```lua title='Example'
cEndCinematicText(player)
```

<hr></hr>

### cEndOfKingdomQuest

Ends the current kingdom quest.

```lua  title='Definition'
function cEndOfKingdomQuest(MapIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |

```lua title='Example'
cEndOfKingdomQuest(Var["MapIndex"])
```

<hr></hr>

### cExecCheck

Needs to be first call in **every** function.
Tells the server the last function called for error logging.

```lua  title='Definition'
function cExecCheck(FunctionName)
end
```

#### Arguments

| Name | Type |
|------|------|
| FunctionName | string |

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

```lua  title='Definition'
function cFieldScriptFunc(Map, Type, Function)
end
```

#### Arguments

| Name | Type |
|------|------|
| Map | string |
| Type | string |
| Function | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cFieldScriptFunc(Var["MapIndex"], "RankingValue", "Ranking")
```

<hr></hr>

### cFindNearestMobList

Returns a list of mobs in the map associated with the _MapIndex_ parameter.

```lua  title='Definition'
function cFindNearestMobList(MapIndex, Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| MobList | number[]&#124;nil |

```lua title='Example'
local mobList = { cFindMobList(Var["MapIndex"]) }
```

<hr></hr>

### cFindNearPlayer

Returns the handle of the nearest player to the object associated with the _Handle_ parameter.
The _Classes_ parameter takes a list of class IDs.

```lua  title='Definition'
function cFindNearPlayer(Handle, Radius, Classes)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Radius | number |
| Classes | number[] |
#### Return values

| Name | Type |
|------|------|
| PlayerHandle | number&#124;nil |

```lua title='Example'
local playerHandle = cFindNearPlayer(Var["MonsterHandle"], 1000, {1,6,11,16,21,26})
```

<hr></hr>

### cFollow

Lets the object associated with the _Handle_ parameter follow the object associated with the _FollowerHandle_ parameter.
The _Gap_ parameter is the distance between the two objects.
The _Distance_ parameter is the distance the object will follow the _FollowerHandle_ object.

```lua  title='Definition'
function cFollow(FollowerHandle, Handle, Gap, Distance)
end
```

#### Arguments

| Name | Type |
|------|------|
| FollowerHandle | number |
| Handle | number |
| Gap | number |
| Distance | number |

```lua title='Example'
cFollow(Var["MonsterHandle"], player, 100, 1000)
```

<hr></hr>

### cGetAbstate

Gets the strength and remaining time of an Abstate on a Handle.

```lua  title='Definition'
function cGetAbstate(Handle, AbstateInx)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| AbstateInx | string |
#### Return values

| Name | Type |
|------|------|
| AbstateStrength | number&#124;nil |
| AbstateTime | number&#124;nil |

```lua title='Example'
local AbstateStrength, AbstateTime = cGetAbstate(player, "StaImmortal")
```

<hr></hr>

### cGetAdminLevel

Returns the admin level of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetAdminLevel(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| AdminLevel | number&#124;nil |

```lua title='Example'
local adminLevel = cGetAdminLevel(player)
```

<hr></hr>

### cGetAreaObject

Checks if the object associated with the _Handle_ parameter is inside an area.
The _AreaIndex_ parameter is the index of the area. It is defined in the _.aid_ file of the map.

```lua  title='Definition'
function cGetAreaObject(MapIndex, AreaIndex, Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| AreaIndex | string |
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| IsInArea | boolean&#124;nil |

```lua title='Example'
local isInArea = cGetAreaObject(Var["MapIndex"], "AdlF_Zone02_3", player)
```

<hr></hr>

### cGetAreaObjectList

Returns a list of objects in the area associated with the _AreaIndex_ parameter.
The _ObjectType_ parameter is the type of object to return.

```lua  title='Definition'
function cGetAreaObjectList(MapIndex, AreaIndex, ObjectType)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| AreaIndex | string |
| ObjectType | ObjectType |
#### Return values

| Name | Type |
|------|------|
| ObjectList | number[]&#124;nil |

```lua title='Example'
local objectList = { cGetAreaObjectList(Var["MapIndex"], "AdlF_Zone02_3", ObjectType["Player"]) }
```

<hr></hr>

### cGetAroundCoord

Returns a random coordinate within the radius of the object associated with the _Handle_ parameter.
The _Direction_ parameter is the direction the object is facing.

```lua  title='Definition'
function cGetAroundCoord(Handle, Direction, Radius)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Direction | number |
| Radius | number |
#### Return values

| Name | Type |
|------|------|
| X | number&#124;nil |
| Y | number&#124;nil |

```lua title='Example'
local x, y = cGetAroundCoord(player, 0, 1000)
```

<hr></hr>

### cGetBaseClass

Returns the base class of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetBaseClass(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| BaseClass | number&#124;nil |

```lua title='Example'
local baseClass = cGetBaseClass(player)
```

<hr></hr>

### cGetCharNo

Returns the character number of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetCharNo(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| CharNo | number&#124;nil |

```lua title='Example'
local charNo = cGetCharNo(player)
```

<hr></hr>

### cGetCoord_Circle

Returns a random coordinate within a radius in a circle.
The _X_ and _Y_ parameters are the center of the circle.

```lua  title='Definition'
function cGetCoord_Circle(X, Y, Radius)
end
```

#### Arguments

| Name | Type |
|------|------|
| X | number |
| Y | number |
| Radius | number |
#### Return values

| Name | Type |
|------|------|
| X | number&#124;nil |
| Y | number&#124;nil |

```lua title='Example'
local x, y = cGetCoord_Circle(0, 0, 1000)
```

<hr></hr>

### cGetCurMapIndex

Gets the Map Index of a player.

```lua  title='Definition'
function cGetCurMapIndex(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| MapINX | string |

```lua title='Example'
local mapName = cGetCurMapIndex(playerHandle)
```

<hr></hr>

### cGetCurrentSkillInfo

Returns the skill information, the object associated with the _Handle_ parameter is currently using.
This includes the skill index and the end time of the skill.

```lua  title='Definition'
function cGetCurrentSkillInfo(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| SkillIndex | string&#124;nil |
| EndTime | number&#124;nil |

```lua title='Example'
local skillIndex, endTime = cGetCurrentSkillInfo(player)
```

<hr></hr>

### cGetDirect

Returns the current facing direction of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetDirect(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| Direction | number&#124;nil |

```lua title='Example'
local direction = cGetDirect(player)
```

<hr></hr>

### cGetItemIndex

Returns the InxName related to the _ItemNumber_ parameter.

```lua  title='Definition'
function cGetItemIndex(ItemNumber)
end
```

#### Arguments

| Name | Type |
|------|------|
| ItemNumber | number |
#### Return values

| Name | Type |
|------|------|
| ItemInx | string&#124;nil |

```lua title='Example'
local itemInx = cGetItemInx(1)
```

<hr></hr>

### cGetItemLot

Returns the amount of an item in a specified player's inventory.

```lua  title='Definition'
function cGetItemLot(Player, ItemINX)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
| ItemINX | string |
#### Return values

| Name | Type |
|------|------|
| ItemLot | number&#124;nil |
| IsSlotBlocked | boolean&#124;nil |

```lua title='Example'
local lot, isBlocked = cGetItemLot(playerHandle, 1)
```

<hr></hr>

### cGetKQLimitSecond

Returns the second limit of the Kingdom Quest associated with the _MapIndex_ parameter.

```lua  title='Definition'
function cGetKQLimitSecond(MapIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
#### Return values

| Name | Type |
|------|------|
| SecondLimit | number&#124;nil |

```lua title='Example'
local secondLimit = cGetKQLimitSecond(Var["MapIndex"])
```

<hr></hr>

### cGetKQTeamType

Returns the team type of the object associated with the _Handle_ parameter.
This function is used for the Football or Water Ball Kingdom Quests.

```lua  title='Definition'
function cGetKQTeamType(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| TeamType | number&#124;nil |

```lua title='Example'
local teamType = cGetKQTeamType(player)
```

<hr></hr>

### cGetLevel

Returns the players level.

```lua  title='Definition'
function cGetLevel(Player)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
#### Return values

| Name | Type |
|------|------|
| Level | number |

```lua title='Example'
local playerLevel = cGetLevel(player)
```

<hr></hr>

### cGetMapName

Returns the map name of the map associated with the _MapIndex_ parameter.

```lua  title='Definition'
function cGetMapName(MapIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
#### Return values

| Name | Type |
|------|------|
| MapName | string&#124;nil |

```lua title='Example'
local mapName = cGetMapName(Var["MapIndex"])
```

<hr></hr>

### cGetMobID

Returns the ID of the mob associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetMobID(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| MobID | number&#124;nil |

```lua title='Example'
local mobID = cGetMobID(mobHandle)
```

<hr></hr>

### cGetMoveState

Returns the move state, the move state time and the move state set time of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetMoveState(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| MoveState | number&#124;nil |
| MoveStateTime | number&#124;nil |
| MoveStateSetTime | number&#124;nil |

```lua title='Example'
local moveState, moveStateTime, moveStateSetTime = cGetMoveState(player)
```

<hr></hr>

### cGetNearestObjByCoord

Returns the handle of the closest mob to the given coordinates on the map associated with the _MapIndex_ parameter.
The _MobIndex_ parameter is the mob index of the mob to search for.
The _Method_ parameter is the method of searching for the mob. In this case, it is `so_mobile_GetIdxName`.

```lua  title='Definition'
function cGetNearestObjByCoord(MapIndex, X, Y, Radius, MobIndex, Method)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| X | number |
| Y | number |
| Radius | number |
| MobIndex | string |
| Method | string |
#### Return values

| Name | Type |
|------|------|
| MobHandle | number&#124;nil |

```lua title='Example'
local mobHandle = cGetNearestMobByCoord(Var["MapIndex"], 5000, 5000, 1000, "Slime", "so_mobile_GetIdxName")
```

<hr></hr>

### cGetNearestObjByCoord

Returns the handle of the closest object to the given coordinates on the map associated with the _MapIndex_ parameter.
The _ObjectType_ parameter is the type of object to search for.
The _Method_ parameter is the method of searching for the object. In this case, it is `so_ObjectType`.

```lua  title='Definition'
function cGetNearestObjByCoord(MapIndex, X, Y, Radius, ObjectType, Method)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| X | number |
| Y | number |
| Radius | number |
| ObjectType | ObjectType |
| Method | string |
#### Return values

| Name | Type |
|------|------|
| Handle | number&#124;nil |

```lua title='Example'
local mobHandle = cGetNearestObjByCoord(Var["MapIndex"], 5000, 5000, 1000, ObjectType["Player"], "so_ObjectType")
```

<hr></hr>

### cGetNearObjListByCoord

Get a list of all objects in a radius around a coord.

```lua  title='Definition'
function cGetNearObjListByCoord(MapInx, X, Y, Range, ObjectType, SearchType, MaxObjects)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapInx | number |
| X | number |
| Y | number |
| Range | number |
| ObjectType | number |
| SearchType | string |
| MaxObjects | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
local players = { cGetNearObjListByCoord(Var["MapIndex"], 5000, 5000, 1000, ObjectType.Player, "so_ObjectType", 5 ) }
```

<hr></hr>

### cGetNPCHandle

Returns the handle of an npc associated with the _MapIndex_ and _MobIndex_ parameters.

```lua  title='Definition'
function cGetNPCHandle(MapIndex, MobIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| MobIndex | string |
#### Return values

| Name | Type |
|------|------|
| NpcHandle | number&#124;nil |

```lua title='Example'
local npcHandle = cGetNPCHandle(Var["MapIndex"], "RouItemMctPey")
```

<hr></hr>

### cGetObjectMode

Returns the current mode of the object associated with the _Handle_ parameter.
See [ObjectMode](#objectmode) for a list of possible modes.

```lua  title='Definition'
function cGetObjectMode(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| ObjectMode | ObjectMode&#124;nil |

```lua title='Example'
local objectMode = cGetObjectMode(player)
```

<hr></hr>

### cGetPlayerList

Get a list of all players on a map.

```lua  title='Definition'
function cGetPlayerList(MapHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapHandle | string |
#### Return values

| Name | Type |
|------|------|
| playerHandleArray | number |

```lua title='Example'
local playerlist = { cGetPlayerList(Var["MapIndex"]) }
```

<hr></hr>

### cGetPlayerName

Returns the name of a player.

```lua  title='Definition'
function cGetPlayerName(Player)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
#### Return values

| Name | Type |
|------|------|
| PlayerName | string |

```lua title='Example'
local playerName = cGetPlayerName(playerHandle)
```

<hr></hr>

### cGetRegistNumber

Returns the registNumber of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetRegistNumber(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| RegistNumber | number&#124;nil |

```lua title='Example'
local registNumber = cGetRegistNumber(player)
```

<hr></hr>

### cGetRunSpeed

Returns the run speed of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetRunSpeed(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| RunSpeed | number&#124;nil |

```lua title='Example'
local runSpeed = cGetRunSpeed(player)
```

<hr></hr>

### cGetScriptString

Returns the string of a script file.<br/>
The _ScriptFile_ parameter is the name of the script file.
The _TitleKey_ parameter is the key that will be read.
The _Values_ parameter can be as many STRING parameters as needed.

```lua  title='Definition'
function cGetScriptString(ScriptFile, TitleKey, Values)
end
```

#### Arguments

| Name | Type |
|------|------|
| ScriptFile | string |
| TitleKey | string |
| Values | string |
#### Return values

| Name | Type |
|------|------|
| String | string&#124;nil |

```lua title='Example'
local string = cGetScriptString("MenuString", "LinkTitle", "Some string")
```

<hr></hr>

### cGetTargetList

Returns a list of targets in a circle around the given _Handle_ specified through X Y and Radius.

```lua  title='Definition'
function cGetTargetList(Handle, X, Y, Radius)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| X | number |
| Y | number |
| Radius | number |
#### Return values

| Name | Type |
|------|------|
| TargetList | table |

```lua title='Example'
local targetList = { cGetTargetList(Var["MobIndex"], 5000, 5000, 150) }
```

<hr></hr>

### cGetWalkSpeed

Returns the walk speed of the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetWalkSpeed(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| WalkSpeed | number&#124;nil |

```lua title='Example'
local walkSpeed = cGetWalkSpeed(player)
```

<hr></hr>

### cGetWhoKillMe

Returns the handle of the object that killed the object associated with the _Handle_ parameter.

```lua  title='Definition'
function cGetWhoKillMe(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| KillerHandle | number&#124;nil |

```lua title='Example'
local killerHandle = cGetWhoKillMe(player)
```

<hr></hr>

### cGroupRegen

Spawns a group from a mob regen.

```lua  title='Definition'
function cGroupRegen(MobRegen, RegenIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MobRegen | string |
| RegenIndex | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cGroupRegen("BH_Helga", "BH_HelgaBox")
```

<hr></hr>

### cGroupRegenInstance

Activates Regen for an Instance.

```lua  title='Definition'
function cGroupRegenInstance(MapINX, RegenINX)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapINX | string |
| RegenINX | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cGroupRegenInstance("AdlF", "AdlF_01_SP01")
```

<hr></hr>

### cGroupRegenInstance_XY

Activates Regen for an Instance at position X Y.

```lua  title='Definition'
function cGroupRegenInstance_XY(MapIndex, RegenIndex, X, Y)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| RegenIndex | string |
| X | number |
| Y | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cGroupRegenInstance_XY("AdlF", "AdlF_01_SP01", 5000, 5000)
```

<hr></hr>

### cHeal

Heals the object associated with the _Handle_ parameter by the _Amount_ parameter.

```lua  title='Definition'
function cHeal(Handle, Amount)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Amount | number |

```lua title='Example'
cHeal(player, 100)
```

<hr></hr>

### cHideOtherPlayer
```lua  title='Definition'
function cHideOtherPlayer(Handle)
end
```


<hr></hr>

### cIndunRankResult

Show damage ranking.

```lua  title='Definition'
function cIndunRankResult(MapInx, Time, PlyList)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapInx | string |
| Time | number |
| PlyList | PlayerList |

```lua title='Example'
cIndunRankResult(Field, 100, PlyList)
```

<hr></hr>

### cInvenItemDestroy

Destroys the specified amount of an item in the
players inventory.

```lua  title='Definition'
function cInvenItemDestroy(Player, ItemINX, Amount)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
| ItemINX | string |
| Amount | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cInvenItemDestroy(playerHandle, 1, 1)
```

<hr></hr>

### cIsEquipItem

Returns wether the player has the specified item equipped.

```lua  title='Definition'
function cIsEquipItem(Handle, ItemIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ItemIndex | string |
#### Return values

| Name | Type |
|------|------|
| IsEquipped | number&#124;nil |

```lua title='Example'
local isEquipped = cIsEquipItem(player, "LeatherBoots")
```

<hr></hr>

### cIsInArea

Returns wether an object is in a specified area.
The _AreaIndex_ parameter is the index of the area. It is defined in the _.aid_ file of the map.

```lua  title='Definition'
function cIsInArea(Handle, MapIndex, AreaIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| MapIndex | string |
| AreaIndex | string |
#### Return values

| Name | Type |
|------|------|
| IsInArea | boolean&#124;nil |

```lua title='Example'
local isInArea = cIsInArea(player, "Rou", "Area1")
```

<hr></hr>

### cIsInMap

Returns wether and object is in a specified map.

```lua  title='Definition'
function cIsInMap(Handle, MapIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| MapIndex | string |
#### Return values

| Name | Type |
|------|------|
| IsInMap | boolean&#124;nil |

```lua title='Example'
local isInMap = cIsInMap(player, "Rou")
```

<hr></hr>

### cIsKQJoiner

Returns wether the object associated with the _Handle_ parameter has joined the KQ.

```lua  title='Definition'
function cIsKQJoiner(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| IsKQJoiner | boolean&#124;nil |

```lua title='Example'
local isKQJoiner = cIsKQJoiner(player)
```

<hr></hr>

### cIsMovable

Returns wether the object associated with the _Handle_ parameter is able to move or not.

```lua  title='Definition'
function cIsMovable(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| IsMovable | boolean&#124;nil |

```lua title='Example'
local isMovable = cIsMovable(player)
```

<hr></hr>

### cIsObjectAlreadyDead

Returns wether the object associated with the _Handle_ parameter is already dead.

```lua  title='Definition'
function cIsObjectAlreadyDead(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| IsDead | boolean&#124;nil |

```lua title='Example'
local isDead = cIsObjectAlreadyDead(player)
```

<hr></hr>

### cIsObjectDead

Checks if Object is dead.

```lua  title='Definition'
function cIsObjectDead(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| IsDead | boolean |

```lua title='Example'
cIsObjectDead(player)
```

<hr></hr>

### cItemErase
```lua  title='Definition'
function cItemErase(MapIndex, ItemID)
end
```


<hr></hr>

### cKillObject

Kills mob instantly. Kill gets creditet to player.

```lua  title='Definition'
function cKillObject(Mob, Player)
end
```

#### Arguments

| Name | Type |
|------|------|
| Mob | number |
| Player | number |

```lua title='Example'
cKillObject(mobHandle, playerHandle)
```

<hr></hr>

### cKillObject

Kills mob instantly.

```lua  title='Definition'
function cKillObject(Mob)
end
```

#### Arguments

| Name | Type |
|------|------|
| Mob | number |

```lua title='Example'
cKillObject(mobHandle)
```

<hr></hr>

### cKQRewardIndex

Rewards the player with the kq reward specified by the _RewardIndex_ parameter.

```lua  title='Definition'
function cKQRewardIndex(Handle, RewardIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| RewardIndex | string |

```lua title='Example'
cKQRewardIndex(player, "Reward1")
```

<hr></hr>

### cLevelUp

Levels the player up by 1 level.

```lua  title='Definition'
function cLevelUp(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |

```lua title='Example'
cLevelUp(player)
```

<hr></hr>

### cLinkTo

Teleports player to given location.

```lua  title='Definition'
function cLinkTo(Player, MapINX, X, Y)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
| MapINX | string |
| X | number |
| Y | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cLinkTo(player, "Rou", 5000, 5000)
```

<hr></hr>

### cLinkToAll

Teleports all player on the map to given location.

```lua  title='Definition'
function cLinkToAll(MapIndex, DestinationMap, DestinationX, DestinationY)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| DestinationMap | string |
| DestinationX | number |
| DestinationY | number |

```lua title='Example'
cLinkToAll("Rou", "Eld", 5000, 5000)
```

<hr></hr>

### cMapFog

Changes the fog level and sight distance of a map.

```lua  title='Definition'
function cMapFog(MapIndex, FogValue, SightDistance)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| FogValue | number |
| SightDistance | number |

```lua title='Example'
cMapFog("Rou", 0, 1000)
```

<hr></hr>

### cMapMark

Adds a marker to the map.
The _MarkData_ parameter is a table that contains the data for the marker.
The table needed for the _MarkData_ parameter is shown in the example below.

```lua  title='Definition'
function cMapMark(MapIndex, MarkData)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| MarkData | table |

```lua title='Example'
cMapMark(player:getMap(), {[100] = {Group = 100, x = 7216, y = 16314, KeepTime = 99999999, IconIndex = 'LinkTown'}})
```

<hr></hr>

### cMapMark_Obj

Does the same as [cMapMark](#cMapMark) but for objects.

```lua  title='Definition'
function cMapMark_Obj(Handle, MarkData)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| MarkData | table |

```lua title='Example'
cMapMark_Obj(player, {[100] = {Group = 100, x = 7216, y = 16314, KeepTime = 99999999, IconIndex = 'LinkTown'}})
```

<hr></hr>

### cMessage

Shows a message to the player.<br/>
**NOTE:** This function seems to be deprecated. See [cScriptMessage_Obj](#cScriptMessage_Obj) instead.

```lua  title='Definition'
function cMessage(Handle, ScriptMsg)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ScriptMsg | string |

```lua title='Example'
cMessage(player, "BH_Helga_Buff")
```

<hr></hr>

### cMobChat

Lets a mob send a chat message from a script file.

```lua  title='Definition'
function cMobChat(Handle, ScriptFile, Index)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ScriptFile | string |
| Index | string |

```lua title='Example'
cMobChat(mobHandle, "WarBL", "Mob_01")
```

<hr></hr>

### cMobDetectRange

Changes the mob detection range of a mob.

```lua  title='Definition'
function cMobDetectRange(Handle, Range)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Range | number |

```lua title='Example'
cMobDetectRange(mobHandle, 1000)
```

<hr></hr>

### cMobDialog

Shows an NPC dialog with facecut to all players in the map.

```lua  title='Definition'
function cMobDialog(MapIndex, FaceCut, ScriptFile, Index)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| FaceCut | string |
| ScriptFile | string |
| Index | string |

```lua title='Example'
cMobDialog("Rou", "AdlLoussier", "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobDialog_FileName

This function seems to be deprecated or a duplicate. See [cMobDialog](#cMobDialog) instead.

```lua  title='Definition'
function cMobDialog_FileName(MapIndex, FaceCut, ScriptFile, Index)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| FaceCut | string |
| ScriptFile | string |
| Index | string |

```lua title='Example'
cMobDialog_FileName("Rou", "AdlLoussier", "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobDialog_Obj

Shows an NPC dialog with facecut to a specific player.

```lua  title='Definition'
function cMobDialog_Obj(Handle, FaceCut, ScriptFile, Index)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| FaceCut | string |
| ScriptFile | string |
| Index | string |

```lua title='Example'
cMobDialog_Obj(player, "AdlLoussier", "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobDialog_Range

Shows an NPC dialog with facecut to all players within a certain range of the mob associated with the _Handle_ parameter.

```lua  title='Definition'
function cMobDialog_Range(Handle, FaceCut, Range, ScriptFile, Index)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| FaceCut | string |
| Range | number |
| ScriptFile | string |
| Index | string |

```lua title='Example'
cMobDialog_Range(mobHandle, "AdlLoussier", 1000, "AdlF", "Loussier_Dead")
```

<hr></hr>

### cMobIDFind

Returns the id of a mob by its index.

```lua  title='Definition'
function cMobIDFind(MobIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MobIndex | string |
#### Return values

| Name | Type |
|------|------|
| MobID | number&#124;nil |

```lua title='Example'
local mobID = cMobIDFind("Slime")
```

<hr></hr>

### cMobRegen_Circle

Spawns a mob at a random position in a circle specified through X Y and Radius.

```lua  title='Definition'
function cMobRegen_Circle(MapIndex, MobIndex, X, Y, Radius)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| MobIndex | string |
| X | number |
| Y | number |
| Radius | number |
#### Return values

| Name | Type |
|------|------|
| MobHandle | number&#124;nil |

```lua title='Example'
local mobNumber = cMobRegen_Circle("Rou", "Slime", 5000, 5000, 100)
```

<hr></hr>

### cMobRegen_Obj

Spawns a mob near another object specified through the _Handle_ parameter.

```lua  title='Definition'
function cMobRegen_Obj(MobIndex, Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| MobIndex | string |
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| MobHandle | number&#124;nil |

```lua title='Example'
local mobHandle = cMobRegen_Obj(mobHandle, player)
```

<hr></hr>

### cMobRegen_Rectangle

Spawns a mob at a random position in a rectangle specified through X Y, Width, Height and Rotation.

```lua  title='Definition'
function cMobRegen_Rectangle(MapIndex, MobIndex, X, Y, Width, Height, Rotation)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| MobIndex | string |
| X | number |
| Y | number |
| Width | number |
| Height | number |
| Rotation | number |
#### Return values

| Name | Type |
|------|------|
| MobHandle | number&#124;nil |

```lua title='Example'
local mobNumber = cMobRegen_Rectangle("Rou", "Slime", 5000, 5000, 100, 100, 0)
```

<hr></hr>

### cMobRegen_XY

Spawns a mob at a specific position specified through X Y and Rotation.

```lua  title='Definition'
function cMobRegen_XY(MapIndex, MobIndex, X, Y, Rotation)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| MobIndex | string |
| X | number |
| Y | number |
| Rotation | number |
#### Return values

| Name | Type |
|------|------|
| MobHandle | number&#124;nil |

```lua title='Example'
local mobHandle = cMobRegen_XY("Rou", "Slime", 5000, 5000, 0)
```

<hr></hr>

### cMobShout

Lets a mob send a shout message from a script file.

```lua  title='Definition'
function cMobShout(MobHandle, ScriptFile, ScriptIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MobHandle | number |
| ScriptFile | string |
| ScriptIndex | string |

```lua title='Example'
cMobShout(mobHandle, "WarBL", "Mob_01")
```

<hr></hr>

### cMobSuicide

Kills a mob.<br/>
**NOTE:** If the _Handle_ parameter is not provided, all mobs on the map are killed.

```lua  title='Definition'
function cMobSuicide(MapIndex, Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| Handle | number |

```lua title='Example'
cMobSuicide(Var["MapIndex"], mobHandle)
```

<hr></hr>

### cMoveStop

Lets an NPC stop moving.

```lua  title='Definition'
function cMoveStop(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |

```lua title='Example'
cMoveStop(mobHandle)
```

<hr></hr>

### cNearObjectList

Returns a list of objects near a specific object specified through the _Handle_ parameter.

```lua  title='Definition'
function cNearObjectList(Handle, Radius, ObjectType)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Radius | number |
| ObjectType | ObjectType |
#### Return values

| Name | Type |
|------|------|
| ObjectList | number[]&#124;nil |

```lua title='Example'
local objectList = { cNearObjectList(mobHandle, 1000, ObjectType["PLAYER"]) }
```

<hr></hr>

### cNotice

Sends a notice message to all players within a map.

```lua  title='Definition'
function cNotice(MapIndex, ScriptFile, ScriptIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| ScriptFile | string |
| ScriptIndex | string |

```lua title='Example'
cNotice("Rou", "WarBL", "Mob_01")
```

<hr></hr>

### cNotice_Obj

Sends a notice message to a specific player.

```lua  title='Definition'
function cNotice_Obj(Handle, ScriptFile, ScriptIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ScriptFile | string |
| ScriptIndex | string |

```lua title='Example'
cNotice_Obj(player, "WarBL", "Mob_01")
```

<hr></hr>

### cNoticeRedWarningCode

Sends a red warning message to all players within a map.<br/>
**NOTE:** This function seems to be broken.

```lua  title='Definition'
function cNoticeRedWarningCode(MapIndex, Code)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| Code | string |

```lua title='Example'
cNoticeRedWarning("Rou", "Started")
```

<hr></hr>

### cNoticeString

Sends notices on map.

```lua  title='Definition'
function cNoticeString(MapINX, Notice)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapINX | string |
| Notice | string |

```lua title='Example'
local lot = cNoticeString("Rou", "Map wide notice")
```

<hr></hr>

### cNPCChat

Lets an NPC show a dialog above their head with a specific message from `ScriptMsg.shn`.
Also sends a message in the chat window.

```lua  title='Definition'
function cNPCChat(Handle, ScriptMsg)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ScriptMsg | string |

```lua title='Example'
cNPCChat(mobHandle, "BH_Helga_Alert")
```

<hr></hr>

### cNPCChatTest

Lets an NPC show a dialog above their head with a specific message.

```lua  title='Definition'
function cNPCChatTest(Handle, Message)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Message | string |

```lua title='Example'
cNPCChatTest(mobHandle, "Hello World!")
```

<hr></hr>

### cNPCMenuOpen

Opens the dialogue menu of an NPC to the selected player.

```lua  title='Definition'
function cNPCMenuOpen(NpcHandle, Player)
end
```

#### Arguments

| Name | Type |
|------|------|
| NpcHandle | number |
| Player | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cNPCMenuOpen(npcHandle, PlayerHandle)
```

<hr></hr>

### cNPCRegen

Spawns an npc from the `NPC.txt` into the map.
This function is used to spawn real interactable NPCs in an instance or kingdom quest.

```lua  title='Definition'
function cNPCRegen(MapIndex, NPCIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| NPCIndex | string |
#### Return values

| Name | Type |
|------|------|
| Success | number&#124;nil |

```lua title='Example'
cNPCRegen("KDCake", "XiaomingR_7th")
```

<hr></hr>

### cNPCSkillUse

Lets a mob use a skill.

```lua  title='Definition'
function cNPCSkillUse(Handle, Handle2, SkillIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Handle2 | number |
| SkillIndex | string |

```lua title='Example'
cNPCSkillUse(mobHandle, mobHandle, "BH_Humar_Skill_N_APU")
```

<hr></hr>

### cNPCVanish

Vanishes NPC associated with the Handle.

```lua  title='Definition'
function cNPCVanish(NpcHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| NpcHandle | number |

```lua title='Example'
cNPCVanish(npcHandle)
```

<hr></hr>

### cObjectCount

Gets the amount of the specificed Object Type.

```lua  title='Definition'
function cObjectCount(MapINX, ObjectType)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapINX | string |
| ObjectType | number |
#### Return values

| Name | Type |
|------|------|
| Amount | number |

```lua title='Example'
local mobNumber = cObjectCount("Rou", ObjectType.Mob)
```

<hr></hr>

### cObjectFind

Returns the first object found within a radius of a specific object specified through the _Handle_ parameter.

```lua  title='Definition'
function cObjectFind(Handle, Radius, ObjectType, Method)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Radius | number |
| ObjectType | ObjectType |
| Method | string |
#### Return values

| Name | Type |
|------|------|
| ObjectHandle | number&#124;nil |

```lua title='Example'
local foundObject = cObjectFind(mobHandle, 1000, ObjectType["PLAYER"], "so_ObjectType")
```

<hr></hr>

### cObjectFind

Returns the first mob found within a radius of a specific object specified through the _Handle_ parameter.

```lua  title='Definition'
function cObjectFind(Handle, Radius, MobIndex, Method)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Radius | number |
| MobIndex | string |
| Method | string |
#### Return values

| Name | Type |
|------|------|
| MobHandle | number&#124;nil |

```lua title='Example'
local foundMob = cObjectFind(mobHandle, 1000, "BH_Helga", "so_mobile_GetIdxName")
```

<hr></hr>

### cObjectHP

Returns the current HP and Max HP of an object.

```lua  title='Definition'
function cObjectHP(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| CurHP | number |
| MaxHP | number |

```lua title='Example'
local CurHP, MaxHP = cObjectHP(mob)
```

<hr></hr>

### cObjectLocate

Returns the X and Y of the Handle.

```lua  title='Definition'
function cObjectLocate(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| x | number&#124;nil |
| y | number&#124;nil |

```lua title='Example'
local playerX, playerY = cObjectLocate(player)
```

<hr></hr>

### cObjectLocateDirection

Returns the X, Y and Direction of the Handle.

```lua  title='Definition'
function cObjectLocateDirection(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| x | number&#124;nil |
| y | number&#124;nil |
| direction | number&#124;nil |

```lua title='Example'
local playerX, playerY, playerDir = cObjectLocateDirection(player)
```

<hr></hr>

### cObjectSound

Plays a sound to all objects within the objects radius associated with the _Handle_ parameter.

```lua  title='Definition'
function cObjectSound(Handle, SoundFile)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| SoundFile | string |

```lua title='Example'
cObjectSound(mobHandle, "interface/SFX_Critical01")
```

<hr></hr>

### cObjectType

Get ObjectType of the given handle.

```lua  title='Definition'
function cObjectType(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| objectType | ObjectType&#124;nil |

```lua title='Example'
if cObjectType(Handle) == ObjectType.Player then
end
```

<hr></hr>

### cPartyJoin

Joins to player to a party.

```lua  title='Definition'
function cPartyJoin(PlayerHandle01, PlayerHandle02)
end
```

#### Arguments

| Name | Type |
|------|------|
| PlayerHandle01 | number |
| PlayerHandle02 | number |

```lua title='Example'
cPartyJoin(player, player2)
```

<hr></hr>

### cPartyLeave

Removes a player from his party.

```lua  title='Definition'
function cPartyLeave(PlayerHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| PlayerHandle | number |

```lua title='Example'
cPartyLeave(player)
```

<hr></hr>

### cPermileRate

Calculates a chance and returns success or failure.<br/>
The example below will return true 50% of the time.

```lua  title='Definition'
function cPermileRate(Rate)
end
```

#### Arguments

| Name | Type |
|------|------|
| Rate | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean |

```lua title='Example'
if cPermileRate(500) then
end
```

<hr></hr>

### cPlayerExist

Checks if a player still exists.

```lua  title='Definition'
function cPlayerExist(PlayerHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| PlayerHandle | number |
#### Return values

| Name | Type |
|------|------|
| Exists | boolean&#124;nil |

```lua title='Example'
local playerExists = cPlayerExist(player)
```

<hr></hr>

### cPlaySound

Plays a sound to a specific player.

```lua  title='Definition'
function cPlaySound(Handle, SoundFile)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| SoundFile | string |

```lua title='Example'
cPlaySound(player, "interface/SFX_Critical01")
```

<hr></hr>

### cProgressTutorial
```lua  title='Definition'
function cProgressTutorial(Handle, StepNo)
end
```


<hr></hr>

### cQuestMobKill

Credits a single mob kill to the quest specified through the _QuestID_ parameter.

```lua  title='Definition'
function cQuestMobKill(Handle, QuestID, MobIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| QuestID | number |
| MobIndex | string |

```lua title='Example'
cQuestMobKill(player, 50, "BlackBear")
```

<hr></hr>

### cQuestMobKill_AllInMap

Credits a single mob kill to every player on the map for the quest specified through the _QuestID_ parameter.
Max kills is the maximum amount of kills that can be credited to the quest.

```lua  title='Definition'
function cQuestMobKill_AllInMap(MapIndex, QuestID, MobIndex, MaxKills)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| QuestID | number |
| MobIndex | string |
| MaxKills | number |

```lua title='Example'
cQuestMobKill_AllInMap("Rou", 50, "BlackBear", 5)
```

<hr></hr>

### cQuestResult

Shows either a success or failure message to all players on the map.
This is only used in Kingdom quests and can be replaced with [cEffectMsg_AllInMap](#cEffectMsg_AllInMap).
The _Result_ parameter can be either "Success" or "Fail".

```lua  title='Definition'
function cQuestResult(MapIndex, Result)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| Result | string |

```lua title='Example'
cQuestResult(Var["MapIndex"], "Success")
```

<hr></hr>

### cQuestResult_Individual

Shows either a success or failure message to the player specified through the _Handle_ parameter.
See [cQuestResult](#cQuestResult) for more information on the possible results.

```lua  title='Definition'
function cQuestResult_Individual(Handle, Result)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Result | string |

```lua title='Example'
cQuestResult_Individual(player, "Success")
```

<hr></hr>

### cRandom

This function is deprecated and can be replaced with [cRandomInt](#cRandomInt).

```lua  title='Definition'
function cRandom(LowerLimit, UpperLimit)
end
```

#### Arguments

| Name | Type |
|------|------|
| LowerLimit | number |
| UpperLimit | number |
#### Return values

| Name | Type |
|------|------|
| RandomNumber | number |

```lua title='Example'
local random = cRandom(1, 10)
```

<hr></hr>

### cRandomInt

Generates a random number between two values.

```lua  title='Definition'
function cRandomInt(LowerLimit, UpperLimit)
end
```

#### Arguments

| Name | Type |
|------|------|
| LowerLimit | number |
| UpperLimit | number |
#### Return values

| Name | Type |
|------|------|
| RandomNumber | number |

```lua title='Example'
local random = cRandomInt(1, 10)
```

<hr></hr>

### cResetAbstate

Reset abstate on object.

```lua  title='Definition'
function cResetAbstate(Handle, Abstate)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Abstate | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cResetAbstate(MobHandle, "StaImmortal")
```

<hr></hr>

### cRevivalAll

Revives all players on the map.

```lua  title='Definition'
function cRevivalAll(MapIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |

```lua title='Example'
cRevivalAll("Rou")
```

<hr></hr>

### cReward

Rewards all players some type of reward.<br/>
**NOTE:** This function is only used to credit Kingdom Quest rewards.
The _Type_ parameter can only be "KQ".

```lua  title='Definition'
function cReward(MapIndex, Type)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| Type | string |

```lua title='Example'
cReward("Rou", "KQ")
```

<hr></hr>

### cRewardItem

Rewards a player a specific item to the gift inventory.

```lua  title='Definition'
function cRewardItem(Handle, ItemIndex, ItemLot)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ItemIndex | string |
| ItemLot | number |

```lua title='Example'
cRewardItem(player, "El1", 5)
```

<hr></hr>

### cRewardItem_AllInMap

Rewards an item to all players on the map.

```lua  title='Definition'
function cRewardItem_AllInMap(MapIndex, ItemIndex, ItemLot)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| ItemIndex | string |
| ItemLot | number |

```lua title='Example'
cRewardItem_AllInMap("Rou", "El1", 5)
```

<hr></hr>

### cRewardItem_CharInven

Rewards an item to the player's inventory.

```lua  title='Definition'
function cRewardItem_CharInven(Handle, ItemIndex, ItemLot)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ItemIndex | string |
| ItemLot | number |

```lua title='Example'
cRewardItem_CharInven(player, "El1", 5)
```

<hr></hr>

### cRunTo

Lets a handle run to a specific position.

```lua  title='Definition'
function cRunTo(Handle, X, Y, Speed)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| X | number |
| Y | number |

```lua title='Example'
cRunTo(mobHandle, 5000, 5000, 1000)
```

<hr></hr>

### cRunToUntilBlock

Lets a handle run to a specific position until it hits a wall.

```lua  title='Definition'
function cRunToUntilBlock(Handle, X, Y, Speed)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| X | number |
| Y | number |
| Speed | number |

```lua title='Example'
cRunToUntilBlock(mobHandle, 5000, 5000, 1000)
```

<hr></hr>

### cScriptMessage

Sends notices on map from ScriptMsg.shn
Refer to printf format strings on how strings
are formatted and how to pass extra paramters

```lua  title='Definition'
function cScriptMessage(MapINX, MsgINX, ...)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapINX | string |
| MsgINX | string |
| ... | string |

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

```lua  title='Definition'
function cScriptMessage_Obj(Player, MsgINX, ...)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
| MsgINX | string |
| ... | string |

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

```lua  title='Definition'
function cScriptMessage_Range(Handle, Range, ScriptMsg, ...)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Range | number |
| ScriptMsg | string |
| ... | string |

```lua title='Example'
cScriptMessage_Range(mobHandle, 200, "SM_Msg", "Success")
```

<hr></hr>

### cScriptMsg

This function is deprecated and can be replaced with [cScriptMessage](#cScriptMessage).

```lua  title='Definition'
function cScriptMsg(MapIndex, ChatHandle, ScriptMsg, ...)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| ChatHandle | number |
| ScriptMsg | string |
| ... | string |

```lua title='Example'
cScriptMsg("Rou", nil, "SM_Msg", "Success")
```

<hr></hr>

### cScriptMsg_World

Sends a notice across the world from ScriptMsg.shn
Refer to printf format strings on how strings
are formatted and how to pass extra paramters

```lua  title='Definition'
function cScriptMsg_World(Unk, ScriptMsg, ...)
end
```

#### Arguments

| Name | Type |
|------|------|
| Unk | number |
| ScriptMsg | string |
| ... | string |

```lua title='Example'
cScriptMsg_World(nil, "SM_Msg", "Success")
```

<hr></hr>

### cServerMenu

Opens up a server menu for a player.
A server menu is a window like the one when entering a gate.
The YesFunction and NoFunction parameters are the functions that are called when the player clicks the Yes or No button.
The functions must be defined in the script.<br/>
The functions must have the following parameters:<br/>

```lua  title='Definition'
function cServerMenu(PlayerHandle, NPCHandle, Title, YesButton, YesFunction, NoButton, NoFunction)
end
```

#### Arguments

| Name | Type |
|------|------|
| PlayerHandle | number |
| NPCHandle | number |
| Title | string |
| YesButton | string |
| YesFunction | string |
| NoButton | string |
| NoFunction | string |

```lua title='Example'
cServerMenu(player, npcHandle, "Do you want to leave?", "Yes", "LeaveDungeon", "No", "EmptyFunction")
```

<hr></hr>

### cSetAbstate

Sets an Abstate on a Handle.

```lua  title='Definition'
function cSetAbstate(Handle, AbstateINX, AbstateSTR, KeepTime)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| AbstateINX | string |
| AbstateSTR | number |
| KeepTime | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetAbstate(player, "StaImmortal", 1, 2000000000)
```

<hr></hr>

### cSetAbstate_Range

Set Abstate in range for all objects of a specific type.

```lua  title='Definition'
function cSetAbstate_Range(Handle, Range, ObjectType, Index, Strength, KeepTime)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Range | string |
| ObjectType | number |
| Index | number |
| Strength | number |
| KeepTime | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetAbstate_Range(MobHandle, 1000, ObjectType.Mob, "StaImmortal", 1, 20000)
```

<hr></hr>

### cSetAbstateInArea

Set Abstate in a pre-defined area.<br/>
_Disclaimer: The areas used here are located in `Shine/AreaBMP`_

```lua  title='Definition'
function cSetAbstateInArea(MapInx, AbstateInx, AbstateStrength, AbstateKeepTime, AreaBMP, CenterX, CenterY)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapInx | number |
| AbstateInx | string |
| AbstateStrength | number |
| AbstateKeepTime | number |
| AreaBMP | string |
| CenterX | number |
| CenterY | number |

```lua title='Example'
cSetAbstateInArea(MapIndex, "StaBRNWarH", 1, 1000, "WarH_BossRoom", 22255, 12636)
```

<hr></hr>

### cSetAIScript

Sets script on an object associated with the handle.

```lua  title='Definition'
function cSetAIScript(LuaScriptPath, MobHandle)
end
```

#### Arguments

| Name | Type |
|------|------|
| LuaScriptPath | string |
| MobHandle | number|nil |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetAIScript("ID/AdlF/AdlF", mobHandle)
```

<hr></hr>

### cSetCanUseReviveItem

Sets wether the revive item can be used on a map.

```lua  title='Definition'
function cSetCanUseReviveItem(MapIndex, CanUse)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| CanUse | boolean |

```lua title='Example'
cSetCanUseReviveItem("Rou", false)
```

<hr></hr>

### cSetCanUseReviveSkill

Sets wether the revive skill can be used on a map.

```lua  title='Definition'
function cSetCanUseReviveSkill(MapIndex, CanUse)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| CanUse | boolean |

```lua title='Example'
cSetCanUseReviveSkill("Rou", false)
```

<hr></hr>

### cSetDeadDelayTime

Sets the death delay time for a handle.

```lua  title='Definition'
function cSetDeadDelayTime(Handle, Time)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Time | number |

```lua title='Example'
cSetDeadDelayTime(mobHandle, 10000)
```

<hr></hr>

### cSetFieldScript

Sets the script for the map.

```lua  title='Definition'
function cSetFieldScript(Field, Script)
end
```

#### Arguments

| Name | Type |
|------|------|
| Field | number |
| Script | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetFieldScript(MapIndex, "ID/BH_Karen/BH_Karen_P")
```

<hr></hr>

### cSetFreeBattle

Enables or disables the free battle (PVP) mode on a map.

```lua  title='Definition'
function cSetFreeBattle(MapIndex, Enabled)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| Enabled | boolean |

```lua title='Example'
cSetFreeBattle("Rou", true)
```

<hr></hr>

### cSetMobAttr

Sets an attribute on a mob.
Possible attributes are:<br/>

```lua  title='Definition'
function cSetMobAttr(Handle, Attribute, Value)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Attribute | string |
| Value | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetMobAttr(mobHandle, "MobAggro", 1000)
```

<hr></hr>

### cSetNPCIsItemDrop

Sets wether an NPC drops items or not.

```lua  title='Definition'
function cSetNPCIsItemDrop(Handle, Enabled)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Enabled | boolean |

```lua title='Example'
cSetNPCIsItemDrop(npcHandle, false)
```

<hr></hr>

### cSetNPCParam

Sets an attribute on an NPC.
Possible attributes are:<br/>

```lua  title='Definition'
function cSetNPCParam(Handle, Attribute, Value)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Attribute | string |
| Value | number |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetNPCParam(npcHandle, "HP", 1000)
```

<hr></hr>

### cSetNPCResist

Sets the resistance of an NPC.
Resistances are passed as a table. The table must contain the values from the example below.

```lua  title='Definition'
function cSetNPCResist(Handle, ResistanceTable)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ResistanceTable | table |

```lua title='Example'
local resistanceTable = { ResDot = 0, ResStun = 0, ResMoveSpeed = 0, ResFear = 0, ResBinding = 0, ResReverse = 0, ResMesmerize = 0, ResSeverBone = 0, ResKnockBack = 0, ResTBMinus = 0 }
cSetNPCResist(npcHandle, resistanceTable)
```

<hr></hr>

### cSetObjectDirect

Sets the direction an object is facing.

```lua  title='Definition'
function cSetObjectDirect(Handle, Direction)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Direction | number |

```lua title='Example'
cSetObjectDirect(mobHandle, 180)
```

<hr></hr>

### cSetReviveDelayTime

Sets the respawn time for a player in seconds.

```lua  title='Definition'
function cSetReviveDelayTime(MapIndex, DelayTime)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| DelayTime | number |

```lua title='Example'
cSetReviveDelayTime(Var["MapIndex"], 10)
```

<hr></hr>

### cSetServantFlag

Sets a flag on a servant. Only Flag `MobCanDamageTo` is known to work.

```lua  title='Definition'
function cSetServantFlag(Handle, Flag, Value)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Flag | string |
| Value | number |

```lua title='Example'
cSetServantFlag(servantHandle, "MobCanDamageTo", 1)
```

<hr></hr>

### cSetTeamBattle

Sets the team battle mode on a map. Only works in Kingdom Quests.

```lua  title='Definition'
function cSetTeamBattle(MapIndex, Active)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| Active | boolean |

```lua title='Example'
cSetTeamBattle("Rou", true)
```

<hr></hr>

### cShowCinematicText

Shows a cinematic text on the screen.
A letterbox effect is applied to the screen
and the text is displayed in the middle.
Interface elements are hidden.

```lua  title='Definition'
function cShowCinematicText(Handle, Message)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Message | string |

```lua title='Example'
cShowCinematicText(Var["Handle"], "Hello World!")
```

<hr></hr>

### cShowKQTimerWithLife

Shows the KQ timer on the screen for all players with remaining time and lifes.

```lua  title='Definition'
function cShowKQTimerWithLife(MapIndex, SecondLimit)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |
| SecondLimit | number |

```lua title='Example'
cShowKQTimerWithLife(MapIndex, 600)
```

<hr></hr>

### cShowKQTimerWithLife_Obj

Shows the KQ timer on the screen for a specific player with remaining time and lifes.

```lua  title='Definition'
function cShowKQTimerWithLife_Obj(Handle, SecondLimit)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| SecondLimit | number |

```lua title='Example'
cShowKQTimerWithLife_Obj(Handle, 600)
```

<hr></hr>

### cSimpleChatScriptMsg

Shows a chat bubble above the handle with a message from `ScriptMsg.shn`.

```lua  title='Definition'
function cSimpleChatScriptMsg(Handle, ScriptMsg)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ScriptMsg | string |

```lua title='Example'
cSimpleChatScriptMsg(mobHandle, "BH_Helga_Alert")
```

<hr></hr>

### cSkillBlast

Lets a handle cast a skill.

```lua  title='Definition'
function cSkillBlast(Handle, Handle2, SkillIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Handle2 | number |
| SkillIndex | number |

```lua title='Example'
cSkillBlast(mobHandle, mobHandle, "BH_Humar_Skill_N_APU")
```

<hr></hr>

### cStartMsg_AllInMap

Sends a start message to all players on a map.
It counts down from 5 to 1.

```lua  title='Definition'
function cStartMsg_AllInMap(MapIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | string |

```lua title='Example'
cStartMsg_AllInMap("Rou")
```

<hr></hr>

### cStaticDamage

Sets static damage on a handle.
Meaning the handle will always deal the same amount of damage.

```lua  title='Definition'
function cStaticDamage(Handle, Damage)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Damage | number |

```lua title='Example'
cStaticDamage(mobHandle, 1000)
```

<hr></hr>

### cStaticDamage_smo

Deprecated. Use `cStaticDamage` instead.

```lua  title='Definition'
function cStaticDamage_smo(Handle, Damage)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Damage | number |

```lua title='Example'
cStaticDamage_smo(mobHandle, 1000)
```

<hr></hr>

### cStaticMoverSpeed

Sets static movement speed on mounts for a handle.
Meaning the handle will always move at the same speed with it's mount.

```lua  title='Definition'
function cStaticMoverSpeed(Handle, Speed)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Speed | number |

```lua title='Example'
cStaticMoverSpeed(mobHandle, 1000)
```

<hr></hr>

### cStaticRunSpeed

Sets static movement speed on a handle.
Meaning the handle will always move at the same speed.

```lua  title='Definition'
function cStaticRunSpeed(Handle, Speed)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Speed | number |

```lua title='Example'
cStaticRunSpeed(mobHandle, 1000)
```

<hr></hr>

### cStaticSpeed

Deprecated. Use `cStaticRunSpeed` instead.

```lua  title='Definition'
function cStaticSpeed(Handle, Speed)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Speed | number |

```lua title='Example'
cStaticSpeed(handle, 1000)
```

<hr></hr>

### cStaticWalkSpeed

Sets static walk speed on a handle.

```lua  title='Definition'
function cStaticWalkSpeed(Handle, Speed)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| Speed | number |

```lua title='Example'
cStaticWalkSpeed(mobHandle, 1000)
```

<hr></hr>

### cSystemMessage_Obj

This function seems to be broken. At least it doesn't do anything.

```lua  title='Definition'
function cSystemMessage_Obj(Handle, ScriptFile, ScriptIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ScriptFile | string |
| ScriptIndex | string |

```lua title='Example'
cSystemMessage_Obj(player, "Event", "E_X_SysMsg_Fail1")
```

<hr></hr>

### cTargetChangeNull

Removes the target of a handle.
TargetHandle is the handle that will lose it's target.
Handle is the handle that will be removed as target.

```lua  title='Definition'
function cTargetChangeNull(TargetHandle, Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| TargetHandle | number |
| Handle | number |

```lua title='Example'
cTargetChangeNull(player, mobHandle)
```

<hr></hr>

### cTargetHandle

Returns the handle of the current target.

```lua  title='Definition'
function cTargetHandle(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
#### Return values

| Name | Type |
|------|------|
| TargetHandle | number&#124;nil |

```lua title='Example'
local target = cTargetHandle(player)
```

<hr></hr>

### cTimer

Start timer for all player on map that ticks down.
To make the timer disappear call again with Time = 0.

```lua  title='Definition'
function cTimer(Field, Time)
end
```

#### Arguments

| Name | Type |
|------|------|
| Field | number |
| Time | number |

```lua title='Example'
cTimer(MapIndex, 600)
```

<hr></hr>

### cTimer_Obj

Start timer for a specific player that ticks down.
To make the timer disappear call again with Time = 0.

```lua  title='Definition'
function cTimer_Obj(Player, Delay)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
| Delay | number |

```lua title='Example'
cTimer_Obj(Handle, 600)
```

<hr></hr>

### cTimerEnd

Ends timer for a specific player.

```lua  title='Definition'
function cTimerEnd(Player, Delay)
end
```

#### Arguments

| Name | Type |
|------|------|
| Player | number |
| Delay | number |

```lua title='Example'
cTimer(MapIndex, 600)
```

<hr></hr>

### cTimerStart

Starts timer for a specific player.
This function is deprecated. Use [cTimer_Obj](#cTimer_Obj) instead.

```lua  title='Definition'
function cTimerStart(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |

```lua title='Example'
cTimerStart(Handle)
```

<hr></hr>

### cUseMoney

Uses money from a player.
Returns true if the player had enough money.

```lua  title='Definition'
function cUseMoney(PlayerHandle, Amount)
end
```

#### Arguments

| Name | Type |
|------|------|
| PlayerHandle | number |
| Amount | number |
#### Return values

| Name | Type |
|------|------|
| HasEnoughMoney | boolean&#124;nil |

```lua title='Example'
local hasEnoughMoney = cUseMoney(player, 1000)
```

<hr></hr>

### cVanishAll

Kills all of a specified MobINX in a Map.

```lua  title='Definition'
function cVanishAll(Map, MobINX)
end
```

#### Arguments

| Name | Type |
|------|------|
| Map | string |
| MobINX | string |
#### Return values

| Name | Type |
|------|------|
| NumberOfVanishedMobs | number&#124;nil |

```lua title='Example'
cVanishAll("Rou", "Slime")
```

<hr></hr>

### cVanishReserv

Vanishes an NPC.
This function seems to be deprecated. Use [cVanish](#cVanish) instead.

```lua  title='Definition'
function cVanishReserv(NPCHandle, Unk)
end
```

#### Arguments

| Name | Type |
|------|------|
| NPCHandle | number |
| Unk | number |

```lua title='Example'
cVanishReserv(mobHandle, 3)
```

<hr></hr>

### cViewEquip

Equips a cosmetic outfit in an invisible slot.

```lua  title='Definition'
function cViewEquip(Handle, ItemIndex)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| ItemIndex | string |

```lua title='Example'
cViewEquip(player, "Cos_WesternPink01_1")
```

<hr></hr>

### cViewSlotUnEquipAll

Unequips all cosmetics in an invisible slot.

```lua  title='Definition'
function cViewSlotUnEquipAll(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |

```lua title='Example'
cViewSlotUnEquipAll(player)
```

<hr></hr>

### cWalkTo

Lets a handle walk to a position with a specific speed.

```lua  title='Definition'
function cWalkTo(Handle, X, Y, Speed)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | number |
| X | number |
| Y | number |
| Speed | number |

```lua title='Example'
cWalkTo(mobHandle, 100, 100, 1000)
```

<hr></hr>

### cWinter_Event_ScoreBoard_AllInMap

Shows a scoreboard for all players on a map.

```lua  title='Definition'
function cWinter_Event_ScoreBoard_AllInMap(MapIndex, Team01, Team02)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapIndex | number |
| Team01 | number |
| Team02 | number |

```lua title='Example'
cWinter_Event_ScoreBoard_AllInMap(MapIndex, 0, 0)
```

<hr></hr>

<br></br>

## Undocumented

<hr></hr>

### cPet_IsMasterCalling
```lua  title='Definition'
function cPet_IsMasterCalling()
end
```


<hr></hr>

### cPet_GetMind
```lua  title='Definition'
function cPet_GetMind()
end
```


<hr></hr>

### cPet_GetStress
```lua  title='Definition'
function cPet_GetStress()
end
```


<hr></hr>

### cPet_GetWalkSpeed
```lua  title='Definition'
function cPet_GetWalkSpeed()
end
```


<hr></hr>

### cPet_GetRunSpeed
```lua  title='Definition'
function cPet_GetRunSpeed()
end
```


<hr></hr>

### cPet_Unsummon
```lua  title='Definition'
function cPet_Unsummon()
end
```


<hr></hr>

### cPet_GetActionRecord
```lua  title='Definition'
function cPet_GetActionRecord()
end
```


<hr></hr>

### cPet_ChangeMind
```lua  title='Definition'
function cPet_ChangeMind()
end
```


<hr></hr>

### cPet_SaveTendency
```lua  title='Definition'
function cPet_SaveTendency()
end
```


<hr></hr>

### cEffectTimer
```lua  title='Definition'
function cEffectTimer(Handle, Index, Time)
end
```


<hr></hr>

### cFindAttackBlockLocate
```lua  title='Definition'
function cFindAttackBlockLocate(Handle, X, Y)
end
```


<hr></hr>

### cFreeStatInit
```lua  title='Definition'
function cFreeStatInit(Handle)
end
```


<hr></hr>

### cGetMaster
```lua  title='Definition'
function cGetMaster(Handle)
end
```


<hr></hr>

### cGetQuestHero_ItemUse
```lua  title='Definition'
function cGetQuestHero_ItemUse()
end
```


<hr></hr>

### cGetQuestHero_NPC
```lua  title='Definition'
function cGetQuestHero_NPC()
end
```


<hr></hr>

### cGetTutorialInfo
```lua  title='Definition'
function cGetTutorialInfo(Handle)
end
```


<hr></hr>

### cIsNoAttacOrNoMove
```lua  title='Definition'
function cIsNoAttacOrNoMove(Handle)
end
```


<hr></hr>

### cLocationRotate
```lua  title='Definition'
function cLocationRotate(X, Y, Angle)
end
```


<hr></hr>

### cMagicFieldSpread
```lua  title='Definition'
function cMagicFieldSpread(Handle, X, Y, Unk, SkillIndex, Unk2)
end
```


<hr></hr>

### cMapMark_FieldSight
```lua  title='Definition'
function cMapMark_FieldSight(MapIndex, X, Y, MarkData)
end
```


<hr></hr>

### cMapObjectControl
```lua  title='Definition'
function cMapObjectControl()
end
```


<hr></hr>

### cMobDialog_String
```lua  title='Definition'
function cMobDialog_String(MapIndex, Handle, Message)
end
```


<hr></hr>

### cMobRegen_XY_Layer
```lua  title='Definition'
function cMobRegen_XY_Layer(MapIndex, MobIndex, X, Y, Direction, LayerType, LayerNumberType, PlayerHandle)
end
```


<hr></hr>

### cMobWeaponRate
```lua  title='Definition'
function cMobWeaponRate(Handle, Values)
end
```


<hr></hr>

### cMove2Where
```lua  title='Definition'
function cMove2Where(Handle)
end
```


<hr></hr>

### cMoveLayer
```lua  title='Definition'
function cMoveLayer(Handle, LayerType, LayerNumberType)
end
```


<hr></hr>

### cObjectEffect
```lua  title='Definition'
function cObjectEffect(Handle, EffectFile)
end
```


<hr></hr>

### cRegenGroupActiv
```lua  title='Definition'
function cRegenGroupActiv(MapIndex, RegenIndex, Active)
end
```


<hr></hr>

### cSaveTutorialInfo
```lua  title='Definition'
function cSaveTutorialInfo(Handle, Unk, StepNo)
end
```


<hr></hr>

### cScoreBoard
```lua  title='Definition'
function cScoreBoard(Handle, Unk, RoundNumber, Team01WinCount, Team01Score, Team02WinCount, Team02Score)
end
```


<hr></hr>

### cScoreBoard_AllInMap
```lua  title='Definition'
function cScoreBoard_AllInMap(MapIndex, Unk, RoundNumber, Team01WinCount, Team01Score, Team02WinCount, Team02Score)
end
```


<hr></hr>

### cScoreInfo
```lua  title='Definition'
function cScoreInfo(Handle, MaximumTeams, Team01Score, Team02Score)
end
```


<hr></hr>

### cScoreInfo_AllInMap
```lua  title='Definition'
function cScoreInfo_AllInMap(MapIndex, MaximumTeams, Team01Score, Team02Score)
end
```


<hr></hr>

### cScoreResultList
```lua  title='Definition'
function cScoreResultList()
end
```


<hr></hr>

### cScoreTopList
```lua  title='Definition'
function cScoreTopList()
end
```


<hr></hr>

### cSendGameLogDataType_4
```lua  title='Definition'
function cSendGameLogDataType_4()
end
```


<hr></hr>

### cSendGameLogDataType_5
```lua  title='Definition'
function cSendGameLogDataType_5()
end
```


<hr></hr>

### cSendRankingList
```lua  title='Definition'
function cSendRankingList()
end
```


<hr></hr>

### cSetItemDropMobID
```lua  title='Definition'
function cSetItemDropMobID(Handle, ItemDropIndex)
end
```


<hr></hr>

### cSetSightState
```lua  title='Definition'
function cSetSightState(Handle, Active)
end
```


<hr></hr>

### cSkillDamageCalculate
```lua  title='Definition'
function cSkillDamageCalculate(Handle, SkillIndex, Target, Unk)
end
```


<hr></hr>

### cSomebodyShout
```lua  title='Definition'
function cSomebodyShout(MapIndex, ChatterIndex, ScriptFile, ScriptIndex)
end
```


<hr></hr>

### cTopView
```lua  title='Definition'
function cTopView()
end
```


<hr></hr>

### cTriggerRegist
```lua  title='Definition'
function cTriggerRegist()
end
```


<hr></hr>

### cVanishTimer
```lua  title='Definition'
function cVanishTimer(MapIndex)
end
```


<hr></hr>

### cWaitIdle
```lua  title='Definition'
function cWaitIdle(Handle)
end
```


<hr></hr>

### cWillMovement
```lua  title='Definition'
function cWillMovement(Handle)
end
```


<hr></hr>

