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
| BYTE                   | TwoHand             | 0 = False, 1 = True.                                               |
| DWORD                  | AtkSpeed            | flat attack speed                                                  |
| DWORD                  | DemandLv            | Minimum level required to wear and use items                       |
| DWORD                  | Grade               | Item's strength (smelting), grade (material)                       |
| DWORD                  | MinWC               | Minimum physical attack power                                      |
| DWORD                  | MaxWC               | Max physical attack power                                          |
| DWORD                  | AC                  | physical defense                                                   |
| DWORD                  | MinMA               | Minimum Magic Attack                                               |
| DWORD                  | MaxMA               | Max magic attack power                                             |
| DWORD                  | MR                  | Magic defense                                                      |
| DWORD                  | WCRate              | Damage rate.  1000 = 100%                                          |
| DWORD                  | MARate              | M. Damage rate.  1000 = 100%                                       |
| DWORD                  | ACRate              | Defense rate.  1000 = 100%                                         |
| DWORD                  | MRRate              | M. Defense rate.  1000 = 100%                                      |
| DWORD                  | CriRate             | Critical rate.  1000 = 100%                                        |
| DWORD                  | CriMinWc            |                                                                    |
| DWORD                  | CriMaxWc            |                                                                    |
| DWORD                  | CriMinMa            |                                                                    |
| DWORD                  | CriMaxMa            |                                                                    |
| DWORD                  | CrlTB               |                                                                    |
| DWORD                  | MaxHP               |                                                                    |
| DWORD                  | MaxSP               |                                                                    |
| DWORD                  | MaxAP               |                                                                    |
| DWORD_BIT(WhoEquip)    | dummy               |                                                                    |
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
| DWORD                  | TH                  | Aim.                                                               |
| DWORD                  | TB                  | Evasion.                                                           |
| DWORD                  | ShieldAC            | Shield block rate. 1000 = 100%                                     |
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

