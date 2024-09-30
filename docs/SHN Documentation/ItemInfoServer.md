| ItemInfoServer   |                        |                                                                                                    |
| ---------------- | ---------------------- | -------------------------------------------------------------------------------------------------- |
| DWORD            | ID                     | unique item ID                                                                                     |
| STR[32]          | InxName                | Item Unique Index                                                                                  |
| STR[20]          | MarketIndex            |                                                                                                    |
| BYTE_ARRAY(City) | Rou                    |                                                                                                    |
| BYTE_ARRAY(City) | Eld                    |                                                                                                    |
| BYTE_ARRAY(City) | Urg                    |                                                                                                    |
| BYTE_ARRAY(City) | All                    |                                                                                                    |
| BYTE_ARRAY(City) | Fer                    |                                                                                                    |
| BYTE_ARRAY(City) | Kas                    |                                                                                                    |
| BYTE_ARRAY(City) | Sad                    |                                                                                                    |
| BYTE_ARRAY(City) | Kor                    |                                                                                                    |
| BYTE_ARRAY(City) | Ver                    |                                                                                                    |
| BYTE_ARRAY(City) | Mys                    |                                                                                                    |
| STR[40]          | DropGroupA             | Drop index that matches the item drop table                                                        |
| STR[40]          | DropGroupB             | Drop index that matches the item drop table                                                        |
| STR[33]          | RandomOptionDropGroup  | A group of random options for an item. Matching with a random option table.                        |
| DWORD            | Vanish                 | Time taken to disappear after drop                                                                 |
| DWORD            | looting                | Time taken until rooting rights are released from the original owner and can be acquired by anyone |
| WORD             | DropRateKilledByMob    | Chance of dropping this item when killed by a mob                                                  |
| WORD             | DropRateKilledByPlayer | Probability of this item dropping when killed by another user                                      |
| INX["ISEType"]   | ISET_Index             | Equip location within the inventory - see ItemServerEquipTypeInfo                                  |
| BYTE             | KQItem                 |                                                                                                    |
| BYTE             | PK_KQ_USE              |                                                                                                    |
| BYTE             | KQ_Item_Drop           |                                                                                                    |
| BYTE             | PreventAttack          |                                                                                                    |

## Enums
```bash
typedef enum ISEType {
    ISET_NONEEQUIP=0,
    ISET_MINIMON=1,
    ISET_MINIMON_R=2,
    ISET_MINIMON_BOTH=3,
    ISET_COS_TAIL=4,
    ISET_COS_BACK=5,
    ISET_COS_RIGHT=6,
    ISET_COS_LEFT=7,
    ISET_COS_TWOHAND=8,
    ISET_COS_HEAD=9,
    ISET_COS_EYE=10,
    ISET_COS_3PIECE_AMOR=11,
    ISET_COS_3PIECE_PANTS=12,
    ISET_COS_3PIECE_BOOTS=13,
    ISET_COS_2PIECE_PANTS=14,
    ISET_COS_1PIECE=15,
    ISET_NORMAL_BOOTS=16,
    ISET_NORMAL_PANTS=17,
    ISET_RING=18,
    ISET_SHIELD=19,
    ISET_NORMAL_AMOR=20,
    ISET_WEAPON_RIGHT=21,
    ISET_WEAPON_TWOHAND=22,
    ISET_WEAPON_LEFT=23,
    ISET_EARRING=24,
    ISET_NORMAL_HAT=25,
    ISET_NECK=26,
    ISET_COS_MASK=27,
    ISET_INVINCIBLEHAMMER=28,
    ISET_COS_MASK_EYE=29,
    ISET_COS_HIDE_HEAD=30,
    ISET_COS_EFF=31,
    ISET_COS_SHIELD=32,
    ISET_BRACELET=33,
    MAX_ISETYPE=34
} ISEType;
```