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
| END | integer | Returning this value will stop the zone from running any custom logic for the mob. It will be fully controlled by lua. | 1 |
| CPP | integer | Returning this value will make the zone run normal mob logic for this mob. | 2 |

### ObjectType

Types for objects.

| Name | Type | Description | Value |
|------|------|-------------|-------|
| Invalid | integer | - | -1 |
| Flag | integer | - | 0 |
| DropItem | integer | - | 1 |
| Player | integer | - | 2 |
| MiniHouse | integer | - | 3 |
| NPC | integer | - | 4 |
| Mob | integer | - | 5 |
| MagicField | integer | - | 6 |
| Door | integer | - | 7 |
| Bandit | integer | - | 8 |
| Effect | integer | - | 9 |
| Servant | integer | - | 10 |
| Mover | integer | - | 11 |
| Pet | integer | - | 12 |
| Max | integer | Max value for this field. Mostly used in conditional expressions to test if a value is actually valid. | 13 |

### BasicClass

BaseClass Enum. Use this to compare against the return value of functions returning this type.

| Name | Type | Description | Value |
|------|------|-------------|-------|
| None | integer | - | 0 |
| Fighter | integer | - | 1 |
| Cleric | integer | - | 6 |
| Archer | integer | - | 11 |
| Mage | integer | - | 16 |
| Joker | integer | - | 21 |
| Sentinel | integer | Needs to be manually added to common.lua | 26 |

### EFFECT_MSG_TYPE

| Name | Type | Description | Value |
|------|------|-------------|-------|
| EMT_WIN | integer | - | 0 |
| EMT_LOSE | integer | - | 1 |
| EMT_DRAW | integer | - | 2 |
| EMT_START | integer | - | 3 |
| EMT_COUNT_8_SEC | integer | - | 4 |
| EMT_SUCCESS | integer | - | 5 |
| EMT_FAIL | integer | - | 6 |
| EMT_START_OLYMPIC | integer | - | 7 |
| EMT_GOAL_OLYMPIC | integer | - | 8 |
| EMT_SOCCER_WIN | integer | - | 9 |
| EMT_SOCCER_LOSE | integer | - | 10 |
| EMT_SOCCER_DRAW | integer | - | 11 |
| EMT_SOCCER_KICK_OFF | integer | - | 12 |
| EMT_SOCCER_GOAL | integer | - | 13 |
| EMT_WATER_START | integer | - | 14 |

### CAMERA_STATE

| Name | Type | Description | Value |
|------|------|-------------|-------|
| NONE | integer | - | 0 |
| MOVING | integer | - | 1 |

### KQ_TEAM

| Name | Type | Description | Value |
|------|------|-------------|-------|
| RED | integer | - | 0 |
| BLUE | integer | - | 1 |
| MAX | integer | Max value for this field. Mostly used in conditional  expressions to test if a value is actually valid. | 2 |

### PlayerDamage

| Name | Type | Description | Value |
|------|------|-------------|-------|
| Handle | integer | - | - |
| DamageDealt | integer | - | - |
| DamageTaken | integer | - | - |
| HealingDone | integer | - | - |
| PlyName | string | - | - |

<br></br>

## Normal Functions

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

### cMobRegen_XY

Spawns a mob at position X Y.

```lua  title='Definition'
function cMobRegen_XY(MapINX, MobINX, X, Y, Direction)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapINX | string |
| MobINX | string |
| X | integer |
| Y | integer |
| Direction | integer |
#### Return values

| Name | Type |
|------|------|
| MobHandle | integer&#124;nil |

```lua title='Example'
local mobHandle = cMobRegen_XY("Rou", "Slime", 5000, 5000, 0)
```

<hr></hr>

### cMobRegen_Circle

Spawns a mob in a circle specified through X Y and Radius.

```lua  title='Definition'
function cMobRegen_Circle(MapINX, MobINX, X, Y, Radius)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapINX | string |
| MobINX | string |
| X | integer |
| Y | integer |
| Radius | integer |
#### Return values

