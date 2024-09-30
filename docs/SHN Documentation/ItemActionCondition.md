| ItemActionCondition       |                   |                                                         |
| ------------------------- | ----------------- | ------------------------------------------------------- |
| WORD                      | ConditionID       | Condition ID                                            |
| DNX["ActionTargetType"]   | SubjectTarget     | The subject type of the condition (meaning the subject) |
| DNX["ActionTargetType"]   | ObjectTarget      | Target type of condition (means object)                 |
| DNX["ActionActivityType"] | ConditionActivity | Action type of condition                                |
| WORD                      | ActivityRate      | Probability of triggering a result (per thousand)       |
| WORD                      | Range             | distance from oneself                                   |

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