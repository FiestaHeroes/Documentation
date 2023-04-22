| MIDungeon      |                   |                                                             |                                                                 |
| -------------- | ----------------- | ----------------------------------------------------------- | --------------------------------------------------------------- |
| SHINE_MAP_NAME | MID_MapInx        | map index                                                   |                                                                 |
| BYTE           | MID_MinLv         | Minimum level to participate                                |                                                                 |
| BYTE           | MID_MaxLv         | Maximum level to participate                                |                                                                 |
| BYTE           | MID_TankNum       | number of tanks required                                    |                                                                 |
| BYTE           | MID_HealNum       | number of healers needed                                    |                                                                 |
| BYTE           | MID_DealNum       | number of dealers required                                  |                                                                 |
| BYTE           | MID_MinUser       | Starting conditions Minimum number of people required       | If this number is satisfied, start immediately after StartTimeM |
| BYTE           | MID_MaxUser       | Maximum number of participants                              | Start immediately when this number is full                      |
| BYTE           | MID_MakeParty     | whether to make it a party                                  |                                                                 |
| BYTE           | MID_CompleteGroup | success group                                               | Dungeons in the same group share the number of successes.       |
| WORD           | MID_StartTimeM    | Waiting time until departure after MID_MinUser is satisfied |