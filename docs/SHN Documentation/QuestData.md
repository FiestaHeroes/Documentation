Quest script identifiers for scenarios.

| SCENARIO NO | TYPE          | LEVEL | DETAIL                   |
|-------------|---------------|-------|--------------------------|
| 8           | MAP           | 20    | Shadow Dungeon           |
| 9           | CLASS CHANGE  | 20    | Upgrade                  |
| 11          | MAP           | 60    | Over Time and Space 1    |
| 12          | MAP           | 60    | Over Time and Space 2    |
| 13          | MAP           | 60    | Over Time and Space 3    |
| 14          | CLASS CHANGE  | 60    | Upgrade                  |
| 16          | CLASS CHANGE  | 100   | Gladiator                |
| 17          | CLASS CHANGE  | 100   | Knight                   |
| 18          | CLASS CHANGE  | 100   | Guardian                 |
| 19          | CLASS CHANGE  | 100   | HolyKnight               |
| 20          | CLASS CHANGE  | 100   | Ranger                   |
| 21          | CLASS CHANGE  | 100   | Sharpshooter             |
| 22          | CLASS CHANGE  | 100   | Warlock                  |
| 23          | CLASS CHANGE  | 100   | Wizard                   |
| 24          | CLASS CHANGE  | 100   | Spectre                  |
| 25          | CLASS CHANGE  | 100   | Reaper                   |
| 27          | CLASS CHANGE  | 100   | Templar                  |

Example:
```cpp
; Decision on a prestige class for a level 100 warrior.

; ID for QuestDialog.shn. Here's an example of how it might appear:
; [NAME], please choose your desired class! [BUTTON]=[Gladiator][1][BUTTON]=[Knight][2]
SAY 56902 NPC

; IF Statements
IF RESULT == 1 GOTO MARK1
IF RESULT == 2 GOTO MARK2
END

; Gladiator
:MARK1
ACCEPT
DONE
SCENARIO 16
END

; Knight
:MARK2
ACCEPT
DONE
SCENARIO 17
END

```