| MHEmotion |                |                                                                           |
| --------- | -------------- | ------------------------------------------------------------------------- |
| WORD      | MHEmotionID    | Classification ID according to furniture type                             |
| BYTE      | ActionViewInfo | nIndex of animation in ActionViewInfo (if it is 255, it is no animation)  |
| BYTE      | ActionIndex    | Serial number within the same furniture type                              |
| DWORD     | EventCode      | The event code of the animation to run                                    |
| DWORD     | LegEventCode   | The event code for the specific leg movement required to do this movement |
| STR[32]   | Name           | The name of the animation (text)                                          |
| BYTE      | IconIndex      | Icon number to be displayed in the Furniture Emotion Menu                 |
| STR[16]   | IconFile       | Icon file name to be displayed in the Furniture Emotion menu              |