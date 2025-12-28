| GTIServer            |               |                                                                                                                    |
| -------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------ |
| BYTE                 | ID            | Unique ID for all Gilto items                                                                                      |
| STR[33]              | InxName       | Unique index for all Gilto items                                                                                   |
| INX["TargetType"]    | SubjectTarget | Subject of effect (summoned subject or applied target)                                                             |
| BYTE                 | EnemyNumber   | The number of target targets, if 0, target all targets, if greater than 0, target randomly as many as that number. |
| INX["GTIActionType"] | GTIActionType | The type of action to be triggered (skill/status abnormality/summon, etc.)                                         |
| STR[32]              | Index         | Index according to the type of triggered action                                                                    |
| BYTE                 | Value         | In case of status abnormality, Strength is used, and in case of skill, it is used as 0                             |

## Enums
```cpp
typedef enum TargetType {
    TARGET_ENEMY=0,
    TARGET_ME=1,
    TARGET_PARTY=2,
    TARGET_FRIEND=3,
    TARGET_SPOT=4,
    TARGET_ALL=5,
    TARGET_GROUP=6,
    TARGET_ENEMYUSER=7,
    TARGET_EVERY=8,
    TARGET_ENEMYGUILD=9,
    TARGET_MYGUILD=10,
    TARGET_MYNPC=11,
    TARGET_MYRAID=12,
    TARGET_BOX=13,
    TARGET_THISACTION=14,
    TARGET_ATTACKME=15,
    TARGET_DAMAGEBYME=16,
    TARGET_THISSKILL=17,
    TARGET_NONE=18,
    MAX_TARGETTYPE=19
} TargetType;
```
```cpp
typedef enum GTIActionType {
    GTIT_ACTISKILL=0,
    GTIT_ABSTATE=1,
    GTIT_FLAG=2,
    GTIT_MOBBREED=3,
    MAX_GTIACTIONTYPE=4
} GTIActionType;
```