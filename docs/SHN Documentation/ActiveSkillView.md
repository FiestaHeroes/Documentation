| ActiveSkillView   |                   |                                                                                            |
| ----------------- | ----------------- | ------------------------------------------------------------------------------------------ |
| SHINE_SKILL_ID    | ID                | Active skill unique ID                                                                     |
| STR[32]           | InxName           | Active Skill Unique Index                                                                  |
| DWORD             | CancelCasting     | Whether casting can be canceled                                                            |
| BYTE              | TargetChange      | Whether or not the skill applies the effect to you when casting without separate targeting |
| DWORD             | IconIndex         | Skill Icon Index                                                                           |
| STR[32]           | IconFile          | skill iphone filename                                                                      |
| DWORD             | R                 | Icon RGB value                                                                             |
| DWORD             | G                 | Icon RGB value                                                                             |
| DWORD             | B                 | Icon RGB value                                                                             |
| INX[AJ4]          | CastingType       | Whether it is a casting skill or not                                                       |
| INX[AK4]          | ActionType        | Whether there is a shooting effect or not                                                  |
| STR[32]           | CasRdyAction      | Casting ready action index (refer to action data)                                          |
| STR[32]           | CasAction         | Casting action index (refer to action data)                                                |
| STR[32]           | SwingAction       | Swing action index (refer to action data)                                                  |
| DWORD             | ShoEfSpd          | Shoot effect speed (default: 700)                                                          |
| STR[32]           | ShoEffect         | Shoot effect file name                                                                     |
| STR[32]           | ShoSnd            | Shoot effect sound file name                                                               |
| STR[32]           | LastAction        | Damage effect file name                                                                    |
| STR[32]           | LastEffectA       | The location where the damage effect is attached (position)                                |
| INX["LastEffPos"] | eLastEffPos       | damage effect sound                                                                        |
| STR[32]           | LastEfASnd        | field not used                                                                             |
| STR[32]           | LastAreaEf        | field not used                                                                             |
| STR[32]           | LastAEfWhe        | field not used                                                                             |
| STR[32]           | LastAESnd         | field not used                                                                             |
| STR[32]           | DOTRageEft        |                                                                                            |
| STR[32]           | DOTRageEftSnd     |                                                                                            |
| STR[32]           | DOTRageEftLoop    |                                                                                            |
| STR[32]           | DOTRageEftLoopSnd |                                                                                            |
| STR[256]          | Descript          | skill description                                                                          |
| DWORD             | uiDemandLv        | available level                                                                            |
| STR[128]          | Function          | skill description                                                                          |