| GTIServer            |               |                                                                                                                    |
| -------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------ |
| BYTE                 | ID            | Unique ID for all Gilto items                                                                                      |
| STR[33]              | InxName       | Unique index for all Gilto items                                                                                   |
| INX["TargetType"]    | SubjectTarget | Subject of effect (summoned subject or applied target)                                                             |
| BYTE                 | EnemyNumber   | The number of target targets, if 0, target all targets, if greater than 0, target randomly as many as that number. |
| INX["GTIActionType"] | GTIActionType | The type of action to be triggered (skill/status abnormality/summon, etc.)                                         |
| STR[32]              | Index         | Index according to the type of triggered action                                                                    |
| BYTE                 | Value         | In case of status abnormality, Strength is used, and in case of skill, it is used as 0                             |