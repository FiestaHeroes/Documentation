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