| Name | Type |
|------|------|
| MobHandle | integer&#124;nil |

```lua title='Example'
local mobNumber = cMobRegen_Circle("Rou", "Slime", 5000, 5000, 100)
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
| Handle | integer |
#### Return values

| Name | Type |
|------|------|
| x | integer&#124;nil |
| y | integer&#124;nil |

```lua title='Example'
local playerX, playerY = cObjectLocate(player)
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
| ObjectType | integer |
#### Return values

| Name | Type |
|------|------|
| Amount | integer |

```lua title='Example'
local mobNumber = cObjectCount("Rou", ObjectType.Mob)
```

<hr></hr>

### cRandomInt

Generates a random integer between two values.

```lua  title='Definition'
function cRandomInt(LowerLimit, UpperLimit)
end
```

#### Arguments

| Name | Type |
|------|------|
| LowerLimit | integer |
| UpperLimit | integer |
#### Return values

| Name | Type |
|------|------|
| RandomNumber | integer |

```lua title='Example'
local random = cRandomInt(1, 10)
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
| CurSec | integer |

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
| CurSec | integer |

```lua title='Example'
local time = cCurrentSecond()
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
| Handle | integer |
#### Return values

| Name | Type |
|------|------|
| IsDead | boolean |

```lua title='Example'
cIsObjectDead(player)
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
| HandleTarget | integer |
| Handle | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cAIScriptSet(mobHandle, mobHandle2)
```

<hr></hr>

### cAIScriptSet

Resets the script of the object associated with the handle.

```lua  title='Definition'
function cAIScriptSet(Handle)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cAIScriptSet(mobHandle)
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
| MobHandle | integer|nil |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetAIScript("ID/AdlF/AdlF", mobHandle)
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
| NpcHandle | integer |

```lua title='Example'
cNPCVanish(npcHandle)
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
| Player | integer |
| MsgINX | string |
| ... | string |

```lua title='Example'
-- ScriptMsg - 1 - SM_Msg - "Test: %s"
-- Prints "Test: Success"
cScriptMessage_Obj(playerHandle, 1, "Success")
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
| Player | integer |
| ItemINX | string |
| Amount | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cInvenItemDestroy(playerHandle, 1, 1)
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
| Player | integer |
| ItemINX | string |
#### Return values

| Name | Type |
|------|------|
| ItemLot | integer&#124;nil |
| IsSlotBlocked | boolean&#124;nil |

```lua title='Example'
local lot, isBlocked = cGetItemLot(playerHandle, 1)
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
| Handle | integer |
#### Return values

| Name | Type |
|------|------|
| MapINX | string |

```lua title='Example'
local mapName = cGetCurMapIndex(playerHandle)
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
| Player | integer |
#### Return values

| Name | Type |
|------|------|
| PlayerName | string |

```lua title='Example'
local playerName = cGetPlayerName(playerHandle)
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
| Handle | integer|nil |
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

### cNPCMenuOpen

Opens the dialogue menu of an NPC to the selected player.

```lua  title='Definition'
function cNPCMenuOpen(NpcHandle, Player)
end
```

#### Arguments

| Name | Type |
|------|------|
| NpcHandle | integer |
| Player | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cNPCMenuOpen(npcHandle, PlayerHandle)
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
| NumberOfVanishedMobs | integer&#124;nil |

```lua title='Example'
cVanishAll("Rou", "Slime")
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
| Handle | integer |
#### Return values

| Name | Type |
|------|------|
| CurHP | integer |
| MaxHP | integer |

```lua title='Example'
local CurHP, MaxHP = cObjectHP(mob)
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

### cSetAbstate

Sets an Abstate on a Handle.

