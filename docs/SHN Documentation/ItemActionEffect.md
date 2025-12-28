| ItemActionEffect          |                |                                                                                |
| ------------------------- | -------------- | ------------------------------------------------------------------------------ |
| WORD                      | EffectID       | Result ID                                                                      |
| DNX["ActionTargetType"]   | EffectTarget   | Target type to apply the result to                                             |
| DNX["ActionActivityType"] | EffectActivity | Result type to apply to EffectTarget                                           |
| WORD                      | Value          | The applied value of the resulting effect (ratio, scale, absolute value, etc.) |
| WORD                      | Area           | distance from oneself                                                          |

## Base Enums
```cpp
typedef enum ActionTargetType {
    ATT_TargetType=0,
    ATT_MobGradeType=1,
    ATT_MobType=2,
    ATT_ChrClassType=3,
    MAX_ACTIONTARGETTYPE=4
} ActionTargetType;
```
```cpp
typedef enum ActionActivityType {
    AAT_AttackType=0,
    AAT_RecoverType=1,
    AAT_ABSTATEINDEX=2,
    AAT_DispelAttr=3,
    AAT_TargetAction=4,
    AAT_SkillEffectIncreaseType=5,
    AAT_ActionRangeType=6,
    AAT_ActiveSkillGroupIndex=7,
    AAT_ActionETCType=8,
    AAT_SetItemEffectType=9,
    MAX_ACTIONACTIVITYTYPE=10
} ActionActivityType;
```
## ActionTarget Enums
### ATT_TargetType
```cpp
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
### ATT_MobGradeType
```cpp
typedef enum MobGradeType {
    MGT_NORMAL=0,
    MGT_CHIEF=1,
    MGT_BOSS=2,
    MGT_HERO=3,
    MGT_ELITE=4,
    MGT_NONE=5,
    MAX_MOBGRADETYPE=6
} MobGradeType;
```
### ATT_MobType
```cpp
typedef enum MobType {
    MT_HUMAN=0,
    MT_MAGICLIFE=1,
    MT_SPIRIT=2,
    MT_BEAST=3,
    MT_ELEMENTAL=4,
    MT_UNDEAD=5,
    MT_NPC=6,
    MT_OBJECT=7,
    MT_MINE=8,
    MT_HERB=9,
    MT_WOOD=10,
    MT_NONAME=11,
    MT_NOTARGET=12,
    MT_NOTARGET2=13,
    MT_GLDITEM=14,
    MT_FLAG=15,
    MT_DEVIL=16,
    MT_META=17,
    MT_NODAMAGE=18,
    MT_NODAMAGE2=19,
    MT_NONAMEGATE=20,
    MT_BOX_HERB=21,
    MT_BOX_MINE=22,
    MT_GB_DICE=23,
    MT_NODAMAGE3=24,
    MT_FRIEND=25,
    MT_GB_SLOTMACHINE=26,
    MT_FRIENDDMGABSORB=27,
    MT_DEVILDOM=28,
    MT_NOTARGET3=29,
    MT_META2=30,
    MT_DWARF=31,
    MT_MACHINE=32,
    MAX_MOBTYPE=33
} MobType;
```
### ATT_ChrClassType
```cpp
typedef enum ChrClassType {
    CCT_FIGHTER=0,
    CCT_ARCHER=1,
    CCT_CLERIC=2,
    CCT_MAGE=3,
    CCT_JOKER=4,
    CCT_SENTINEL=5,
    CCT_COMMON=6,
    MAX_CHRCLASSTYPE=7
} ChrClassType;
```
## ActivityType Enums
### AAT_AttackType
```cpp
typedef enum AttackType {
    AT_NORMAL = 0,
    AT_SKILL = 1,
    AT_MAGIC = 2,
    AT_PHYSIC = 3,
    AT_CRITICAL = 4,
    AT_MISS = 5,
    AT_BLOCK = 6,
    MAX_ATTACKTYPE = 7
} AttackType;
```
### AAT_RecoverType
```cpp
typedef enum RecoverType {
    RT_HPABSOLUTEPLUS = 0,
    RT_HPRATEPLUS = 1,
    RT_SPABSOLUTEPLUS = 2,
    RT_SPRATEPLUS = 3,
    RT_HPABSOLUTEMINUS = 4,
    RT_HPRATEMINUS = 5,
    RT_SPABSOLUTEMINUS = 6,
    RT_SPRATEMINUS = 7,
    MAX_RECOVERTYPE = 8
} RecoverType;
```
### AAT_DispelAttr
```cpp
typedef enum DispelAttr {
    DA_NONE = 0,
    DA_GOOD = 1,
    DA_DEBUFF = 2,
    DA_DISEASE = 3,
    DA_POISON = 4,
    DA_CURSE = 5,
    DA_STUN = 6,
    DA_FEAR = 7,
    DA_DEEPER = 8,
    DA_HIDE = 9,
    DA_BOMB = 10,
    DA_CHARGED = 11,
    MAX_DISPELATTR = 12
} DispelAttr;
```
### AAT_TargetAction
```cpp
typedef enum TargetAction {
    TA_DIE = 0,
    MAX_TARGETACTION = 1
} TargetAction;
```
### AAT_SkillEffectIncreaseType
```cpp
typedef enum SkillEffectIncreaseType {
    SEIT_DAMAGE_RATE_INCREASE = 0,
    SEIT_COOLTIME_RATE_DECREASE = 1,
    SEIT_KEEPTIME_RATE_INCREASE = 2,
    SEIT_USESP_RATE_DECREASE = 3,
    SEIT_STA_AC_RATE_DECREASE = 4,
    SEIT_AGGRO_RATE_INCREASE = 5,
    SEIT_STA_DEX_RATE_DECREASE = 6,
    SEIT_SS_RATE_THHPUP = 7,
    SEIT_STA_MAX_HPSP_RATE_INCREASE = 8,
    SEIT_STA_DEAD_HPSP_RECOVER_RATE_INCREASE = 9,
    SEIT_STA_SHIELDAC_RATE_INDREASE = 10,
    SEIT_HEAL_RATE_INCREASE = 11,
    SEIT_STA_DOT_HEAL_RATE_INCREASE = 12,
    SEIT_STA_WC_RATE_INCEASE = 13,
    SEIT_STA_SHEILD_BLOCK_RATE_INCREASE = 14,
    MAX_SKILLEFFECTINCREASETYPE = 15
} SkillEffectIncreaseType;
```
### AAT_ActionRangeType
```cpp
typedef enum ActionRangeType {
  HP_RATE_0_20=0,
  Lv_0_40=1,
  SP_ABSOLUTE_0_1000=2,
  Lv_0_19=3,
  Lv_20_49=4,
  Lv_50_79=5,
  Lv_80_99=6,
  Lv_100_150=7,
  MAX_ACTIONRANGETYPE=8
} ActionRangeType;
```
### AAT_ActiveSkillGroupIndex
```cpp
typedef enum ActiveSkillGroupIndex {
    NONE = 0,
    BattleBlow = 1,
    BenTear = 2,
    Binding = 3,
    Bleach = 4,
    Blessing = 5,
    Blind = 6,
    BodyForce = 7,
    BoneArrow = 8,
    ChainCasting = 9,
    ChainLightning = 10,
    ContinueBlade = 11,
    CrossCasting = 12,
    CrushStrike = 13,
    CurseMagic = 14,
    Deeper = 15,
    DegroSlash = 16,
    DispelMagic = 17,
    DispelTrick = 18,
    DivineShield = 19,
    DrainMind = 20,
    DynastyCombo = 21,
    ElectricShock = 22,
    ExplosionNova = 23,
    FatalCondition = 24,
    FinalDynastBlood = 25,
    FinalSwordForce = 26,
    FireBall = 27,
    FireBolt = 28,
    FitBlood = 29,
    FitPoison = 30,
    FrostNova = 31,
    GreatHeal = 32,
    HarmDefect = 33,
    HawkTalon = 34,
    Heal = 35,
    HolySmite = 36,
    IceBlast = 37,
    IceBolt = 38,
    IceField = 39,
    Inferno = 40,
    LightningBolt = 41,
    MagicBall = 42,
    MagicBurst = 43,
    MentalShout = 44,
    MightyChop = 45,
    MightyPunch = 46,
    MightySoul = 47,
    MoraleDecrease = 48,
    MultiBloodShot = 49,
    MultiShot = 50,
    NatureCasting = 51,
    Neglect = 52,
    NobleFrgrance = 53,
    NorthBreeze = 54,
    NorthTear = 55,
    PiercingGuard = 56,
    PoisonShot = 57,
    PowerBenTear = 58,
    PowerDrain = 59,
    PowerNorthBreeze = 60,
    PowerNorthTear = 61,
    PowerShot = 62,
    PowerWeaponBlast = 63,
    PuryImpact = 64,
    RedSlash = 65,
    ResistCurse = 66,
    Restore = 67,
    ReverseOrder = 68,
    Sacrifice = 69,
    SafeProtection = 70,
    SeverBone = 71,
    ShiningPurge = 72,
    ShockEnemy = 73,
    SilverLining = 74,
    SnearKick = 75,
    SnearShout = 76,
    SpeedShield = 77,
    SpiritFog = 78,
    StealEnchant = 79,
    SwordForce = 80,
    TomaHawk = 81,
    WeaponBlast = 82,
    Wield = 83,
    WindyRaid = 84,
    WolfClaw = 85,
    BBDI = 86,
    GDHM = 87,
    HDMC = 88,
    HHMM = 89,
    MRMD = 90,
    MRSD = 91,
    SBBF = 92,
    SHMP = 93,
    SWAI = 94,
    WEMI = 95,
    WEMI2 = 96,
    Dash = 97,
    HealReinforce = 98,
    BiffTimeIncrease = 99,
    HeroStrike = 100,
    Advent = 101,
    LightStrike = 102,
    FinalLight = 103,
    LightWind = 104,
    LightBlast = 105,
    LightJump = 106,
    LightExplosion = 107,
    LightOrb = 108,
    ImpactLight = 109,
    LightBurst = 110,
    Recoup = 111,
    LightTouch = 112,
    Treat = 113,
    LightMark = 114,
    LightShield = 115,
    LightField = 116,
    MoonLight = 117,
    SunLight = 118,
    MAX_ACTIVESKILLGROUPINDEX = 119,
} ActiveSkillGroupIndex;
```
### AAT_ActionETCType
```cpp
typedef enum ActionETCType {
  AET_ITEMEQUIP=0,
  AET_ITEMUSE=1,
  MAX_ACTIONETCTYPE=2
} ActionETCType;
```
### AAT_SetItemEffectType
```cpp
typedef enum SetItemEffectType {
  SIET_DEFAULT=0,
  SIET_DAMAGE_RATE_INCREASE=1,
  MAX_SETITEMEFFECTTYPE=2
} SetItemEffectType;
```