## Enums
```bash
typedef enum ItemTypeEnum {
    ITEMTYPE_EQU=0,
    ITEMTYPE_EXH=1,
    ITEMTYPE_ETC=2,
    ITEMTYPE_QUEST=3,
    ITEMTYPE_STARTQUEST=4,
    ITEMTYPE_VIP=5,
    ITEMTYPE_CONFIRM=6,
    MAX_ITEMTYPEENUM=7
} ItemTypeEnum;
```
```bash
typedef enum ItemClassEnum {
    ITEMCLASS_BYTELOT=0,
    ITEMCLASS_WORDLOT=1,
    ITEMCLASS_DWRDLOT=2,
    ITEMCLASS_QUESTITEM=3,
    ITEMCLASS_AMULET=4,
    ITEMCLASS_WEAPON=5,
    ITEMCLASS_ARMOR=6,
    ITEMCLASS_SHIELD=7,
    ITEMCLASS_BOOT=8,
    ITEMCLASS_FURNITURE=9,
    ITEMCLASS_DECORATION=10,
    ITEMCLASS_SKILLSCROLL=11,
    ITEMCLASS_RECALLSCROLL=12,
    ITEMCLASS_BINDITEM=13,
    ITEMCLASS_UPSOURCE=14,
    ITEMCLASS_ITEMCHEST=15,
    ITEMCLASS_WTLICENCE=16,
    ITEMCLASS_KQ=17,
    ITEMCLASS_HOUSESKIN=18,
    ITEMCLASS_UPRED=19,
    ITEMCLASS_UPBLUE=20,
    ITEMCLASS_KQSTEP=21,
    ITEMCLASS_FEED=22,
    ITEMCLASS_RIDING=23,
    ITEMCLASS_AMOUNT=24,
    ITEMCLASS_UPGOLD=25,
    ITEMCLASS_COSWEAPON=26,
    ITEMCLASS_ACTIONITEM=27,
    ITEMCLASS_GBCOIN=28,
    ITEMCLASS_CAPSULE=29,
    ITEMCLASS_CLOSEDCARD=30,
    ITEMCLASS_OPENCARD=31,
    ITEMCLASS_MONEY=32,
    ITEMCLASS_NOEFFECT=33,
    ITEMCLASS_ENCHANT=34,
    ITEMCLASS_ACTIVESKILL=35,
    ITEMCLASS_PUP=36,
    ITEMCLASS_COSSHIELD=37,
    ITEMCLASS_BRACELET=38,
    MAX_ITEMCLASSENUM=39
} ItemClassEnum;
```
```bash
typedef enum ItemEquipEnum {
    ITEMEQUIP_NONE=0,
    ITEMEQUIP_HAT=1,
    ITEMEQUIP_NOUSE03=2,
    ITEMEQUIP_NOUSE01=3,
    ITEMEQUIP_NOUSE02=4,
    ITEMEQUIP_FACETATTOO=5,
    ITEMEQUIP_NECKLACE=6,
    ITEMEQUIP_BODY=7,
    ITEMEQUIP_BODYACC=8,
    ITEMEQUIP_BACK=9,
    ITEMEQUIP_LEFTHAND=10,
    ITEMEQUIP_LEFTHANDACC=11,
    ITEMEQUIP_RIGHTHAND=12,
    ITEMEQUIP_RIGHTHANDACC=13,
    ITEMEQUIP_BRACELET=14,
    ITEMEQUIP_LEFTRING=15,
    ITEMEQUIP_RIGHTRING=16,
    ITEMEQUIP_COSEFF=17,
    ITEMEQUIP_TAIL=18,
    ITEMEQUIP_LEG=19,
    ITEMEQUIP_LEGACC=20,
    ITEMEQUIP_SHOES=21,
    ITEMEQUIP_SHOESACC=22,
    ITEMEQUIP_EARRING=23,
    ITEMEQUIP_MOUTH=24,
    ITEMEQUIP_MINIMON=25,
    ITEMEQUIP_EYE=26,
    ITEMEQUIP_HATACC=27,
    ITEMEQUIP_MINIMON_R=28,
    ITEMEQUIP_SHIELDACC=29,
    MAX_ITEMEQUIPENUM=30
} ItemEquipEnum;
```
```bash
typedef enum AuctionGroup {
    AG_ALL=0,
    AG_M_WEAPON=1,
    AG_M_ARMOR=2,
    AG_M_ACCESSORY=3,
    AG_M_PRODUCE=4,
    AG_M_ENCHANT=5,
    AG_M_RAW=6,
    AG_M_ETC=7,
    AG_S_ONEHANDSWORD=8,
    AG_S_TWOHANDSWORD=9,
    AG_S_AXE=10,
    AG_S_MACE=11,
    AG_S_HAMMER=12,
    AG_S_BOW=13,
    AG_S_CBOW=14,
    AG_S_STAFF=15,
    AG_S_WAND=16,
    AG_S_CLAW=17,
    AG_S_DSWORD=18,
    AG_S_FIGHTER=19,
    AG_S_CLERIC=20,
    AG_S_ARCHER=21,
    AG_S_MAGE=22,
    AG_S_JOKER=23,
    AG_S_NECK=24,
    AG_S_EARRING=25,
    AG_S_RING=26,
    AG_S_SCROLL=27,
    AG_S_POTION=28,
    AG_S_STONE=29,
    AG_S_FOOD=30,
    AG_S_ENCHANT=31,
    AG_S_PRODRAW=32,
    AG_S_FARM=33,
    AG_S_MOVER=34,
    AG_S_MINIHOUSE=35,
    AG_S_COSTUME=36,
    AG_S_ABILLITY=37,
    AG_S_EMOTION=38,
    AG_S_ETC=39,
    AG_S_BLADE=40,
    AG_S_SENTINEL=41,
    AG_S_BRACELET=42,
    MAX_AUCTIONGROUP=43
} AuctionGroup;
```
```bash
typedef enum WeaponTypeEnum {
    WT_NONE=0,
    WT_SWORD=1,
    WT_BOW=2,
    WT_STAFF=3,
    WT_AXE=4,
    WT_MACE=5,
    WT_SPIKE=6,
    WT_FIST=7,
    WT_BODY=8,
    WT_STONE=9,
    WT_CROSSBOW=10,
    WT_WAND=11,
    WT_SPEAR=12,
    WT_HAMMER=13,
    WT_SPECIAL=14,
    WT_PRODUCTIONTOOL=15,
    WT_INVINCIBLEHAMMER=16,
    WT_DSWORD=17,
    WT_CLAW=18,
    WT_BLADE=19,
    WT_RANGE_PY=20,
    WT_TSWORD=21,
    MAX_WEAPONTYPEENUM=22
} WeaponTypeEnum;
```
```bash
typedef enum ArmorTypeEnum {
    AT_NONE=0,
    AT_CLOTH=1,
    AT_LEATHER=2,
    AT_SCALE=3,
    AT_PLATE=4,
    AT_BONE=5,
    AT_HARDSKIN=6,
    AT_WEAKSKIN=7,
    AT_BARTSKIN=8,
    AT_GELSKIN=9,
    AT_FURSKIN=10,
    AT_SPECIAL=11,
    MAX_ARMORTYPEENUM=12
} ArmorTypeEnum;
```
```bash
typedef enum GradeType {
    GT_NORMAL=0,
    GT_NAMED=1,
    GT_RARE=2,
    GT_UNIQUE=3,
    GT_CHARGE=4,
    GT_SET=5,
    GT_LEGENDARY=6,
    GT_MYTHIC=7,
    MAX_GRADETYPE=8
} GradeType;
```
```bash
typedef enum ItemFuncEnum {
    ITEMFUNC_NONE=0,
    ITEMFUNC_ENDUREKIT_WC=1,
    ITEMFUNC_ENDUREKIT_F=2,
    ITEMFUNC_JUSTREVIVAL=3,
    ITEMFUNC_CHANGE_NAME=4,
    ITEMFUNC_CHANGE_RELATION=5,
    ITEMFUNC_PUTON_CLEAR=6,
    MAX_ITEMFUNCENUM=7
} ItemFuncEnum;
```

