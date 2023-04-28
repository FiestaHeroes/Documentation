| SubAbState              |              |                                                                               |
| ----------------------- | ------------ | ----------------------------------------------------------------------------- |
| SHINE_ABSTATE_ID        | ID           | When the SubAbState status abnormal ID is added, continue from the bottom ID. |
| STR[32]                 | InxName      | Interlocks with SubAbState of Sub State Abnormal Index AbState                |
| DWORD                   | Strength     | Specifies the status abnormality level                                        |
| INX["SubState"]         | Type         | abnormal status type                                                          |
| BYTE                    | SubType      |                                                                               |
| DWORD                   | KeepTime     | Specify status abnormality time                                               |
| INX["SubAbstateAction"] | ActionIndexA | Status Abnormality Attribute                                                  |
| DWORD                   | ActionArgA   | attribute value                                                               |
| INX["SubAbstateAction"] | ActionIndexB | Status Abnormality Attribute                                                  |
| DWORD                   | ActionArgB   | attribute value                                                               |
| INX["SubAbstateAction"] | ActionIndexC | Status Abnormality Attribute                                                  |
| DWORD                   | ActionArgC   | attribute value                                                               |
| INX["SubAbstateAction"] | ActionIndexD | Status Abnormality Attribute                                                  |
| DWORD                   | ActionArgD   | attribute value                                                               |