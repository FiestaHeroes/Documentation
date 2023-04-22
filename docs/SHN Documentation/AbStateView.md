| AbStateView      |               |                                                                                                      |
| ---------------- | ------------- | ---------------------------------------------------------------------------------------------------- |
| SHINE_ABSTATE_ID | ID            | State Abnormal ID No. AbState, AbStateView Both sheets must have the same ID                         |
| STR[32]          | inxName       | State Abnormality Index AbState, AbStateView Both sheet indexes must be the same.                    |
| DWORD            | icon          | Icon number displayed on the status bar                                                              |
| STR[32]          | iconFile      | This is the name of the resource file containing the status abnormality icon.                        |
| STR[256]         | Descript      | Description of status abnormalities that appear when the mouse hovers over the status bar            |
| BYTE             | R             | Specifies the color displayed on the character when a status abnormality occurs.                     |
| BYTE             | G             |                                                                                                      |
| BYTE             | B             |                                                                                                      |
| STR[32]          | AniIndex      | An animation that plays when the status is abnormal. Index format: all with & in front               |
| STR[32]          | effName       | Effect when status abnormality starts                                                                |
| INX[X6]          | EffNamePos    | Specify the effect position                                                                          |
| BYTE             | EffRefresh    | Whether or not to show status ailments again when the character is linked (0: Do not show / 1: Show) |
| STR[32]          | LoopEffect    | The effect displayed while the status ailment lasts                                                  |
| INX[X6]          | LoopEffPos    | The location of the effect that is displayed while directly affected by status ailments              |
| STR[32]          | LastEffect    | The effect shown when the status abnormality is lifted                                               |
| INX[X6]          | LastEffectPos | The location of the effect shown when the status ailment is lifted                                   |
| STR[32]          | DOTEffect     | The index displayed when the dot status is abnormal                                                  |
| INX[X6]          | DOTEffectPos  | Dot Status Effect Location                                                                           |
| STR[16]          | IconSort      | Specifies whether the icon displayed on the status bar is a buff or debuff.                          |
| INX["StateType"] | TypeSort      | Specifies whether it is a skill, debuff, or scroll when a status abnormality occurs.                 |
| BYTE             | View          | Whether or not to show the status abnormality icon (0: Do not show / 1: Show)                        |