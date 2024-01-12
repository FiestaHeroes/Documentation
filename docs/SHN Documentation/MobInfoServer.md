| MobInfoServer    |                   |                            |                                                        |
| ---------------- | ----------------- | -------------------------- | ------------------------------------------------------ |
| SHINE_MOB_ID      | ID                | mob ID                      | A unique value given to each monster.                   |
| STR[32]           | InxName           | mob index                   | Monster unique index in English. No spaces.             |
| BYTE              | Visible           | visible or not              | 0 = False, 1 = True.                                    |
| WORD              | AC                | physical defense            |                                                        |
| WORD              | TB                | Physical evasion            |                                                        |
| WORD              | MR                | magic defense               |                                                        |
| WORD              | MB                | magic evasion               |                                                        |
| INX[BT10]         | EnemyDetectType   | whether to go first         |                                                        |
| DWORD             | MonEXP            | monster experience          |                                                        |
| WORD              | EXPRange          | experience range            | Range to gain experience points.                        |
| WORD              | DetectCha         | cognizance                  | The distance at which the character can be recognized.  |
| WORD              | CutInterval       | Recognition block range     | A distance that breaks character recognition.           |
| DWORD             | CutNonAT          |                             |                                                        |
| DWORD             | FollowCha         | tracking range              | The distance at which the character can be tracked.     |
| WORD              | PceHPRcvDly       |                             | not used                                               |
| WORD              | PceHPRcv          |                             | not used                                               |
| WORD              | AtkHPRcvDly       |                             | not used                                               |
| WORD              | AtkHPRcv          |                             | not used                                               |
| WORD              | Str               | Physical Damage.            |                                                        |
| WORD              | Dex               | Evasion.                    |                                                        |
| WORD              | Con               | Constitution (HP)           |                                                        |
| WORD              | Int               | Intelligence Damage.        |                                                        |         
| WORD              | Men               | Mentality (SP)              |                                                        |
| INX[BR10]         | MobRaceType       | mob race                    |                                                        |
| BYTE              | Rank              | racial order                |                                                        |
| DWORD             | FamilyArea        |                             |                                                        |
| DWORD             | FamilyRescArea    |                             |                                                        |
| BYTE              | FamilyRescCount   |                             |                                                        |
| WORD              | BloodingResi      | bleeding resistance         | Replaced by MobResist. not used.                        |
| WORD              | StunResi          | stun resistance             | Replaced by MobResist. not used.                        |
| WORD              | MoveSpeedResi     | speed reduction resistance  | Replaced by MobResist. not used.                        |
| WORD              | FearResi          | fear resistance             | Replaced by MobResist. not used.                        |
| STR[32]           | ResIndex          | mob resistance              |                                                        |
| WORD              | KQKillPoint       |                             |                                                        |
| BYTE              | Return2Regen      |                             |                                                        |
| BYTE              | IsRoaming         |                             |                                                        |
| BYTE              | RoamingNumber     |                             |                                                        |
| WORD              | RoamingDistance   |                             |                                                        |
| WORD              | MaxSP             |                             |                                                        |
| BYTE              | BroadAtDead       | Announcement upon death.    |                                                        |
| WORD              | TurnSpeed         |                             |                                                        |
| WORD              | WalkChase         |                             |                                                        |
| BYTE              | AllCanLoot        |                             |                                                        |
| WORD              | DmgByHealMin      | Heal Min Damage             | Minimum amount of damage taken when using a heal        |
| WORD              | DmgByHealMax      | Heal Max Damage             | Maximum amount of damage inflicted when using a heal    |
