| MobInfo              |                |                                                                   |
| -------------------- | -------------- | ----------------------------------------------------------------- |
| Data Type            | Field Name     | Description                                                       |
| STR[32]              | InxName        | Monster unique index in English. No spaces.                       |
| STR[32]              | Name           | The name of the monster displayed on Clare.                       |
| DWORD                | Level          | Monster level                                                     |
| DWORD                | MaxHP          | Monster's Max HP                                                  |
| DWORD                | WalkSpeed      | Roaming speed.                                                    |
| DWORD                | RunSpeed       | Chasing speed.                                                    |
| BYTE                 | IsNPC          | 1 if NPC                                                          |
| DWORD                | Size           | You can increase or decrease the size of monsters.                |
| INX["WeaponTypeEnum"] | WeaponType     | Weapon type for setting hit sounds.                               |
| INX["ArmorTypeEnum"]  | ArmorType      | Armor type for the hit sound setting.                             |
| INX[T7]              | GradeType      | Setting the monster's rank.                                       |
| INX[U7]              | Type           | A monster's attributes.                                           |
| BYTE                 | IsPlayerSide   | 1 if on the player's side (enemy to the mob).                     |
| DWORD                | AbsoluteSize   | Distance from the mob's center to the mob's outline (1000=Range50).|

## Enums
```cpp
typedef enum WeaponTypeEnum {
    WT_NONE=0,
    WT_SWORD=1,
    WT_BOW=2,
    WT_STAFF=3,
    WT_AXE=4,
    WT_MACE=5,
    WT_SPIKE=6,
    WT_FIST=7,
    WT_BODY=8,
    WT_STONE=9,
    WT_CROSSBOW=10,
    WT_WAND=11,
    WT_SPEAR=12,
    WT_HAMMER=13,
    WT_SPECIAL=14,
    WT_PRODUCTIONTOOL=15,
    WT_INVINCIBLEHAMMER=16,
    WT_DSWORD=17,
    WT_CLAW=18,
    WT_BLADE=19,
    WT_RANGE_PY=20,
    WT_TSWORD=21,
    MAX_WEAPONTYPEENUM=22
} WeaponTypeEnum;
```
```cpp
typedef enum ArmorTypeEnum {
    AT_NONE=0,
    AT_CLOTH=1,
    AT_LEATHER=2,
    AT_SCALE=3,
    AT_PLATE=4,
    AT_BONE=5,
    AT_HARDSKIN=6,
    AT_WEAKSKIN=7,
    AT_BARTSKIN=8,
    AT_GELSKIN=9,
    AT_FURSKIN=10,
    AT_SPECIAL=11,
    MAX_ARMORTYPEENUM=12
} ArmorTypeEnum;
```
