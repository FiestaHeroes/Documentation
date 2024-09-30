| ChargedEffect          |               |                                                                                            |
| ---------------------- | ------------- | ------------------------------------------------------------------------------------------ |
| WORD                   | Handle        | Serial Number                                                                              |
| STR[32]                | ItemID        | Item Index                                                                                 |
| WORD                   | KeepTime_Hour | Time available, 0 is permanent.                                                            |
| INX["EffectEnumerate"] | EffectEnum    | Paid item type                                                                             |
| WORD                   | EffectValue   | The set value of the effect of the paid item. Abnormal state ID in case of abnormal state. |
| BYTE                   | StaStrength   | Strength to apply when EffectValue is abnormal                                             |

## Enums
```bash
typedef enum MHFO_EffectEnumerate {
    MHFO_EE_RECALL=0,
    MHFO_EE_ABSTATE=1,
    MHFO_EE_ITEMUSE=2,
    MHFO_EE_PORTAL=3,
    MAX_MHFO_EFFECTENUMERATE=4
} MHFO_EffectEnumerate;
```