| ActiveSkillServer            |                       |                                                                         |
| ---------------------------- | --------------------- | ----------------------------------------------------------------------- |
| WORD                         | ID                    | Active skill unique ID                                                  |
| STR[32]                      | InxName               | Active Skill Unique Index                                               |
| BYTE                         | UsualAttack           | Skills that inflict damage                                              |
| DWORD                        | SkilPyHitRate         | Probability of physical skill success                                   |
| DWORD                        | SkilMaHitRate         | Probability of magic skill success                                      |
| DWORD                        | PsySucRate            | not used                                                                |
| DWORD                        | MagSucRate            | not used                                                                |
| BYTE                         | StaLevel              |                                                                         |
| DWORD                        | DmgIncRate            |                                                                         |
| WORD                         | DmgIncValue           |                                                                         |
| INX["SkillHitType"]          | SkillHitType          | Skill hit type (physical/magic attack type, buff type, etc.)            |
| BYTE                         | ItremUseSkill         | Whether the skill uses the item                                         |
| DWORD                        | AggroPerDamage        | Aggro rate applied per damage                                           |
| DWORD                        | AbsoluteAggro         | Absolute amount of aggro                                                |
| BYTE                         | AttackStart           | Whether or not to start a normal attack immediately after using a skill |
| BYTE                         | AttackEnd             | Whether or not to maintain auto-attack immediately after using a skill  |
| WORD                         | SwingTime             | skill swing time                                                        |
| WORD                         | HitTime               | skill hit time                                                          |
| BYTE                         | AddSoul               | The number of souls accumulated after using a skill (Joker only)        |
| STR[32]                      | InxName               | Index of active skills to which groups belong                           |
| INX["ActiveSkillGroupIndex"] | ActiveSkillGroupIndex | Group index to which the skill belongs                                  |

## Enums
```cpp
typedef enum ActiveSkillGroupIndex {
    NONE=0,
    BattleBlow=1,
    BenTear=2,
    Binding=3,
    Bleach=4,
    Blessing=5,
    Blind=6,
    BodyForce=7,
    BoneArrow=8,
    ChainCasting=9,
    ChainLightning=10,
    ContinueBlade=11,
    CrossCasting=12,
    CrushStrike=13,
    CurseMagic=14,
    Deeper=15,
    DegroSlash=16,
    DispelMagic=17,
    DispelTrick=18,
    DivineShield=19,
    DrainMind=20,
    DynastyCombo=21,
    ElectricShock=22,
    ExplosionNova=23,
    FatalCondition=24,
    FinalDynastBlood=25,
    FinalSwordForce=26,
    FireBall=27,
    FireBolt=28,
    FitBlood=29,
    FitPoison=30,
    FrostNova=31,
    GreatHeal=32,
    HarmDefect=33,
    HawkTalon=34,
    Heal=35,
    HolySmite=36,
    IceBlast=37,
    IceBolt=38,
    IceField=39,
    Inferno=40,
    LightningBolt=41,
    MagicBall=42,
    MagicBurst=43,
    MentalShout=44,
    MightyChop=45,
    MightyPunch=46,
    MightySoul=47,
    MoraleDecrease=48,
    MultiBloodShot=49,
    MultiShot=50,
    NatureCasting=51,
    Neglect=52,
    NobleFrgrance=53,
    NorthBreeze=54,
    NorthTear=55,
    PiercingGuard=56,
    PoisonShot=57,
    PowerBenTear=58,
    PowerDrain=59,
    PowerNorthBreeze=60,
    PowerNorthTear=61,
    PowerShot=62,
    PowerWeaponBlast=63,
    PuryImpact=64,
    RedSlash=65,
    ResistCurse=66,
    Restore=67,
    ReverseOrder=68,
    Sacrifice=69,
    SafeProtection=70,
    SeverBone=71,
    ShiningPurge=72,
    ShockEnemy=73,
    SilverLining=74,
    SnearKick=75,
    SnearShout=76,
    SpeedShield=77,
    SpiritFog=78,
    StealEnchant=79,
    SwordForce=80,
    TomaHawk=81,
    WeaponBlast=82,
    Wield=83,
    WindyRaid=84,
    WolfClaw=85,
    BBDI=86,
    GDHM=87,
    HDMC=88,
    HHMM=89,
    MRMD=90,
    MRSD=91,
    SBBF=92,
    SHMP=93,
    SWAI=94,
    WEMI=95,
    WEMI2=96,
    Dash=97,
    HealReinforce=98,
    BiffTimeIncrease=99,
    HeroStrike=100,
    Advent=101,
    LightStrike=102,
    FinalLight=103,
    LightWind=104,
    LightBlast=105,
    LightJump=106,
    LightExplosion=107,
    LightOrb=108,
    ImpactLight=109,
    LightBurst=110,
    Recoup=111,
    LightTouch=112,
    Treat=113,
    LightMark=114,
    LightShield=115,
    LightField=116,
    MoonLight=117,
    SunLight=118,
    MAX_ACTIVESKILLGROUPINDEX=119
} ActiveSkillGroupIndex;
```