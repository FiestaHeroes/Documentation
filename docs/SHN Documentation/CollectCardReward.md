| CollectCardReward |                   |                        |
| ----------------- | ----------------- | ---------------------- |
| WORD              | CC_RewardID       | Collection reward ID   |
| INX["CardReward"] | CC_CardRewardType | reward card type       |
| WORD              | CC_CardLot        | card quantity          |
| STR[64]           | CC_RewardItemInx  | Reward item Inx        |
| WORD              | CC_RewardLot      | number of reward items |

## Enums
```bash
typedef enum CardReward {
    CR_ALL=0,
    CR_S=1,
    CR_A=2,
    CR_B=3,
    CR_C=4,
    MAX_CARDREWARD=5
} CardReward;
```