## WhoEquip Values (TW2008 / CN2012)

| Class Combination                                      | WhoEquip  |
| ------------------------------------------------------ | --------- |
| Fighter                                                | 2         |
| CleverFighter                                          | 4         |
| Warrior                                                | 8         |
| Gladiator                                              | 16        |
| Knight                                                 | 32        |
| Fighter + CleverFighter                                | 6         |
| Fighter + Warrior                                      | 10        |
| Fighter + Gladiator                                    | 18        |
| Fighter + Knight                                       | 34        |
| CleverFighter + Warrior                                | 12        |
| CleverFighter + Gladiator                              | 20        |
| CleverFighter + Knight                                 | 36        |
| Warrior + Gladiator                                    | 24        |
| Warrior + Knight                                       | 40        |
| Gladiator + Knight                                     | 48        |
| Fighter + CleverFighter + Warrior                      | 14        |
| Fighter + CleverFighter + Gladiator                    | 22        |
| Fighter + CleverFighter + Knight                       | 38        |
| Fighter + Warrior + Gladiator                          | 26        |
| Fighter + Warrior + Knight                             | 42        |
| Fighter + Gladiator + Knight                           | 50        |
| CleverFighter + Warrior + Gladiator                    | 28        |
| CleverFighter + Warrior + Knight                       | 44        |
| CleverFighter + Gladiator + Knight                     | 52        |
| Warrior + Gladiator + Knight                           | 56        |
| Fighter + CleverFighter + Warrior + Gladiator          | 30        |
| Fighter + CleverFighter + Warrior + Knight             | 46        |
| Fighter + CleverFighter + Gladiator + Knight           | 54        |
| Fighter + Warrior + Gladiator + Knight                 | 58        |
| CleverFighter + Warrior + Gladiator + Knight           | 60        |
| Fighter + CleverFighter + Warrior + Gladiator + Knight | 62        |
| Cleric                                                 | 256       |
| HighCleric                                             | 512       |
| Paladin                                                | 1024      |
| HolyKnight                                             | 2048      |
| Guardian                                               | 4096      |
| Cleric + HighCleric                                    | 768       |
| Cleric + Paladin                                       | 1280      |
| Cleric + HolyKnight                                    | 2304      |
| Cleric + Guardian                                      | 4352      |
| HighCleric + Paladin                                   | 1536      |
| HighCleric + HolyKnight                                | 2560      |
| HighCleric + Guardian                                  | 4608      |
| Paladin + HolyKnight                                   | 3072      |
| Paladin + Guardian                                     | 5120      |
| HolyKnight + Guardian                                  | 6144      |
| Cleric + HighCleric + Paladin                          | 1792      |
| Cleric + HighCleric + HolyKnight                       | 2816      |
| Cleric + HighCleric + Guardian                         | 4864      |
| Cleric + Paladin + HolyKnight                          | 3328      |
| Cleric + Paladin + Guardian                            | 5376      |
| Cleric + HolyKnight + Guardian                         | 6400      |
| HighCleric + Paladin + HolyKnight                      | 3584      |
| HighCleric + Paladin + Guardian                        | 5632      |
| HighCleric + HolyKnight + Guardian                     | 6656      |
| Paladin + HolyKnight + Guardian                        | 8192      |
| Cleric + HighCleric + Paladin + HolyKnight             | 3840      |
| Cleric + HighCleric + Paladin + Guardian               | 5888      |
| Cleric + HighCleric + HolyKnight + Guardian            | 6912      |
| Cleric + Paladin + HolyKnight + Guardian               | 8448      |
| HighCleric + Paladin + HolyKnight + Guardian           | 8704      |
| Cleric + HighCleric + Paladin + HolyKnight + Guardian  | 12928     |
| Archer                                                 | 32768     |
| HawkArcher                                             | 65536     |
| Scout                                                  | 131072    |
| SharpShooter                                           | 262144    |
| Ranger                                                 | 524288    |
| Archer + HawkArcher                                    | 98304     |
| Archer + Scout                                         | 163840    |
| Archer + SharpShooter                                  | 294912    |
| Archer + Ranger                                        | 557056    |
| HawkArcher + Scout                                     | 196608    |
| HawkArcher + SharpShooter                              | 327680    |
| HawkArcher + Ranger                                    | 589824    |
| Scout + SharpShooter                                   | 393216    |
| Scout + Ranger                                         | 655360    |
| SharpShooter + Ranger                                  | 786432    |
| Archer + HawkArcher + Scout                            | 229376    |
| Archer + HawkArcher + SharpShooter                     | 360448    |
| Archer + HawkArcher + Ranger                           | 622592    |
| Archer + Scout + SharpShooter                          | 426240    |
| Archer + Scout + Ranger                                | 688384    |
| Archer + SharpShooter + Ranger                         | 819456    |
| HawkArcher + Scout + SharpShooter                      | 458752    |
| HawkArcher + Scout + Ranger                            | 720896    |
| HawkArcher + SharpShooter + Ranger                     | 851968    |
| Scout + SharpShooter + Ranger                          | 983040    |
| Archer + HawkArcher + Scout + SharpShooter             | 589824    |
| Archer + HawkArcher + Scout + Ranger                   | 851968    |
| Archer + HawkArcher + SharpShooter + Ranger            | 983040    |
| Archer + Scout + SharpShooter + Ranger                 | 1114112   |
| HawkArcher + Scout + SharpShooter + Ranger             | 1245184   |
| Archer + HawkArcher + Scout + SharpShooter + Ranger    | 1835008   |
| Mage                                                   | 4194304   |
| WizMage                                                | 8388608   |
| Enchanter                                              | 16777216  |
| Warlock                                                | 33554432  |
| Wizard                                                 | 67108864  |
| Mage + WizMage                                         | 12582912  |
| Mage + Enchanter                                       | 20971520  |
| Mage + Warlock                                         | 37748736  |
| Mage + Wizard                                          | 71303168  |
| WizMage + Enchanter                                    | 25165824  |
| WizMage + Warlock                                      | 41943040  |
| WizMage + Wizard                                       | 75497472  |
| Enchanter + Warlock                                    | 50331648  |
| Enchanter + Wizard                                     | 83886080  |
| Warlock + Wizard                                       | 100663296 |
| Mage + WizMage + Enchanter                             | 29360128  |
| Mage + WizMage + Warlock                               | 46137344  |
| Mage + WizMage + Wizard                                | 79691776  |
| Mage + Enchanter + Warlock                             | 54525952  |
| Mage + Enchanter + Wizard                              | 88080384  |
| Mage + Warlock + Wizard                                | 110100992 |
| WizMage + Enchanter + Warlock                          | 58720256  |
| WizMage + Enchanter + Wizard                           | 92274688  |
| WizMage + Warlock + Wizard                             | 114294016 |
| Enchanter + Warlock + Wizard                           | 150994944 |
| Mage + WizMage + Enchanter + Warlock                   | 83927040  |
| Mage + WizMage + Enchanter + Wizard                    | 117835072 |
| Mage + WizMage + Warlock + Wizard                      | 150994304 |
| Mage + Enchanter + Warlock + Wizard                    | 187695232 |
| WizMage + Enchanter + Warlock + Wizard                 | 218103040 |
| Mage + WizMage + Enchanter + Warlock + Wizard          | 262144576 |
| Trickster                                              | 65011712  |
| Gambit                                                 | 62914560  |
| Renegade                                               | 58720256  |
| Reaper                                                 | 33554432  |
| Spectre                                                | 16777216  |
| Trickster + Gambit                                     | 127506272 |
| Trickster + Renegade                                   | 123717568 |
| Trickster + Reaper                                     | 98566144  |
| Trickster + Spectre                                    | 81788928  |
| Gambit + Renegade                                      | 121892608 |
| Gambit + Reaper                                        | 96468992  |
| Gambit + Spectre                                       | 79691776  |
| Renegade + Reaper                                      | 92274688  |
| Renegade + Spectre                                     | 75507472  |
| Reaper + Spectre                                       | 50331648  |
| Trickster + Gambit + Renegade                          | 186646784 |
| Trickster + Gambit + Reaper                            | 165806592 |
| Trickster + Gambit + Spectre                           | 162017888 |
| Trickster + Renegade + Reaper                          | 162017888 |
| Trickster + Renegade + Spectre                         | 158452320 |
| Trickster + Reaper + Spectre                           | 138612480 |
| Gambit + Renegade + Reaper                             | 160933120 |
| Gambit + Renegade + Spectre                            | 156627360 |
| Gambit + Reaper + Spectre                              | 136527712 |
| Renegade + Reaper + Spectre                            | 132739008 |
| Trickster + Gambit + Renegade + Reaper                 | 292761856 |
| Trickster + Gambit + Renegade + Spectre                | 340795808 |
| Trickster + Gambit + Reaper + Spectre                  | 317390048 |
| Trickster + Renegade + Reaper + Spectre                | 317390048 |
| Gambit + Renegade + Reaper + Spectre                   | 312946432 |
| Trickster + Gambit + Renegade + Reaper + Spectre       | 629145600 |