```lua  title='Definition'
function cSetAbstate(Handle, AbstateINX, AbstateSTR, KeepTime)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | integer |
| AbstateINX | string |
| AbstateSTR | integer |
| KeepTime | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetAbstate(player, "StaImmortal", 1, 2000000000)
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
| Player | integer |
| MapINX | string |
| X | integer |
| Y | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cLinkTo(player, "Rou", 5000, 5000)
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
| Player | integer |
#### Return values

| Name | Type |
|------|------|
| Level | integer |
| PlayerLevel | integer&#124;nil |

```lua title='Example'
local playerLevel = cGetLevel(player)
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
| Field | integer |
| Script | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetFieldScript(MapIndex, "ID/BH_Karen/BH_Karen_P")
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
| Mob | integer |
| Player | integer |

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
| Mob | integer |

```lua title='Example'
cKillObject(mobHandle)
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
| Time | integer |
| PlyList | PlayerList |

```lua title='Example'
cIndunRankResult(Field, 100, PlyList)
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
| Field | integer |
| Time | integer |

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
| Player | integer |
| Delay | integer |

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
| Player | integer |
| Delay | integer |

```lua title='Example'
cTimer(MapIndex, 600)
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
| Handle | integer |
#### Return values

| Name | Type |
|------|------|
| objectType | ObjectType&#124;nil |

```lua title='Example'
if cObjectType(Handle) == ObjectType.Player then
end
```

<hr></hr>

### cCastTeleport

Teleports object to a specific coordinate on the same map.
Be careful when using on players.
Other objects only get updated when they move.

```lua  title='Definition'
function cCastTeleport(Handle, Type, X, Y)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | integer |
| Type | string |
| X | integer |
| Y | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cCastTeleport(pPlayer, "SpecificCoord", 5000, 5000)
```

<hr></hr>

### cCastTeleport

Teleports object to a random place on the map.
Be careful when using on players.
Other objects only get updated when they move.

```lua  title='Definition'
function cCastTeleport(Handle, Type)
end
```

#### Arguments

| Name | Type |
|------|------|
| Handle | integer |
| Type | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cCastTeleport(pPlayer, "AnyWhere")
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
| Handle | integer |
| Abstate | string |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cResetAbstate(MobHandle, "StaImmortal")
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
| MapInx | integer |
| X | integer |
| Y | integer |
| Range | integer |
| ObjectType | integer |
| SearchType | string |
| MaxObjects | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
local players = { cGetNearObjListByCoord(Var["MapIndex"], 5000, 5000, 1000, ObjectType.Player, "so_ObjectType", 5 ) }
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
| Handle | integer |
| Range | string |
| ObjectType | integer |
| Index | integer |
| Strength | integer |
| KeepTime | integer |
#### Return values

| Name | Type |
|------|------|
| Success | boolean&#124;nil |

```lua title='Example'
cSetAbstate_Range(MobHandle, 1000, ObjectType.Mob, "StaImmortal", 1, 20000)
```

<hr></hr>

### cCameraMove

Set camera for all objects on map.

```lua  title='Definition'
function cCameraMove(MapInx, X, Y, AngleX, AngleY, Dist, MoveType)
end
```

#### Arguments

| Name | Type |
|------|------|
| MapInx | integer |
| X | integer |
| Y | integer |
| AngleX | integer |
| AngleY | integer |
| Dist | integer |
| MoveType | CameraState |

```lua title='Example'
cCameraMove(Var["MapIndex"], 5838, 12883, 0, 30, 600, CAMERA_STATE.MOVING)
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
| playerHandleArray | integer |

```lua title='Example'
local playerlist = { cGetPlayerList(Var["MapIndex"]) }
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
| DoorHandle | integer |
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
| Field | integer |
| DoorInx | string |
| X | integer |
| Y | integer |
| D | integer |
| Size | integer |
#### Return values

| Name | Type |
|------|------|
| DoorHandle | integer&#124;nil |

```lua title='Example'
local doorHandle = cDoorBuild(Var["MapIndex"], "Barrier02", 5311, 3321, 90, 1000)
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

