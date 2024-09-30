| ActionRangeFactor      |                  |                                                                          |
| ---------------------- | ---------------- | ------------------------------------------------------------------------ |
| INX["ActionRangeType"] | ActionRangeIndex | Index of range condition to be used as condition                         |
| INX["RangeFactor"]     | RangeType        | Range type (HP section, level section, SP absolute amount section, etc.) |
| WORD                   | RangeStart       | range start value                                                        |
| WORD                   | RangeEnd         | range end value                                                          |

## Enums
```bash
typedef enum ActionRangeType {
    HP_RATE_0_20=0,
    Lv_0_40=1,
    SP_ABSOLUTE_0_1000=2,
    Lv_0_19=3,
    Lv_20_49=4,
    Lv_50_79=5,
    Lv_80_99=6,
    Lv_100_150=7,
    MAX_ACTIONRANGETYPE=8
} ActionRangeType;
```
```bash
typedef enum RangeFactor {
    RF_HP_RATE=0,
    RF_HP_ABSOLUTE=1,
    RF_SP_RATE=2,
    RF_SP_ABSOLUTE=3,
    RF_LV=4,
    MAX_RANGEFACTOR=5
} RangeFactor;
```