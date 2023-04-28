| AbState              |                    |                                                                                                                                          |
| -------------------- | ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| SHINE_ABSTATE_ID     | ID                 | Abnormal Status ID                                                                                                                       |
| STR[32]              | InxName            | State Abnormality Index Linked with StaName of ActiveSkill                                                                               |
| INX["ABSTATEINDEX"]  | AbStataIndex       | Status Abnormal Index Refers to the global index enum value.                                                                             |
| BYTE                 | KeepTimePower      | If the value is 1, you can increase skill power.                                                                                         |
| BYTE                 | StateGrade         | Divide status ailments into low, intermediate, and advanced levels.                                                                      |
| STR[32]              | PartyState1        | Abnormal conditions that can be cast when there is only one party member                                                                 |
| STR[32]              | PartyState2        | Abnormal conditions that can be cast when in a party of 2                                                                                |
| STR[32]              | PartyState3        | Abnormal conditions that can be cast when in a party of 3                                                                                |
| STR[32]              | PartyState4        | Abnormal conditions that can be cast when in a party of 4                                                                                |
| STR[32]              | PartyState5        | Abnormal conditions that can be cast when in a party of 5                                                                                |
| DWORD                | PartyRange         | If this part is not empty, PartyState is given to the person whose PartyEnchantNumber is in PartyRange every 5 seconds.                  |
| DWORD                | PartyEnchantNumber | Depending on the addition of party members, specify how many times to upgrade the party buff level until the number of additions         |
| STR[32]              | SubAbState         | Index of SubAbState to apply in this state or more                                                                                       |
| INX["DispelAttr"]    | DispelIndex        | A value that defines the resistance or cancellation of status ailments that the character receives from mobs                             |
| INX["SubDispelAttr"] | SubDispelIndex     | MobInfo The value that defines the state abnormality corresponding to the number displayed in the MobResist sheet of Excel.              |
| BYTE                 | IsSave             | Whether or not to save state abnormalities when linking                                                                                  |
| STR[32]              | MainStateInx       | If the state abnormality consists of Main and Sub, insert this value of the Sub state abnormality into the Main state abnormality index. |
| BYTE                 | Duplicate          | How many stacks are possible                                                                                                             |