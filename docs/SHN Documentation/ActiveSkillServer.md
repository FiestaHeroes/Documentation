| ActiveSkillServer            |                       |                                                                         |
| ---------------------------- | --------------------- | ----------------------------------------------------------------------- |
| WORD                         | ID                    | Active skill unique ID                                                  |
| STR[32]                      | InxName               | Active Skill Unique Index                                               |
| BYTE                         | UsualAttack           | Skills that inflict damage                                              |
| DWORD                        | SkilPyHitRate         | Probability of physical skill success                                   |
| DWORD                        | SkilMaHitRate         | Probability of magic skill success                                      |
| DWORD                        | PsySucRate            | not used                                                                |
| DWORD                        | MagSucRate            | not used                                                                |
| BYTE                         | StaLevel              |                                                                         |
| DWORD                        | DmgIncRate            |                                                                         |
| WORD                         | DmgIncValue           |                                                                         |
| INX["SkillHitType"]          | SkillHitType          | Skill hit type (physical/magic attack type, buff type, etc.)            |
| BYTE                         | ItremUseSkill         | Whether the skill uses the item                                         |
| DWORD                        | AggroPerDamage        | Aggro rate applied per damage                                           |
| DWORD                        | AbsoluteAggro         | Absolute amount of aggro                                                |
| BYTE                         | AttackStart           | Whether or not to start a normal attack immediately after using a skill |
| BYTE                         | AttackEnd             | Whether or not to maintain auto-attack immediately after using a skill  |
| WORD                         | SwingTime             | skill swing time                                                        |
| WORD                         | HitTime               | skill hit time                                                          |
| BYTE                         | AddSoul               | The number of souls accumulated after using a skill (Joker only)        |
| STR[32]                      | InxName               | Index of active skills to which groups belong                           |
| INX["ActiveSkillGroupIndex"] | ActiveSkillGroupIndex | Group index to which the skill belongs                                  |