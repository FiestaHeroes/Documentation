| ItemActionEffect          |                |                                                                                |
| ------------------------- | -------------- | ------------------------------------------------------------------------------ |
| WORD                      | EffectID       | Result ID                                                                      |
| DNX["ActionTargetType"]   | EffectTarget   | Target type to apply the result to                                             |
| DNX["ActionActivityType"] | EffectActivity | Result type to apply to EffectTarget                                           |
| WORD                      | Value          | The applied value of the resulting effect (ratio, scale, absolute value, etc.) |
| WORD                      | Area           | distance from oneself                                                          |

## Enums
```bash
typedef enum ActionTargetType {
    ATT_TargetType=0,
    ATT_MobGradeType=1,
    ATT_MobType=2,
    ATT_ChrClassType=3,
    MAX_ACTIONTARGETTYPE=4
} ActionTargetType;
```
```bash
typedef enum ActionActivityType {
    AAT_AttackType=0,
    AAT_RecoverType=1,
    AAT_ABSTATEINDEX=2,
    AAT_DispelAttr=3,
    AAT_TargetAction=4,
    AAT_SkillEffectIncreaseType=5,
    AAT_ActionRangeType=6,
    AAT_ActiveSkillGroupIndex=7,
    AAT_ActionETCType=8,
    AAT_SetItemEffectType=9,
    MAX_ACTIONACTIVITYTYPE=10
} ActionActivityType;
```
