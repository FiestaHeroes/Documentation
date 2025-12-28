| StateField          |            |                                                                                        |
| ------------------- | ---------- | -------------------------------------------------------------------------------------- |
| STR[32]             | AbStateInx | Abnormal Status Index                                                                  |
| SHINE_MAP_NAME      | MapName    | the map                                                                                |
| INX["StateSetType"] | StateSet   | Whether or not the status ailment is canceled when entering the map or leaving the map |

## Enums
```cpp
typedef enum StateSetType {
    SST_NOT_HERE=0,
    SST_SET_HERE=1,
    MAX_STATESETTYPE=2
} StateSetType;
```