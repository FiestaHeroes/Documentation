| ItemInfo               |                     |                                                                    |
| ---------------------- | ------------------- | ------------------------------------------------------------------ |
| SHINE_ITEM_ID          | ID                  | unique item ID                                                     |
| STR[32]                | InxName             | Item Unique Index                                                  |
| STR[64]                | Name                | Item name displayed in game.                                       |
| INX["ItemTypeEnum"]    | Type                |                                                                    |
| INX["ItemClassEnum"]   | Class               |                                                                    |
| DWORD                  | MaxLot              | How many can you stack in one inventory slot?                      |
| INX["ItemEquipEnum"]   | Equip               |                                                                    |
| INX["AuctionSubGroup"] | ItemAuctionSubGroup | Which group of auction houses do you belong to?                    |
| BYTE                   | TwoHand             |                                                                    |
| DWORD                  | AtkSpeed            | flat attack speed                                                  |
| DWORD                  | DemandLv            | Minimum level required to wear and use items                       |
| DWORD                  | Grade               | Item's strength (smelting), grade (material)                       |
| DWORD                  | MinWC               | Minimum physical attack power                                      |
| DWORD                  | MaxWC               | Max physical attack power                                          |
| DWORD                  | AC                  | physical defense                                                   |
| DWORD                  | MinMA               | Minimum Magic Attack                                               |
| DWORD                  | MaxMA               | Max magic attack power                                             |
| DWORD                  | MR                  | magic defense                                                      |
| DWORD                  | WCRate              |                                                                    |
| DWORD                  | MARate              |                                                                    |
| DWORD                  | ACRate              |                                                                    |
| DWORD                  | MRRate              |                                                                    |
| DWORD                  | CriRate             |                                                                    |
| DWORD                  | CriMinWc            |                                                                    |
| DWORD                  | CriMaxWc            |                                                                    |
| DWORD                  | CriMinMa            |                                                                    |
| DWORD                  | CriMaxMa            |                                                                    |
| DWORD                  | CrlTB               |                                                                    |
| DWORD                  | MaxHP               |                                                                    |
| DWORD                  | MaxSP               |                                                                    |
| DWORD                  | MaxAP               |                                                                    |
| DWORD_BIT(WhoEquip)    |  dummy              |                                                                    |
| DWORD_BIT(WhoEquip)    | Fig                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Cfig                | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | War                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Gla                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Kni                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Cle                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Hcle                | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Pal                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Hol                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Gua                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Arc                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Harc                | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Sco                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Sha                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Ran                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Mag                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Wmag                | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Enc                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Warl                | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Wiz                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Jok                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Chs                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Cru                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Cls                 | Use of each job, whether or not it can be worn                     |
| DWORD_BIT(WhoEquip)    | Ass                 | Use of each job, whether or not it can be worn                     |
| DWORD                  | BuyPrice            | Price when buying in store                                         |
| DWORD                  | SellPrice           | price at store                                                     |
| DWORD                  | BuyFame             | Reputation consumed by purchase                                    |
| DWORD                  | BuyGToken           | Guild Token consumed by purchase                                   |
| DWORD                  | BuyGBCoin           | Gamble House Coin consumed by purchase                             |
| INX["WeaponTypeEnum"]  | WeaponType          |                                                                    |
| INX["ArmorTypeEnum"]   | ArmorType           |                                                                    |
| BYTE                   | UpLimit             | Maximum upgradeable limit                                          |
| WORD                   | UpSucRatio          |                                                                    |
| WORD                   | UpLuckRatio         |                                                                    |
| BYTE                   | UpResource          |                                                                    |
| WORD                   | BasicUpInx          |                                                                    |
| WORD                   | AddUpInx            |                                                                    |
| DWORD                  | TH                  |                                                                    |
| DWORD                  | TB                  |                                                                    |
| DWORD                  | ShieldAC            |                                                                    |
| DWORD                  | HitRatePlus         |                                                                    |
| DWORD                  | EvaRatePlus         |                                                                    |
| DWORD                  | MACriPlus           |                                                                    |
| DWORD                  | CriDamPlus          |                                                                    |
| DWORD                  | MagCriDamPlus       |                                                                    |
| BYTE                   | PutOnBelonged       | Bind on Acquire?                                                   |
| BYTE                   | Belonged            | Is it a bound item?                                                |
| BYTE                   | NoDrop              | Can't you throw it on the ground?                                  |
| BYTE                   | NoSell              | Can't sell to NPC shops?                                           |
| BYTE                   | NoStorage           | Can't you put it in storage?                                       |
| BYTE                   | NoTrade             | Can't trade between users?                                         |
| BYTE                   | NoDelete            | won't it be destroyed?                                             |
| STR[32]                | TitleName           |                                                                    |
| INX["GradeType"]       | ItemGradeType       |                                                                    |
| STR[32]                | ItemUseSkill        |                                                                    |
| STR[32]                | SetItemIndex        | Matching Index with set item (ItemAction) to apply set effect      |
| INX["ItemFuncEnum"]    | ItemFunc            | The special function of an item (e.g. items related to durability) |
| BYTE                   | AutoMon             | 1 only for minimons with auto-pickup                               |