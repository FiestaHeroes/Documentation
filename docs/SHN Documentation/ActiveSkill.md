| ActiveSkill             |                  |                                                                                                                                                                                                                                                         |
| ----------------------- | ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| SHINE_SKILL_ID          | ID               | Active skill unique ID                                                                                                                                                                                                                                  |
| STR[32]                 | InxName          | Active Skill Unique Index                                                                                                                                                                                                                               |
| STR[64]                 | Name             | Skill name to be displayed on screen                                                                                                                                                                                                                    |
| DWORD                   | Grade            |                                                                                                                                                                                                                                                         |
| DWORD                   | Step             | skill level                                                                                                                                                                                                                                             |
| DWORD                   | MaxStep          | Highest level of this skill                                                                                                                                                                                                                             |
| INX["WeaponDemandType"] | DemandType       | Whether or not the equipped weapon is a condition for using the skill                                                                                                                                                                                   |
| STR[32]                 | DemandSk         | A skill that is a prerequisite for this skill                                                                                                                                                                                                           |
| SHINE_ITEM_ID           | UseItem          |                                                                                                                                                                                                                                                         |
| DWORD                   | ItemNumber       |                                                                                                                                                                                                                                                         |
| DWORD                   | ItemOption       |                                                                                                                                                                                                                                                         |
| SHINE_ITEM_ID           | DemandItem1      |                                                                                                                                                                                                                                                         |
| SHINE_ITEM_ID           | DemandItem2      |                                                                                                                                                                                                                                                         |
| DWORD                   | SP               | Amount of SP consumed when using skills                                                                                                                                                                                                                 |
| DWORD                   | HP               | Amount of HP consumed when using skills                                                                                                                                                                                                                 |
| DWORD                   | Range            | Range at which the skill can be used                                                                                                                                                                                                                    |
| INX["TargetType"]       | First            | Target to choose to use skill                                                                                                                                                                                                                           |
| INX["TargetType"]       | Last             | The target to which the effect of the skill is applied                                                                                                                                                                                                  |
| BYTE                    | IsMovingSkill    | Whether it is a skill that can be used while moving                                                                                                                                                                                                     |
| WORD                    | UsableDegree     | The angle at which the skill can be used relative to the front                                                                                                                                                                                          |
| WORD                    | DirectionRotate  | An angle centered on the first target that takes damage, and an angle based on the target when inflicting damage to nearby targets                                                                                                                      |
| WORD                    | SkillDegree      | The angle at which damage/status effects are applied when a skill is used.                                                                                                                                                                              |
| INX["TargetState"]      | SkillTargetState | Whether the target that can use the skill is alive or dead                                                                                                                                                                                              |
| WORD                    | CastTime         | Skill casting time. For mob skills, follow the factors in MobWeapon.                                                                                                                                                                                    |
| DWORD                   | DlyTime          | The time from when you use a skill until you can use it again. delay time.                                                                                                                                                                              |
| DWORD                   | DlyGroupNum      | Skills with the same ID are tied to world cooldown.                                                                                                                                                                                                     |
| DWORD                   | DlyTimeGroup     | world cooldown                                                                                                                                                                                                                                          |
| DWORD                   | MinWC            | Skill's Minimum Physical Attack                                                                                                                                                                                                                         |
| DWORD                   | MaxWC            | Skill's maximum physical attack power                                                                                                                                                                                                                   |
| DWORD                   | MinMA            | Skill's Minimum Magic Attack                                                                                                                                                                                                                            |
| DWORD                   | MaxMA            | Skill's maximum magic attack power                                                                                                                                                                                                                      |
| DWORD                   | AC               | Physical Defense (No skill currently used. 2010.09.15)                                                                                                                                                                                                  |
| DWORD                   | MR               | Magic Defense (No skill currently used. 2010.09.15)                                                                                                                                                                                                     |
| DWORD                   | Area             | Range of wide-area skills                                                                                                                                                                                                                               |
| DWORD                   | TargetNumber     | 1 in case of single, maximum number of targets to apply damage (or abnormal condition) in case of wide area                                                                                                                                             |
| DWORD_BIT(DemandClass)  | dummy            | WhoEquip value from ItemInfo.shn                                                                                                                                                                                                                        | 
| DWORD_BIT(DemandClass)  | Fig              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Cfig             | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | War              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Gla              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Kni              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Cle              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Hcle             | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Pal              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Hol              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Gua              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Arc              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Harc             | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Sco              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Sha              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Ran              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Mag              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Wmag             | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Enc              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Warl             | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Wiz              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Jok              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Chs              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Cru              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Cls              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| DWORD_BIT(DemandClass)  | Ass              | Whether each class can use this skill or not.                                                                                                                                                                                                           |
| STR[32]                 | StaNameA         | Status Abnormality Index applied by skill                                                                                                                                                                                                               |
| DWORD                   | StaStrengthA     | Status Abnormal Stength                                                                                                                                                                                                                                 |
| DWORD                   | StaSucRateA      | Chance to get status ailments                                                                                                                                                                                                                           |
| STR[32]                 | StaNameB         | Status Abnormality Index applied by skill                                                                                                                                                                                                               |
| DWORD                   | StaStrengthB     | Status Abnormal Stength                                                                                                                                                                                                                                 |
| DWORD                   | StaSucRateB      | Chance to get status ailments                                                                                                                                                                                                                           |
| STR[32]                 | StaNameC         | Status Abnormality Index applied by skill                                                                                                                                                                                                               |
| DWORD                   | StaStrengthC     | Status Abnormal Stength                                                                                                                                                                                                                                 |
| DWORD                   | StaSucRateC      | Chance to get status ailments                                                                                                                                                                                                                           |
| STR[32]                 | StaNameD         | Status Abnormality Index applied by skill                                                                                                                                                                                                               |
| DWORD                   | StaStrengthD     | Status Abnormal Stength                                                                                                                                                                                                                                 |
| DWORD                   | StaSucRateD      | Chance to get status ailments                                                                                                                                                                                                                           |
| DWORD_ARRAY(nIMPT)      | IMPT0            | How many Skill Imp Powers can you take - Attack Power                                                                                                                                                                                                   |
| DWORD_ARRAY(nIMPT)      | IMPT1            | How many Skill Imp Powers can be taken - Reduced SP consumption                                                                                                                                                                                         |
| DWORD_ARRAY(nIMPT)      | IMPT2            | How many Skill Imp Powers can you take - Abnormal Status Duration                                                                                                                                                                                       |
| DWORD_ARRAY(nIMPT)      | IMPT3            | How many Skill Imp Powers can you take - Reduce Cooldown                                                                                                                                                                                                |
| DWORD_ARRAY(nT0)        | T00              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT0)        | T01              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT0)        | T02              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT0)        | T03              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT0)        | T04              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT1)        | T10              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT1)        | T11              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT1)        | T12              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT1)        | T13              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT1)        | T14              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT2)        | T20              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT2)        | T21              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT2)        | T22              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT2)        | T23              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT2)        | T24              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT3)        | T30              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT3)        | T31              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT3)        | T32              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT3)        | T33              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| DWORD_ARRAY(nT3)        | T34              | When skill impower is taken, the applied value                                                                                                                                                                                                          |
| INX["SkillEffectType"]  | EffectType       | type of skill. Physical/Magical Attack, Heal, Release, Resurrection, etc.                                                                                                                                                                               |
| INX["SkillSpecial"]     | SpecialIndexA    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| DWORD                   | SpecialValueA    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| INX["SkillSpecial"]     | SpecialIndexB    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| DWORD                   | SpecialValueB    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| INX["SkillSpecial"]     | SpecialIndexC    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| DWORD                   | SpecialValueC    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| INX["SkillSpecial"]     | SpecialIndexD    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| DWORD                   | SpecialValueD    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| INX["SkillSpecial"]     | SpecialIndexE    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| DWORD                   | SpecialValueE    | Skills determine certain attributes and personalities.                                                                                                                                                                                                  |
| STR[32]                 | SkillClassifierA | set group                                                                                                                                                                                                                                               |
| STR[32]                 | SkillClassifierB | set group                                                                                                                                                                                                                                               |
| STR[32]                 | SkillClassifierC | set group                                                                                                                                                                                                                                               |
| BYTE                    | CannotInside     | Can be used on maps with ceilings or not                                                                                                                                                                                                                |
| BYTE                    | DemandSoul       | The number of souls required to use the skill (Joker class only)                                                                                                                                                                                        |
| WORD                    | HitID            | Hit time ID of skills with multi-hit attributes (MultyHitType.xls)                                                                                                                                                                                      |

