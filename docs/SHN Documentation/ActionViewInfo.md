| ActionViewInfo    |                 |                                                                                                 |
| ----------------- | --------------- | ----------------------------------------------------------------------------------------------- |
| BYTE              | nIndex          | Character animation unique ID                                                                   |
| STR[32]           | InxName         | Character Animation Unique Index                                                                |
| STR[32]           | ActionName      | anime name                                                                                      |
| WORD              | LinkActionIndex | nIndex (65535 is the default value that does not matter) which is a premise for this operation. |
| STR[32]           | IconFileName    | icon file name                                                                                  |
| WORD              | nIconNum        | icon number                                                                                     |
| INX["ActionType"] | eActionType     | Emotion classification type                                                                     |
| DWORD             | nEventCode      | The event code of the animation to run                                                          |
| DWORD             | nAfterCode      | The event code of the animation that will run and keep the animation (defaults to 0 if none)    |

## Enums
```bash
typedef enum ActionType {
    DEFAULT=0,
    EMOTION=1,
    CHARGED=2,
    MAX_ACTIONTYPE=3
} ActionType;
```