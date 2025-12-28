| ItemUseEffect        |                 |
| -------------------- | --------------- |
| Str[32]              | ItemIndex       |
| INX["UseEffectType"] | UseEffectA      |
| WORD                 | UseValueA       |
| INX["UseEffectType"] | UseEffectB      |
| WORD                 | UseValueB       |
| INX["UseEffectType"] | UseEffectC      |
| WORD                 | UseValueC       |
| Str[32]              | UseAbstateName  |
| DWORD                | UseAbstateIndex |

## Enums
```cpp
typedef enum UseEffectType {
    UE_HPUP=0,
    UE_SPUP=1,
    UE_POISONREMOVE=2,
    UE_DISEASEREMOVE=3,
    UE_ABSTATE=4,
    UE_CURSEREMOVE=5,
    UE_NONE=6,
    UE_HPSPALLUP=7,
    UE_DEBUFALLREMOVE=8,
    UE_ACTIONITEM=9,
    MAX_USEEFFECTTYPE=10
} UseEffectType;
```