## Enums
```bash
typedef enum WeaponDemandType {
    DT_ONEHAND=0,
    DT_TWOHAND=1,
    DT_ALL=2,
    DT_WEAPON=3,
    DT_HAMMER=4,
    DT_MACE=5,
    DT_NONE=6,
    DT_SHIELD=7,
    DT_BOW=8,
    DT_CBOW=9,
    DT_STAFF=10,
    DT_WAND=11,
    DT_CLAW=12,
    DT_DSWORD=13,
    DT_BLADE=14,
    MAX_WEAPONDEMANDTYPE=15
} WeaponDemandType;
```
```bash
typedef enum TargetType {
    TARGET_ENEMY=0,
    TARGET_ME=1,
    TARGET_PARTY=2,
    TARGET_FRIEND=3,
    TARGET_SPOT=4,
    TARGET_ALL=5,
    TARGET_GROUP=6,
    TARGET_ENEMYUSER=7,
    TARGET_EVERY=8,
    TARGET_ENEMYGUILD=9,
    TARGET_MYGUILD=10,
    TARGET_MYNPC=11,
    TARGET_MYRAID=12,
    TARGET_BOX=13,
    TARGET_THISACTION=14,
    TARGET_ATTACKME=15,
    TARGET_DAMAGEBYME=16,
    TARGET_THISSKILL=17,
    TARGET_NONE=18,
    MAX_TARGETTYPE=19
} TargetType;
```
```bash
typedef enum TargetState {
    TS_LIVE=0,
    TS_CORPSE=1,
    TS_NONE=2,
    MAX_TARGETSTATE=3
} TargetState;
```
```bash
typedef enum SkillEffectType {
    SE_PHYSICDAMAGE=0,
    SE_MAGICDAMAGE=1,
    SE_FIREDAMAGE=2,
    SE_COLDDAMAGE=3,
    SE_LIGHTNINGDAMAGE=4,
    SE_HEALING=5,
    SE_TELEPORT=6,
    SE_REVIVAL=7,
    SE_CURE=8,
    SE_DISPEL=9,
    SE_WHOLEHEAL=10,
    SE_DEFAULT=11,
    SE_VOLLEY=12,
    SE_SUMMON=13,
    SE_METAMORPHOSIS=14,
    SE_PYRATEDAMAGE=15,
    MAX_SKILLEFFECTTYPE=16
} SkillEffectType;
```
```bash
typedef enum SkillSpecial {
    SS_NONE=0,
    SS_HEALAMOUNT=1,
    SS_CURE=2,
    SS_DISPEL=3,
    SS_TELEPORT=4,
    SS_WHOLEHEALAMOUNT=5,
    SS_MANABURN=6,
    SS_UNDEADTODMG=7,
    SS_DISPELALL=8,
    SS_DISPELONE=9,
    SS_THHPUP=10,
    SS_DIEHPUP=11,
    SS_REVIVAL=12,
    SS_MAGICFIELD_TICK=13,
    SS_MAGICFIELD_KEEP=14,
    SS_STEALENCHANT=15,
    SS_HPCONVERTSP=16,
    SS_HPUPRATE=17,
    SS_FLYDURINGCAST=18,
    SS_SILVERWING=19,
    SS_DISPELDEBUFF=20,
    SS_DISPELCURSE=21,
    SS_DISPELPOISON=22,
    SS_DISPELDISEASE=23,
    SS_WHOLEAGGRORATE=24,
    SS_WARPING=25,
    SS_DISPELRANDOM=26,
    SS_DETECT=27,
    SS_WHOLEAGGRORANGE=28,
    SS_HIDE=29,
    SS_Silience=30,
    SS_MESMERIZE=31,
    SS_SUMMON=32,
    SS_METAMORPHOSIS=33,
    SS_CROSSCOUNTER=34,
    SS_DISPELDEEPER=35,
    SS_DASH=36,
    SS_DISPELBUFF=37,
    SS_DASH2=38,
    SS_HPRATE=39,
    SS_CURSETIMEADD=40,
    SS_FIRETIMEADD=41,
    SS_HOLDME=42,
    SS_JWALK=43,
    SS_POSIONTIMEADD=44,
    SS_SHOOTME=45,
    SS_DMGCOLLTIMEDOWN=46,
    SS_AREATYPE=47,
    SS_BOMBDISPELALL=48,
    SS_MAGICFIELDPARTY=49,
    SS_HEALFRIENDRATE=50,
    SS_SETABSTATEFRIEND=51,
    SS_RANDOMTARGETNUMBER=52,
    SS_NEXTTARGETAREA=53,
    SS_DMGDOWNRATE=54,
    SS_MAXDMGDOWNRATE=55,
    SS_SHOTSPEED=56,
    SS_TARGETHPDOWNDMGUPRATE=57,
    SS_JUMP=58,
    SS_SETABSTATEME=59,
    SS_NOTTARGET=60,
    SS_ABKEEPTIME=61,
    SS_TOPAGGRONO=62,
    SS_RANDOMTARGET=63,
    SS_MAGICFIELD_DELAY_START_TIME=64,
    SS_DISPELABSTATE=65,
    SS_BMP_MAGICFIELD_ROTATIONSPEED_RIGHT=66,
    SS_MOVE_CHR=67,
    SS_HIDE_CHR_START=68,
    SS_HIDE_CHR_END=69,
    SS_RECALL=70,
    SS_DMGSHARE=71,
    SS_SUCKHP=72,
    SS_RANDOMTARGETSPOT=73,
    MAX_SKILLSPECIAL=74
} SkillSpecial;
```