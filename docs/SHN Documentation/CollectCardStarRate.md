| CollectCardStarRate |                  |                 |
| ------------------- | ---------------- | --------------- |
| INX["CardGrade"]    | CC_CardGradeType | card grade      |
| BYTE                | CC_StarLot       | number of stars |
| WORD                | CC_StarRate      | percentage      |

## Enums
```bash
typedef enum CardGrade {
    CG_S_GRADE=0,
    CG_A_GRADE=1,
    CG_B_GRADE=2,
    CG_C_GRADE=3,
    MAX_CARDGRADE=4
} CardGrade;
```