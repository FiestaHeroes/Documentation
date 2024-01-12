| MobInfo               |
| --------------------- | ------------ | ------------------------------------------------------------------- |
| STR[32]               | InxName      | Monster unique index in English. No spaces.                         |
| STR[32]               | Name         | The name of the monster displayed on Clare.                         |
| DWORD                 | Level        | monster level                                                       |
| DWORD                 | MaxHP        | Monster's Max HP                                                    |
| DWORD                 | WalkSpeed    | Roaming speed.                                                      |
| DWORD                 | RunSpeed     | Chasing speed.                                                      |
| BYTE                  | IsNPC        | 1 value for NPC                                                     |
| DWORD                 | Size         | You can increase or decrease the size of monsters.                  |
| INX["WeaponTypeEnum"] | WeaponType   | Weapon type for setting hit sounds.                                 |
| INX["ArmorTypeEnum"]  | ArmorType    | An armor type for the hit sound setting.                            |
| INX[T7]               | GradeType    | Setting the monster's rank.                                         |
| INX[U7]               | Type         | A monster's attributes.                                             |
| BYTE                  | IsPlayerSide | A value of 1 on the side of the player, i.e. enemy to the mob.      |
| DWORD                 | AbsoluteSize | Distance from the mob's center to the mob's outline. (1000=Range50) |