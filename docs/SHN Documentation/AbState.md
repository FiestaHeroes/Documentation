| AbState              |                    |                                                                                                                                          |
| -------------------- | ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| SHINE_ABSTATE_ID     | ID                 | Abnormal Status ID                                                                                                                       |
| STR[32]              | InxName            | State Abnormality Index Linked with StaName of ActiveSkill                                                                               |
| INX["ABSTATEINDEX"]  | AbStataIndex       | Status Abnormal Index Refers to the global index enum value.                                                                             |
| BYTE                 | KeepTimePower      | If the value is 1, you can increase skill power.                                                                                         |
| BYTE                 | StateGrade         | Divide status ailments into low, intermediate, and advanced levels.                                                                      |
| STR[32]              | PartyState1        | Abnormal conditions that can be cast when there is only one party member                                                                 |
| STR[32]              | PartyState2        | Abnormal conditions that can be cast when in a party of 2                                                                                |
| STR[32]              | PartyState3        | Abnormal conditions that can be cast when in a party of 3                                                                                |
| STR[32]              | PartyState4        | Abnormal conditions that can be cast when in a party of 4                                                                                |
| STR[32]              | PartyState5        | Abnormal conditions that can be cast when in a party of 5                                                                                |
| DWORD                | PartyRange         | If this part is not empty, PartyState is given to the person whose PartyEnchantNumber is in PartyRange every 5 seconds.                  |
| DWORD                | PartyEnchantNumber | Depending on the addition of party members, specify how many times to upgrade the party buff level until the number of additions         |
| STR[32]              | SubAbState         | Index of SubAbState to apply in this state or more                                                                                       |
| INX["DispelAttr"]    | DispelIndex        | A value that defines the resistance or cancellation of status ailments that the character receives from mobs                             |
| INX["SubDispelAttr"] | SubDispelIndex     | MobInfo The value that defines the state abnormality corresponding to the number displayed in the MobResist sheet of Excel.              |
| BYTE                 | IsSave             | Whether or not to save state abnormalities when linking                                                                                  |
| STR[32]              | MainStateInx       | If the state abnormality consists of Main and Sub, insert this value of the Sub state abnormality into the Main state abnormality index. |
| BYTE                 | Duplicate          | How many stacks are possible                                                                                                             |
## Enums
```cpp
typedef enum ABSTATEINDEX {
    STA_SEVERBONE=0,
    STA_REDSLASH=1,
    STA_BATTLEBLOWSTUN=2,
    STA_MIGHTYSOULMAIN=3,
    STA_MIGHTYSOUL=4,
    STA_MORALEDECREASEWC=5,
    STA_SPEEDSHIELD=6,
    STA_HARMDEFECT=7,
    STA_BERSEKERFRENZY=8,
    STA_SHOCKBLADESTUN=9,
    STA_MIGHTYSOUL2=10,
    STA_MIGHTYSOUL3=11,
    STA_MIGHTYSOUL4=12,
    STA_MIGHTYSOUL5=13,
    STA_VIOLENCE=14,
    STA_BUCKLER=15,
    STA_NEGLECT=16,
    STA_BREAK=17,
    STA_BLESSINGMAIN=18,
    STA_BLESSING=19,
    STA_SAFEPROTECTION=20,
    STA_PSYCHICBLUNTSTUN=21,
    STA_PSYCHICCHOPBLOOD=22,
    STA_DARKNESSPROTECTION=23,
    STA_RESTORE=24,
    STA_HITPROTECTION=25,
    STA_MENTALSHOUTMAIN=26,
    STA_MENTALSHOUT=27,
    STA_DIVINESHIELD=28,
    STA_DIVINEWEAPONWCMAIN=29,
    STA_DIVINEWEAPONWC=30,
    STA_SACRIFICE=31,
    STA_CROSSCASTINGCOOLTIME=32,
    STA_PANICFORCEMR=33,
    STA_REVERSEORDER=34,
    STA_HORRORFORCESTR=35,
    STA_BLESSING2=36,
    STA_BLESSING3=37,
    STA_BLESSING4=38,
    STA_BLESSING5=39,
    STA_MENTALSHOUT2=40,
    STA_MENTALSHOUT3=41,
    STA_MENTALSHOUT4=42,
    STA_MENTALSHOUT5=43,
    STA_DIVINEWEAPONWC2=44,
    STA_DIVINEWEAPONWC3=45,
    STA_DIVINEWEAPONWC4=46,
    STA_DIVINEWEAPONWC5=47,
    STA_REBIRTH=48,
    STA_DEADLYBLESSING=49,
    STA_DODGE=50,
    STA_PURYIMPACTSTUN=51,
    STA_FORESTWIND=52,
    STA_WINDCHARGEMAIN=53,
    STA_WINDCHARGE=54,
    STA_BONEARROW=55,
    STA_SPIRITTHORNENTANGLE=56,
    STA_POISONSHOT=57,
    STA_BITEARROW=58,
    STA_MISTCHARGEMAIN=59,
    STA_MISTCHARGE=60,
    STA_SPIRITFOG=61,
    STA_HAWKTALONATKSPEED=62,
    STA_NATURECASTINGCOOLTIME=63,
    STA_PIERCINGGUARD=64,
    STA_SHOCKSCREAMWC=65,
    STA_STINGERUPTIONSLOW=66,
    STA_WINDCHARGE2=67,
    STA_WINDCHARGE3=68,
    STA_WINDCHARGE4=69,
    STA_WINDCHARGE5=70,
    STA_MISTCHARGE2=71,
    STA_MISTCHARGE3=72,
    STA_MISTCHARGE4=73,
    STA_MISTCHARGE5=74,
    STA_HIDE=75,
    STA_BLIND=76,
    STA_ENTRAPHIDE=77,
    STA_ICEBOLT=78,
    STA_LIGHTNINGBOLT=79,
    STA_BLUR=80,
    STA_SOULEDGE=81,
    STA_RINGSHIELD=82,
    STA_ICEBLASTSTUN=83,
    STA_CHAINLIGHTNINGSTUN=84,
    STA_DRAINMINDFEAR=85,
    STA_CHAINCASTINGCOOLTIME=86,
    STA_CURSEMAGICCASTIME=87,
    STA_FROSTNOVA=88,
    STA_THUNDERBOLT=89,
    STA_SOULEDGEMAIN=90,
    STA_SOULEDGE2=91,
    STA_SOULEDGE3=92,
    STA_SOULEDGE4=93,
    STA_SOULEDGE5=94,
    STA_DEEPER=95,
    STA_MESMERIZE=96,
    STA_POLYMORPH=97,
    STA_ICEFIELD=98,
    STA_MARASTUN=99,
    STA_KINGSLIMEBLOODING=100,
    STA_MARLONEENTANGLE=101,
    STA_NOXENTANGLE=102,
    STA_SKELKNIGHTBLOODING=103,
    STA_ROBOACPLUS=104,
    STA_GOKINGSTUN=105,
    STA_GOKINGSTRRATE=106,
    STA_KINGCALLACPLUS=107,
    STA_GHKNIGHTENTANGLE=108,
    STA_HUNGRYWOLFBLOODING=109,
    STA_KQSKELKNIGHTENTANGLE=110,
    STA_MARLONECAPTAINATKSPD=111,
    STA_ARCHMAGEBOOKSTUN=112,
    STA_GHOSTFEAR=113,
    STA_KQ_BOSSROBOFEAR=114,
    STA_KQ_BOSSROBO2FEAR=115,
    STA_NOXSK2BLOODING=116,
    STA_KQ_G_TBRAIDERCURSE=117,
    STA_ELFKNIGHTSOULDEXCURSE=118,
    STA_JOKERTRUMPYTHCURSE=119,
    STA_KEBINGCURSE=120,
    STA_KINGCRABCURSE=121,
    STA_NAVARCURSE=122,
    STA_MARACURSE=123,
    STA_SKELWARRIORCURSE=124,
    STA_ARCHMAGEBOOKCURSE=125,
    STA_KARATEMPLERCURSE=126,
    STA_SMARTPHINOCURSE=127,
    STA_MARLONESOLDIERCURSE=128,
    STA_OLDFOXCURSE=129,
    STA_GOBLINMAGECURSE=130,
    STA_HARKANCURSE=131,
    STA_DISHARKANCURSE=132,
    STA_STONIECURSE=133,
    STA_OGRECURSE=134,
    STA_MARASAILORCURSE=135,
    STA_OLDARCHONCURSE=136,
    STA_KINGMUSHROOMCURSE=137,
    STA_BCTRUMPYCURSE=138,
    STA_KQ_K_BOSSPHINOCURSE=139,
    STA_KQ_K_PHINOFLIECURSE=140,
    STA_TORTURERBLOODING=141,
    STA_SHARPBOARBLOODING=142,
    STA_FOBLOODING=143,
    STA_BABYWEREBEARBLOODING=144,
    STA_SENIORTORTURERBLOODING=145,
    STA_JEWELKEEPERBLOODING=146,
    STA_SHYLPHBLOODING=147,
    STA_SGTRUMPYBLOODING=148,
    STA_KQ_K_SOLIDERBLOODING=149,
    STA_SKELKNIGHTDISEASE=150,
    STA_MOB1SLOW=151,
    STA_MOB2SLOW=152,
    STA_MOB3SLOW=153,
    STA_MOB4SLOW=154,
    STA_MOB5SLOW=155,
    STA_MOB1STUN=156,
    STA_MOB2STUN=157,
    STA_MOB3STUN=158,
    STA_MOB4STUN=159,
    STA_MOB5STUN=160,
    STA_KQMARASTUN=161,
    STA_KQGOBLEKINGSTUN=162,
    STA_DIAMASTERSTUN=163,
    STA_ANCIENTSTONIESTUN=164,
    STA_MOB1ENTANGLE=165,
    STA_MOB2ENTANGLE=166,
    STA_MOB3ENTANGLE=167,
    STA_MOB4ENTANGLE=168,
    STA_MOB5ENTANGLE=169,
    STA_KQMARLONEENTANGLE=170,
    STA_LEGENDARYTREEENTANGLE=171,
    STA_GIANTELVENTREEENTANGLE=172,
    STA_MOB1POISON=173,
    STA_MOB2POISON=174,
    STA_MOB3POISON=175,
    STA_MOB4POISON=176,
    STA_MOB5POISON=177,
    STA_MOB6POISON=178,
    STA_DIATRUMPYPOISON=179,
    STA_MOB1DISEASE1=180,
    STA_MOB2DISEASE1=181,
    STA_MOB3DISEASE1=182,
    STA_MOB4DISEASE1=183,
    STA_MOB5DISEASE1=184,
    STA_MOB6DISEASE1=185,
    STA_MOB1DISEASE2=186,
    STA_MOB2DISEASE2=187,
    STA_MOB3DISEASE2=188,
    STA_MOB4DISEASE2=189,
    STA_MOB5DISEASE2=190,
    STA_MOB6DISEASE2=191,
    STA_MOB1DISEASE3=192,
    STA_MOB2DISEASE3=193,
    STA_MOB3DISEASE3=194,
    STA_MOB4DISEASE3=195,
    STA_MOB5DISEASE3=196,
    STA_MOB6DISEASE3=197,
    STA_MOBIMMORTAL=198,
    STA_MOBINVISIBLE=199,
    STA_MOBMRPLUS=200,
    STA_ACMODE=201,
    STA_MRMODE=202,
    STA_HELGAACMINUS=203,
    STA_BESTLOWCONHPPOTION=204,
    STA_LOWCONHPPOTION=205,
    STA_NORCONHPPOTION=206,
    STA_HIGHCONHPPOTION=207,
    STA_BESTHIGHCONHPPOTION=208,
    STA_BESTLOWCONSPPOTION=209,
    STA_LOWCONSPPOTION=210,
    STA_NORCONSPPOTION=211,
    STA_HIGHCONSPPOTION=212,
    STA_BESTHIGHCONSPPOTION=213,
    STA_BESTLOWTHSCROLL=214,
    STA_LOWTHSCROLL=215,
    STA_NORTHSCROLL=216,
    STA_HIGHTHSCROLL=217,
    STA_BESTHIGHTHSCROLL=218,
    STA_BESTLOWTBSCROLL=219,
    STA_LOWTBSCROLL=220,
    STA_NORTBSCROLL=221,
    STA_HIGHTBSCROLL=222,
    STA_BESTHIGHTBSCROLL=223,
    STA_BESTLOWMRSCROLL=224,
    STA_LOWMRSCROLL=225,
    STA_NORMRSCROLL=226,
    STA_HIGHMRSCROLL=227,
    STA_BESTHIGHMRSCROLL=228,
    STA_BESTLOWACSCROLL=229,
    STA_LOWACSCROLL=230,
    STA_NORACSCROLL=231,
    STA_HIGHACSCROLL=232,
    STA_BESTHIGHACSCROLL=233,
    STA_BESTLOWCRISCROLL=234,
    STA_LOWCRISCROLL=235,
    STA_NORCRISCROLL=236,
    STA_HIGHCRISCROLL=237,
    STA_BESTHIGHCRISCROLL=238,
    STA_BESTLOWMAXHPSCROLL=239,
    STA_LOWMAXHPSCROLL=240,
    STA_NORMAXHPSCROLL=241,
    STA_HIGHMAXHPSCROLL=242,
    STA_BESTHIGHMAXHPSCROLL=243,
    STA_BESTLOWMAXSPSCROLL=244,
    STA_LOWMAXSPSCROLL=245,
    STA_NORMAXSPSCROLL=246,
    STA_HIGHMAXSPSCROLL=247,
    STA_BESTHIGHMAXSPSCROLL=248,
    STA_BESTLOWSTRCRISCROLL=249,
    STA_LOWSTRCRISCROLL=250,
    STA_NORSTRCRISCROLL=251,
    STA_HIGHSTRCRISCROLL=252,
    STA_BESTHIGHSTRCRISCROLL=253,
    STA_BESTLOWDEXSCROLL=254,
    STA_LOWDEXSCROLL=255,
    STA_NORDEXSCROLL=256,
    STA_HIGHDEXSCROLL=257,
    STA_BESTHIGHDEXSCROLL=258,
    STA_BESTLOWACMRSCROLL=259,
    STA_LOWACMRSCROLL=260,
    STA_NORACMRSCROLL=261,
    STA_HIGHACMRSCROLL=262,
    STA_BESTHIGHACMRSCROLL=263,
    STA_NORMSSCROLL=264,
    STA_LOWPSNRESIPOTION=265,
    STA_NORPSNRESIPOTION=266,
    STA_HIGHPSNRESIPOTION=267,
    STA_LOWDSSRESIPOTION=268,
    STA_NORDSSRESIPOTION=269,
    STA_HIGHDSSRESIPOTION=270,
    STA_LOWCURRESIPOTION=271,
    STA_NORCURRESIPOTION=272,
    STA_HIGHCURRESIPOTION=273,
    STA_ALLCURRESIPOTION=274,
    STA_ALLDSSRESIPOTION=275,
    STA_ALLPSNRESIPOTION=276,
    STA_LOWMSSCROLL=277,
    STA_HIGHMSSCROLL=278,
    STA_BESTMSSCROLL=279,
    STA_BESTLOWMSSCROLL=280,
    STA_RAMAPOTION01=281,
    STA_RAMAPOTION02=282,
    STA_RAMAPOTION03=283,
    STA_RAMAPOTION04=284,
    STA_RAMAPOTION05=285,
    STA_RAMAPOTION06=286,
    STA_RAMAPOTION07=287,
    STA_GMHIDEMODE=288,
    STA_OBSERVERHIDEMODE=289,
    STA_QUESTENTANGLE=290,
    STA_IMMORTAL=291,
    STA_KEEPFROMCHAT=292,
    STA_WEDDINGBUFF=293,
    STA_WEDDINGSUB01=294,
    STA_WEDDINGSUB02=295,
    STA_SOLEFIRE=296,
    STA_ACAMSBUF10PMAIN=297,
    STA_ACAMSBUF10P=298,
    STA_ACAMSBUF7PMAIN=299,
    STA_ACAMSBUF7P=300,
    STA_ACAGENALBUF=301,
    STA_NATURALENEMY=302,
    STA_KALBANPOISON=303,
    STA_KALBANDISEASE=304,
    STA_KALBANSTUN=305,
    STA_COMMONSTUN01=306,
    STA_COMMONSTUN02=307,
    STA_COMMONSTUN03=308,
    STA_COMMONSTUN04=309,
    STA_COMMONSTUN05=310,
    STA_COMMONSTUN06=311,
    STA_COMMONSTUN07=312,
    STA_COMMONSTUN08=313,
    STA_COMMONSTUN09=314,
    STA_COMMONSTUN10=315,
    STA_COMMONFEAR01=316,
    STA_COMMONFEAR02=317,
    STA_COMMONFEAR03=318,
    STA_COMMONFEAR04=319,
    STA_COMMONFEAR05=320,
    STA_COMMONFEAR06=321,
    STA_COMMONFEAR07=322,
    STA_COMMONFEAR08=323,
    STA_COMMONFEAR09=324,
    STA_COMMONFEAR10=325,
    STA_ETHEREAL=326,
    STA_GLDRESTORE=327,
    STA_GLDMOVESPEEDUP=328,
    STA_GLDACMINUS=329,
    STA_GLDSLOW=330,
    STA_GLDSTUN=331,
    STA_KARENDOT=332,
    STA_KARENDIVINE=333,
    STA_KARENSTATIC=334,
    STA_KARENCAPTIVATE=335,
    STA_ROCKCANTHEAL=336,
    STA_ROCKCANTCHAT=337,
    STA_ROCKDASHSTUN=338,
    STA_KARENDOTHEAL=339,
    STA_KARENSTUN=340,
    STA_MRMINUS=341,
    STA_SILBERKBLOODING=342,
    STA_BLOODFEAR=343,
    STA_GLDATKUP=344,
    STA_RESTEXP=345,
    STA_KNOCKBACK=346,
    STA_KNOCKBACKFLY=347,
    STA_KNOCKBACKROLL=348,
    STA_FATALKNOCKBACK=349,
    STA_CANNOTCONTROL=350,
    STA_EVENTHPUP=351,
    STA_EVENTSPUP=352,
    STA_EVENTALLSTATSUP=353,
    STA_EVENTSPEED=354,
    STA_EVENTACUP=355,
    STA_EVENTMRUP=356,
    STA_ANGRY=357,
    STA_PARALYSIS=358,
    STA_SPIRIT=359,
    STA_TIMEATTACK=360,
    STA_STAACREDDRAGON=361,
    STA_STAMRBLUEDRAGON=362,
    STA_TIMEATTACKMINI=363,
    STA_MONKEYSTUN=364,
    STA_MONKEYDEFENSE=365,
    STA_GTIRATEPOINT=366,
    STA_GTISPEED=367,
    STA_GTIRESISTALL=368,
    STA_GTIREFLECT=369,
    STA_GTIBLIND=370,
    STA_GTICONFUSION=371,
    STA_GTIMETASLIME=372,
    STA_GTIHIDE=373,
    STA_GTISCAN=374,
    STA_GTIBINDING=375,
    STA_GTIBOMB1=376,
    STA_GTIBOMB2=377,
    STA_GTIBOMBDIE=378,
    STA_GTIREVERSEORDER=379,
    STA_GTIVIRUSRT=380,
    STA_GTIVIRUSMOVE=381,
    STA_GTIMOBSUICIDE=382,
    STA_GTIKNOCKBACKROLL=383,
    STA_CRACKERACDOWN=384,
    STA_CRACKERWCDOWN=385,
    STA_CRACKERDISEASE=386,
    STA_CRACKERCURSE=387,
    STA_CRACKERWCUPRATE=388,
    STA_CRACKERACUPRATE=389,
    STA_HUMARACDOWNRATE=390,
    STA_BODYFORCE=391,
    STA_CANNOTCHANGETARGET=392,
    STA_SHADOWBINDING=393,
    STA_SOULFREE=394,
    STA_NORTHPOISON=395,
    STA_FITBLOOD=396,
    STA_FITMOVEDOWN=397,
    STA_NORTFBURN=398,
    STA_RANGEEVASIONUP=399,
    STA_POISONDMGADD=400,
    STA_POISONDMGDOWN=401,
    STA_BLOODDMGDOWN=402,
    STA_USESPADD=403,
    STA_DOTDMGDOWN=404,
    STA_EVASIONDOWN=405,
    STA_SHOCKSTUN=406,
    STA_DOTDMGADDALL=407,
    STA_SHOCKRUN=408,
    STA_KQSKELKNIGHTBLOODING=409,
    STA_MOBBURNTYPE01=410,
    STA_MOBSTUNTYPE01=411,
    STA_VACANT=412,
    STA_WOLFCLAWTBUPRATE=413,
    STA_ENTRAPBLN=414,
    STA_ENTRAPMSD=415,
    STA_ENTRAPBLD=416,
    STA_ENTRAPPLS=417,
    STA_QUESTENTANGLE2=418,
    STA_GBGAMEMEMBERFULL=419,
    STA_MULTIBLOOD=420,
    STA_CHRTITLEWCUPRATE=421,
    STA_CHRTITLEWCDOWNRATE=422,
    STA_CHRTITLEMAUPRATE=423,
    STA_CHRTITLEMADOWNRATE=424,
    STA_CHRTITLEACUPRATE=425,
    STA_CHRTITLEACDOWNRATE=426,
    STA_CHRTITLEMRUPRATE=427,
    STA_CHRTITLEMRDOWNRATE=428,
    STA_CHRTITLEHPUPRATE=429,
    STA_CHRTITLEHPDOWNRATE=430,
    STA_CHRTITLEHPRESTORE=431,
    STA_CHRTITLESPUPRATE=432,
    STA_CHRTITLESPRESTORE=433,
    STA_CHRTITLETHUPRATE=434,
    STA_CHRTITLETHDOWNRATE=435,
    STA_CHRTITLETBUPRATE=436,
    STA_CHRTITLETBDOWNRATE=437,
    STA_CHRTITLESPEEDUPRATE=438,
    STA_CHRTITLESPEEDDOWNRATE=439,
    STA_CHRTITLECRITICALUPRATE=440,
    STA_CHRTITLEBLOODING=441,
    STA_MOBAPU01=442,
    STA_BH_HELGA_NONE=443,
    STA_HELGBALL=444,
    STA_BH_KARATEMPLER_NONE=445,
    STA_BH_HELGAAPU01=446,
    STA_BH_HELGADRT01=447,
    STA_BH_HELGA_IDLE01=448,
    STA_MOBACPLUS=449,
    STA_MOBSTN01=450,
    STA_MOBPSN01=451,
    STA_MOBOPU01=452,
    STA_MOBMSD02=453,
    STA_MOBSLC01=454,
    STA_MOBBLD01=455,
    STA_MOBMTS01=456,
    STA_MOBBRN01=457,
    STA_MOBMSD01=458,
    STA_ADLUBAUP=459,
    STA_ADLUBADOWN=460,
    STA_BURNPAINME=461,
    STA_BURNPAINFOE=462,
    STA_GROUNDSTRIKE=463,
    STA_BOMBSHOT=464,
    STA_CROSSDROP=465,
    STA_METEOR=466,
    STA_MAGICDANCEUSESPDOWN=467,
    STA_DEEPFEARMENDOWNRATE=468,
    STA_MENDOWNRATE=469,
    STA_SHAMECRIUP=470,
    STA_MOBMRS01=471,
    STA_MOBACS01=472,
    STA_NOTTARGET=473,
    STA_MAGICDANCEUSESPDOWN02=474,
    STA_MAGICDANCEUSESPDOWN03=475,
    STA_MAGICDANCEUSESPDOWN04=476,
    STA_MAGICDANCEUSESPDOWN05=477,
    STA_MENDOWNRATE02=478,
    STA_MENDOWNRATE03=479,
    STA_MENDOWNRATE04=480,
    STA_MENDOWNRATE05=481,
    STA_SHAMECRIUP02=482,
    STA_SHAMECRIUP03=483,
    STA_SHAMECRIUP04=484,
    STA_SHAMECRIUP05=485,
    STA_SNSATKUP=486,
    STA_SNSCRIUP=487,
    STA_SNSDEFENSEUP=488,
    STA_SNSHPUP=489,
    STA_SNSSPUP=490,
    STA_SNSSPEEDUP=491,
    STA_MULTIHEAL=492,
    STA_HIDEWC=493,
    STA_EGLACK04=494,
    STA_EGLACKMAD05=495,
    STA_SALARE04=496,
    STA_SALARE00=497,
    STA_ADLFLOUSSIER=498,
    STA_ADLFLOUSSIERIMT=499,
    STA_ADLFSTUN=500,
    STA_EGLACKMAD04=501,
    STA_MINEICE=502,
    STA_MINESTUN=503,
    STA_MINEFIREVIVI=504,
    STA_MINEICEVIVI=505,
    STA_MINEREWARD=506,
    STA_SETF2WCUP=507,
    STA_SETF2ACUP=508,
    STA_SETF4HPUP=509,
    STA_SETF4ACDOWN=510,
    STA_SETF4ACUP=511,
    STA_SETF4WCUPRATE=512,
    STA_SETF4ACUPRATE=513,
    STA_SETA2WCUP=514,
    STA_SETA4SPEEDUP=515,
    STA_SETA4SPEEDDOWN=516,
    STA_SETA4ATKSPEEDUP=517,
    STA_SETM2MAUP=518,
    STA_SETM2MRUP=519,
    STA_SETM3SPUP=520,
    STA_SETM4MAUP=521,
    STA_SETM4MRDOWN=522,
    STA_SETM4SPUP=523,
    STA_SETM4MRUP=524,
    STA_SETC2WCUP=525,
    STA_SETC2MAUP=526,
    STA_SETC3MRUP=527,
    STA_SETC4MRUP=528,
    STA_SETC4WCUP=529,
    STA_SETC4ATKDOWN=530,
    STA_SETC4ACUP=531,
    STA_SETC4ACDOWN=532,
    STA_SETC4MAUP=533,
    STA_SETJ2WCUP=534,
    STA_SETJ2HPUP=535,
    STA_SETJ3SPUP=536,
    STA_SETJ4ACDOWN=537,
    STA_SETJ4ATKSPPEUP=538,
    STA_SETJ4CRLUP=539,
    STA_SETJ4WCUP=540,
    STA_ENWCUP=541,
    STA_ENMAUP=542,
    STA_ENATKSPEED=543,
    STA_ENWCRATE=544,
    STA_ENADDDMGRATE=545,
    STA_ENKNOCKBACKRATE=546,
    STA_ENBINDINGRATE=547,
    STA_ENMOVEDOWNRATE=548,
    STA_QDAYWCUP=549,
    STA_QDAYMAUP=550,
    STA_QDAYEXPUP=551,
    STA_QDAYDROPUP=552,
    STA_SWICEWARN=553,
    STA_SURPRISE=554,
    STA_SWPLSWARN=555,
    STA_SWSTNWARN=556,
    STA_SWBRN01WARN=557,
    STA_SWLVTWARN=558,
    STA_AWAYBACKSPOT=559,
    STA_RADIONBUFF=560,
    STA_AIRIBUFF=561,
    STA_WARLBRAINWASH=562,
    STA_WARLBRN01=563,
    STA_STUNCANATTACK=564,
    STA_TRANSFORM=565,
    STA_BALLSNOW=566,
    STA_SNOWMAN=567,
    STA_WARNSETBUFF=568,
    STA_SET_VALEN_STN=569,
    STA_SET_VALEN_Heal=570,
    STA_VALEN_REWARD=571,
    STA_KQEGG_SPDW=572,
    STA_KQEGG_REWARD=573,
    STA_KQEGG_SPUP=574,
    STA_KQSPRING_FEAR=575,
    STA_KQSPRING_SLOW=576,
    STA_KQ_SPUP_BUFF=577,
    STA_KQ_SPIM_BUFF=578,
    STA_KQ_SPUP_RATE_BUFF=579,
    STA_KQSPRING_ARROW=580,
    STA_WARHBRN01=581,
    STA_WARHBRN=582,
    STA_STRONGER_RANGEATTACK=583,
    STA_STRONGER_MELEEATTACK=584,
    STA_FLAMINGBODY=585,
    STA_COUNT30=586,
    STA_WARHWPNBRN=587,
    STA_ORBATKRATEUP=588,
    STA_RECOUP=589,
    STA_LIGHTTOUCH=590,
    STA_TREAT=591,
    STA_LIGHTMARK=592,
    STA_MINHP=593,
    STA_MOONLIGHT=594,
    STA_LPDOTPLUS=595,
    STA_DMGSHIELD=596,
    STA_DELCASTTIME=597,
    STA_SETS2WCMAUP=598,
    STA_SETS2ACMRUP=599,
    STA_SETS4WCMAUP=600,
    STA_SETS4ACMRUP=601,
    STA_SENPARTYHPUPMAIN=602,
    STA_SENPARTYHPUP=603,
    STA_SENPARTYHPUP1=604,
    STA_SENEVENTEXPUP=605,
    STA_SENEVENTDROPUP=606,
    STA_PZL_HIDE=607,
    STA_PZL_OCCUPY=608,
    STA_PZL_REWARD_S=609,
    STA_PZL_REWARD_H=610,
    STA_PZL_REWARD_SH1=611,
    STA_PZL_REWARD_SH2=612,
    STA_ROUTMAGEATKUP=613,
    STA_ARK_STN=614,
    STA_ARK_BLD01=615,
    STA_ARK_BLD02=616,
    STA_ARK_BLD03=617,
    STA_ARK_BRN01=618,
    STA_ARK_BRN02=619,
    STA_ARK_BRN03=620,
    STA_ARK_THDOWN01=621,
    STA_ARK_THDOWN02=622,
    STA_KAHAL_STN=623,
    STA_KAHAL_BLD=624,
    STA_KAHAL_FEAR01=625,
    STA_KAHAL_FEAR02=626,
    STA_KAHAL_SHOUT=627,
    STA_KAHAL_SPDDOWN=628,
    STA_KAHAL_ICE=629,
    STA_SIREN_STN1=630,
    STA_SIREN_STN2=631,
    STA_SIREN_NOMOVE=632,
    STA_SIREN_KNOCKBACK1=633,
    STA_SIREN_KNOCKBACK2=634,
    STA_SIREN_HEAL=635,
    STA_SIREN_LVT1=636,
    STA_SIREN_LVT2=637,
    STA_SIREN_BLD01=638,
    STA_SIREN_FEAR=639,
    STA_SIREN_BLD02=640,
    STA_CONHPPOTION_T6=641,
    STA_CONSPPOTION_T6=642,
    STA_DEXPOTION_T6=643,
    STA_ACMRPOTION_T6=644,
    STA_STRCRIPOTION_T6=645,
    STA_PSNRESIPOTION_T6=646,
    STA_DSSRESIPOTION_T6=647,
    STA_CURRESIPOTION_T6=648,
    STA_THSCROLL_T6=649,
    STA_TBSCROLL_T6=650,
    STA_MRSCROLL_T6=651,
    STA_ACSCROLL_T6=652,
    STA_CRISCROLL_T6=653,
    STA_MAXHPSCROLL_T6=654,
    STA_MAXSPSCROLL_T6=655,
    STA_MSSCROLL_T6=656,
    STA_BERVALE_ICE01=657,
    STA_BERVALE_ICE02=658,
    STA_BERVALE_BLD01=659,
    STA_BERVALE_BLD02=660,
    STA_B_ALBI_BRN=661,
    STA_B_ALBI_KNOCK=662,
    STA_B_ALBI_STN=663,
    STA_B_ALBI_FEAR=664,
    STA_B_ALBI_DOT=665,
    STA_B_ALBI_REFLECT=666,
    STA_B_ALBI_ACMRUP=667,
    STA_ADLFGCRAZY=668,
    STA_FCITRIEDOT=669,
    STA_LCWCMAUP=670,
    STA_E_SLIME=671,
    STA_E_HONEYING=672,
    STA_E_PHINO=673,
    STA_E_LIZARDMAN=674,
    STA_E_KINGCRAB=675,
    STA_E_SPARKDOG=676,
    STA_E_LAVAVIVI=677,
    STA_E_PHINOFLIE=678,
    STA_E_MUSHROOM=679,
    STA_E_SPIDER=680,
    STA_E_B_CRACKERHUMAR=681,
    STA_E_HELGA=682,
    STA_EMP_STUN=683,
    STA_EMP_KINGBLOODING=684,
    STA_EMP_EMPBLOODING=685,
    STA_EMP_LVT=686,
    STA_LCACMRUP=687,
    STA_E_FIREWORKS=688,
    STA_ARENA_SPDUP=689,
    STA_ARENA_STUN=690,
    STA_ARENA_DRAGOUT=691,
    STA_ARENA_DEFDW=692,
    STA_ARENA_SPDDW=693,
    STA_ARENA_ALLDW=694,
    STA_ARENA_REWARD=695,
    STA_ARENA_FLAG_RED=696,
    STA_ARENA_FLAG_BLUE=697,
    STA_ARENA_MINHP=698,
    STA_X_ICE=699,
    STA_X_SNOWMAN=700,
    STA_X_REWARD01=701,
    STA_X_REWARD02=702,
    STA_X_REWARD03=703,
    STA_X_REWARD04=704,
    STA_E_SKI_ICE=705,
    STA_E_SKI_SPEEDUP=706,
    STA_E_SKI_REWARD=707,
    STA_E_SKI_STUN=708,
    STA_LAB_PURYIMPACTSTUN=709,
    STA_C_PURYIMPACTSTUN=710,
    STA_E_EGG2014_HOSHEMING=711,
    STA_E_EGG2014_SELFREVIVE=712,
    STA_E_EGG2014_EXPUP=713,
    STA_E_EGG2014_DROPRATEUP=714,
    STA_MOVERSTATUPSINGLE=715,
    STA_MOVERSTATUPPARTY=716,
    STA_MOVERSTATUP=717,
    STA_KDSOCCER_SPEED_UP=718,
    STA_KDSOCCER_INVINCIBLE=719,
    STA_KQWATER_ARROW_BLUE=720,
    STA_KQWATER_ARROW_RED=721,
    STA_E_JACKO=722,
    STA_E_KEBING=723,
    STA_E_FORASCHIEF=724,
    STA_E_H_WIN_SPEEDUP=725,
    STA_E_H_WIN_SPEEDDOWN=726,
    STA_ADLFLOUSSIER_H=727,
    STA_E_USER_NEWBIE01=728,
    STA_E_USER_NEWBIE02=729,
    STA_E_USER_NEWBIE03=730,
    STA_E_USER_NEWBIE04=731,
    STA_E_USER_NEWBIE05=732,
    STA_E_USER_COMEBACK_MAIN01=733,
    STA_E_USER_COMEBACK_MAIN02=734,
    STA_E_USER_COMEBACK_MAIN03=735,
    STA_E_USER_COMEBACK_MAIN04=736,
    STA_E_USER_COMEBACK_MAIN05=737,
    STA_E_USER_COMEBACK01=738,
    STA_E_USER_COMEBACK02=739,
    STA_E_USER_COMEBACK03=740,
    STA_E_USER_COMEBACK04=741,
    STA_E_USER_COMEBACK05=742,
    STA_XMAS_STATUP=743,
    STA_IDBUFF_100=744,
    STA_IDBUFF_80=745,
    STA_IDBUFF_60=746,
    STA_IDBUFF_40=747,
    STA_IDBUFF_20=748,
    STA_E_SNOWMANR=749,
    STA_E_SNOWMANB=750,
    STA_KDFARGELS_BLOOD01=751,
    STA_KDFARGELS_BLOOD02=752,
    STA_KDFARGELS_BLOOD03=753,
    STA_KDFARGELS_MRDOWNRATE=754,
    STA_KDFARGELS_AIRBORNE=755,
    STA_KDFARGELS_ACMRDOWN=756,
    STA_KDFARGELS_DMGNEGLECT=757,
    STA_KDFARGELS_DOTHEAL=758,
    STA_SDVALE01_STN=759,
    STA_SDVALE01_WHEEL=760,
    STA_SDVALE01_SPDUP=761,
    STA_SDVALE01_SPDDOWN=762,
    STA_SDVALE01_BLIND=763,
    STA_SDVALE01_PSN=764,
    STA_SDVALE01_ICEFIELD=765,
    STA_SDVALE01_BRN=766,
    STA_SDVALE01_WCMAUP=767,
    STA_SDVALE01_KNOCK=768,
    STA_COSMUSAACRATE=769,
    STA_COSMUSACRI=770,
    STA_COSMUSAALLSTAT=771,
    STA_BH_ALBI_REFLECT=772,
    STA_BH_ALBI_ACMRUP=773,
    STA_E_ZOMBIE=774,
    STA_E_MARACREW=775,
    STA_E_MARAELITE=776,
    STA_E_MARASAILOR=777,
    STA_E_PSYKEN=778,
    STA_E_PSYKENDOG=779,
    STA_E_MEGAN=780,
    STA_E_YETI=781,
    STA_E_IMP=782,
    STA_E_ROBO=783,
    STA_E_HOB=784,
    STA_E_PINKY=785,
    STA_E_WARH_DEVILDOM=786,
    STA_E_ARKNOVICE=787,
    STA_E_ARKTECH=788,
    STA_E_MANDRAGORA=789,
    STA_E_S_HAYREDDIN=790,
    STA_E_MARA=791,
    MAX_ABSTATEINDEX=792
} ABSTATEINDEX;
```
```cpp
typedef enum DispelAttr {
    DA_NONE=0,
    DA_GOOD=1,
    DA_DEBUFF=2,
    DA_DISEASE=3,
    DA_POISON=4,
    DA_CURSE=5,
    DA_STUN=6,
    DA_FEAR=7,
    DA_DEEPER=8,
    DA_HIDE=9,
    DA_BOMB=10,
    DA_CHARGED=11,
    MAX_DISPELATTR=12
} DispelAttr;
```
```cpp
typedef enum SubDispelAttr {
    SDA_NONE=0,
    SDA_STUN=1,
    SDA_MOVESPEED=2,
    SDA_FEAR=3,
    SDA_BLOODING=4,
    SDA_DEEPER=5,
    SDA_BLIND=6,
    SDA_REVERSE=7,
    SDA_BIND=8,
    SDA_MESMERIZE=9,
    SDA_SEVERBONE=10,
    SDA_KNOCKBACK=11,
    SDA_TBMINUS=12,
    SDA_GTIRESIST=13,
    MAX_SUBDISPELATTR=14
} SubDispelAttr;
```
## Abstate Types

Abstates have a hidden type that changes how it can be used. A simple dump:


| Index | Type |
| -------------------- | ------------------ | 
| 0 | Normal |
| 1 | Tick |
| 2 | Normal |
| 3 | Party |
| 4 | Normal |
| 5 | Normal |
| 6 | Normal |
| 7 | Normal |
| 8 | Normal |
| 9 | Normal |
| 10 | Normal |
| 11 | Normal |
| 12 | Normal |
| 13 | Normal |
| 14 | Tick |
| 15 | RestCount |
| 16 | RestCount |
| 17 | Normal |
| 18 | Party |
| 19 | Normal |
| 20 | Normal |
| 21 | Normal |
| 22 | Tick |
| 23 | Normal |
| 24 | Tick |
| 25 | Normal |
| 26 | Party |
| 27 | Normal |
| 28 | RestCount |
| 29 | Party |
| 30 | Normal |
| 31 | Normal |
| 32 | Normal |
| 33 | Normal |
| 34 | Normal |
| 35 | Normal |
| 36 | Normal |
| 37 | Normal |
| 38 | Normal |
| 39 | Normal |
| 40 | Normal |
| 41 | Normal |
| 42 | Normal |
| 43 | Normal |
| 44 | Normal |
| 45 | Normal |
| 46 | Normal |
| 47 | Normal |
| 48 | Normal |
| 49 | Normal |
| 50 | Normal |
| 51 | Tick |
| 52 | Normal |
| 53 | Party |
| 54 | Normal |
| 55 | Tick |
| 56 | Normal |
| 57 | Tick |
| 58 | Normal |
| 59 | Party |
| 60 | Normal |
| 61 | Tick |
| 62 | Normal |
| 63 | Normal |
| 64 | Tick |
| 65 | Normal |
| 66 | Normal |
| 67 | Normal |
| 68 | Normal |
| 69 | Normal |
| 70 | Normal |
| 71 | Normal |
| 72 | Normal |
| 73 | Normal |
| 74 | Normal |
| 75 | Normal |
| 76 | Normal |
| 77 | Normal |
| 78 | Normal |
| 79 | Tick |
| 80 | Normal |
| 81 | Normal |
| 82 | Normal |
| 83 | Normal |
| 84 | Normal |
| 85 | EachTick |
| 86 | Normal |
| 87 | Normal |
| 88 | Normal |
| 89 | Normal |
| 90 | Party |
| 91 | Normal |
| 92 | Normal |
| 93 | Normal |
| 94 | Normal |
| 95 | Normal |
| 96 | Normal |
| 97 | Polymorph |
| 98 | Normal |
| 99 | Normal |
| 100 | Tick |
| 101 | Normal |
| 102 | Normal |
| 103 | Tick |
| 104 | Normal |
| 105 | Normal |
| 106 | Normal |
| 107 | Normal |
| 108 | Normal |
| 109 | Tick |
| 110 | Normal |
| 111 | Normal |
| 112 | Normal |
| 113 | EachTick |
| 114 | EachTick |
| 115 | EachTick |
| 116 | Tick |
| 117 | Normal |
| 118 | Normal |
| 119 | Normal |
| 120 | Normal |
| 121 | Normal |
| 122 | Normal |
| 123 | Normal |
| 124 | Normal |
| 125 | Normal |
| 126 | Normal |
| 127 | Normal |
| 128 | Normal |
| 129 | Normal |
| 130 | Normal |
| 131 | Normal |
| 132 | Normal |
| 133 | Normal |
| 134 | Normal |
| 135 | Normal |
| 136 | Normal |
| 137 | Normal |
| 138 | Normal |
| 139 | Normal |
| 140 | Normal |
| 141 | Tick |
| 142 | Tick |
| 143 | Tick |
| 144 | Tick |
| 145 | Tick |
| 146 | Tick |
| 147 | Tick |
| 148 | Tick |
| 149 | Tick |
| 150 | Tick |
| 151 | Normal |
| 152 | Normal |
| 153 | Normal |
| 154 | Normal |
| 155 | Normal |
| 156 | Normal |
| 157 | Normal |
| 158 | Normal |
| 159 | Normal |
| 160 | Normal |
| 161 | Normal |
| 162 | Normal |
| 163 | Normal |
| 164 | Normal |
| 165 | Normal |
| 166 | Normal |
| 167 | Normal |
| 168 | Normal |
| 169 | Normal |
| 170 | Normal |
| 171 | Normal |
| 172 | Normal |
| 173 | Tick |
| 174 | Tick |
| 175 | Tick |
| 176 | Tick |
| 177 | Tick |
| 178 | Tick |
| 179 | Tick |
| 180 | Tick |
| 181 | Tick |
| 182 | Tick |
| 183 | Tick |
| 184 | Tick |
| 185 | Tick |
| 186 | Tick |
| 187 | Tick |
| 188 | Tick |
| 189 | Tick |
| 190 | Tick |
| 191 | Tick |
| 192 | Tick |
| 193 | Tick |
| 194 | Tick |
| 195 | Tick |
| 196 | Tick |
| 197 | Tick |
| 198 | Normal |
| 199 | Normal |
| 200 | Normal |
| 201 | Normal |
| 202 | Normal |
| 203 | Normal |
| 204 | Tick |
| 205 | Tick |
| 206 | Tick |
| 207 | Tick |
| 208 | Tick |
| 209 | Tick |
| 210 | Tick |
| 211 | Tick |
| 212 | Tick |
| 213 | Tick |
| 214 | Tick |
| 215 | Normal |
| 216 | Normal |
| 217 | Normal |
| 218 | Normal |
| 219 | Normal |
| 220 | Normal |
| 221 | Normal |
| 222 | Normal |
| 223 | Normal |
| 224 | Normal |
| 225 | Normal |
| 226 | Normal |
| 227 | Normal |
| 228 | Normal |
| 229 | Normal |
| 230 | Normal |
| 231 | Normal |
| 232 | Normal |
| 233 | Normal |
| 234 | Normal |
| 235 | Normal |
| 236 | Normal |
| 237 | Normal |
| 238 | Normal |
| 239 | Normal |
| 240 | Normal |
| 241 | Normal |
| 242 | Normal |
| 243 | Normal |
| 244 | Normal |
| 245 | Normal |
| 246 | Normal |
| 247 | Normal |
| 248 | Normal |
| 249 | Normal |
| 250 | Normal |
| 251 | Normal |
| 252 | Normal |
| 253 | Normal |
| 254 | Normal |
| 255 | Normal |
| 256 | Normal |
| 257 | Normal |
| 258 | Normal |
| 259 | Normal |
| 260 | Normal |
| 261 | Normal |
| 262 | Normal |
| 263 | Normal |
| 264 | Normal |
| 265 | Normal |
| 266 | Normal |
| 267 | Normal |
| 268 | Normal |
| 269 | Normal |
| 270 | Normal |
| 271 | Normal |
| 272 | Normal |
| 273 | Normal |
| 274 | Normal |
| 275 | Normal |
| 276 | Normal |
| 277 | Normal |
| 278 | Normal |
| 279 | Normal |
| 280 | Normal |
| 281 | Normal |
| 282 | Normal |
| 283 | Normal |
| 284 | Normal |
| 285 | Normal |
| 286 | Normal |
| 287 | Normal |
| 288 | Hide |
| 289 | Normal |
| 290 | Normal |
| 291 | Normal |
| 292 | Normal |
| 293 | WedCpl |
| 294 | Normal |
| 295 | Normal |
| 296 | Tick |
| 297 | GldAca |
| 298 | Normal |
| 299 | GldAca |
| 300 | Normal |
| 301 | Normal |
| 302 | Normal |
| 303 | Tick |
| 304 | Tick |
| 305 | Normal |
| 306 | Normal |
| 307 | Normal |
| 308 | Normal |
| 309 | Normal |
| 310 | Normal |
| 311 | Normal |
| 312 | Normal |
| 313 | Normal |
| 314 | Normal |
| 315 | Normal |
| 316 | EachTick |
| 317 | EachTick |
| 318 | EachTick |
| 319 | EachTick |
| 320 | EachTick |
| 321 | EachTick |
| 322 | EachTick |
| 323 | EachTick |
| 324 | EachTick |
| 325 | EachTick |
| 326 | Normal |
| 327 | Tick |
| 328 | Normal |
| 329 | Normal |
| 330 | Normal |
| 331 | Normal |
| 332 | Tick |
| 333 | RestCount |
| 334 | Normal |
| 335 | Normal |
| 336 | Normal |
| 337 | Normal |
| 338 | Normal |
| 339 | Tick |
| 340 | Normal |
| 341 | Normal |
| 342 | Tick |
| 343 | EachTick |
| 344 | Normal |
| 345 | Normal |
| 346 | ReinforcedMove |
| 347 | ReinforcedMove |
| 348 | ReinforcedMove |
| 349 | ReinforcedMove |
| 350 | Recover |
| 351 | Normal |
| 352 | Normal |
| 353 | Normal |
| 354 | Normal |
| 355 | Normal |
| 356 | Normal |
| 357 | Normal |
| 358 | Normal |
| 359 | Normal |
| 360 | Normal |
| 361 | Normal |
| 362 | Normal |
| 363 | Normal |
| 364 | Normal |
| 365 | Normal |
| 366 | Normal |
| 367 | Normal |
| 368 | Normal |
| 369 | Normal |
| 370 | Normal |
| 371 | EachTick |
| 372 | Normal |
| 373 | Normal |
| 374 | Tick |
| 375 | Tick |
| 376 | Tick |
| 377 | Tick |
| 378 | Normal |
| 379 | Normal |
| 380 | Tick |
| 381 | Tick |
| 382 | Normal |
| 383 | ReinforcedMove |
| 384 | Normal |
| 385 | Normal |
| 386 | Normal |
| 387 | Tick |
| 388 | Normal |
| 389 | Normal |
| 390 | Normal |
| 391 | Normal |
| 392 | Normal |
| 393 | Normal |
| 394 | Normal |
| 395 | Tick |
| 396 | Tick |
| 397 | Normal |
| 398 | Tick |
| 399 | Normal |
| 400 | Normal |
| 401 | Normal |
| 402 | Normal |
| 403 | Normal |
| 404 | Normal |
| 405 | Normal |
| 406 | Normal |
| 407 | Normal |
| 408 | Normal |
| 409 | Tick |
| 410 | Tick |
| 411 | Normal |
| 412 | Normal |
| 413 | Normal |
| 414 | Normal |
| 415 | Normal |
| 416 | Tick |
| 417 | Normal |
| 418 | Normal |
| 419 | Normal |
| 420 | Tick |
| 421 | Normal |
| 422 | Normal |
| 423 | Normal |
| 424 | Normal |
| 425 | Normal |
| 426 | Normal |
| 427 | Normal |
| 428 | Normal |
| 429 | Normal |
| 430 | Normal |
| 431 | Tick |
| 432 | Normal |
| 433 | Tick |
| 434 | Normal |
| 435 | Normal |
| 436 | Normal |
| 437 | Normal |
| 438 | Normal |
| 439 | Normal |
| 440 | Normal |
| 441 | Tick |
| 442 | Normal |
| 443 | Normal |
| 444 | Normal |
| 445 | Normal |
| 446 | Normal |
| 447 | Normal |
| 448 | Normal |
| 449 | Normal |
| 450 | Normal |
| 451 | Tick |
| 452 | Normal |
| 453 | Normal |
| 454 | Normal |
| 455 | Tick |
| 456 | Normal |
| 457 | Tick |
| 458 | Normal |
| 459 | RestCount |
| 460 | RestCount |
| 461 | Tick |
| 462 | Tick |
| 463 | Normal |
| 464 | Normal |
| 465 | Normal |
| 466 | Normal |
| 467 | Normal |
| 468 | Tick |
| 469 | Normal |
| 470 | Normal |
| 471 | Normal |
| 472 | Normal |
| 473 | Normal |
| 474 | Normal |
| 475 | Normal |
| 476 | Normal |
| 477 | Normal |
| 478 | Normal |
| 479 | Normal |
| 480 | Normal |
| 481 | Normal |
| 482 | Normal |
| 483 | Normal |
| 484 | Normal |
| 485 | Normal |
| 486 | Normal |
| 487 | Normal |
| 488 | Normal |
| 489 | Normal |
| 490 | Normal |
| 491 | Normal |
| 492 | Tick |
| 493 | RestCount |
| 494 | Tick |
| 495 | Tick |
| 496 | Normal |
| 497 | Normal |
| 498 | Normal |
| 499 | Normal |
| 500 | Normal |
| 501 | Tick |
| 502 | Normal |
| 503 | Normal |
| 504 | ReinforcedMove |
| 505 | Normal |
| 506 | Normal |
| 507 | Normal |
| 508 | Normal |
| 509 | Normal |
| 510 | Normal |
| 511 | Normal |
| 512 | Normal |
| 513 | Normal |
| 514 | Normal |
| 515 | Normal |
| 516 | Normal |
| 517 | Normal |
| 518 | Normal |
| 519 | Normal |
| 520 | Normal |
| 521 | Normal |
| 522 | Normal |
| 523 | Normal |
| 524 | Normal |
| 525 | Normal |
| 526 | Normal |
| 527 | Normal |
| 528 | Normal |
| 529 | Normal |
| 530 | Normal |
| 531 | Normal |
| 532 | Normal |
| 533 | Normal |
| 534 | Normal |
| 535 | Normal |
| 536 | Normal |
| 537 | Normal |
| 538 | Normal |
| 539 | Normal |
| 540 | Normal |
| 541 | Normal |
| 542 | Normal |
| 543 | Normal |
| 544 | Normal |
| 545 | Tick |
| 546 | ReinforcedMove |
| 547 | Normal |
| 548 | Normal |
| 549 | Normal |
| 550 | Normal |
| 551 | Normal |
| 552 | Normal |
| 553 | Normal |
| 554 | Normal |
| 555 | Normal |
| 556 | Normal |
| 557 | Tick |
| 558 | Normal |
| 559 | ReinforcedMove |
| 560 | Normal |
| 561 | Normal |
| 562 | Normal |
| 563 | Tick |
| 564 | Normal |
| 565 | Normal |
| 566 | Normal |
| 567 | Normal |
| 568 | Normal |
| 569 | Normal |
| 570 | Tick |
| 571 | Normal |
| 572 | Normal |
| 573 | Normal |
| 574 | Normal |
| 575 | Tick |
| 576 | Normal |
| 577 | Normal |
| 578 | Normal |
| 579 | Normal |
| 580 | Normal |
| 581 | Tick |
| 582 | Tick |
| 583 | Normal |
| 584 | Normal |
| 585 | Normal |
| 586 | Normal |
| 587 | Tick |
| 588 | Normal |
| 589 | Tick |
| 590 | RestCountHPRate |
| 591 | Tick |
| 592 | Normal |
| 593 | Normal |
| 594 | Normal |
| 595 | Normal |
| 596 | RestCount |
| 597 | Normal |
| 598 | Normal |
| 599 | Normal |
| 600 | Normal |
| 601 | Normal |
| 602 | Party |
| 603 | Normal |
| 604 | Normal |
| 605 | Normal |
| 606 | Normal |
| 607 | Normal |
| 608 | Normal |
| 609 | Normal |
| 610 | Normal |
| 611 | Normal |
| 612 | Normal |
| 613 | Normal |
| 614 | Normal |
| 615 | Tick |
| 616 | Tick |
| 617 | Tick |
| 618 | Tick |
| 619 | Tick |
| 620 | Tick |
| 621 | Normal |
| 622 | Normal |
| 623 | Normal |
| 624 | Tick |
| 625 | EachTick |
| 626 | EachTick |
| 627 | Normal |
| 628 | Normal |
| 629 | Normal |
| 630 | Normal |
| 631 | Normal |
| 632 | Normal |
| 633 | ReinforcedMove |
| 634 | ReinforcedMove |
| 635 | Tick |
| 636 | Normal |
| 637 | Normal |
| 638 | Tick |
| 639 | EachTick |
| 640 | Tick |
| 641 | Tick |
| 642 | Tick |
| 643 | Normal |
| 644 | Normal |
| 645 | Normal |
| 646 | Normal |
| 647 | Normal |
| 648 | Normal |
| 649 | Normal |
| 650 | Normal |
| 651 | Normal |
| 652 | Normal |
| 653 | Normal |
| 654 | Normal |
| 655 | Normal |
| 656 | Normal |
| 657 | Normal |
| 658 | Normal |
| 659 | Tick |
| 660 | Tick |
| 661 | Tick |
| 662 | ReinforcedMove |
| 663 | Normal |
| 664 | EachTick |
| 665 | Tick |
| 666 | Normal |
| 667 | Normal |
| 668 | Normal |
| 669 | Tick |
| 670 | Normal |
| 671 | Normal |
| 672 | Normal |
| 673 | Normal |
| 674 | Normal |
| 675 | Normal |
| 676 | Normal |
| 677 | Normal |
| 678 | Normal |
| 679 | Normal |
| 680 | Normal |
| 681 | Normal |
| 682 | Normal |
| 683 | Normal |
| 684 | Tick |
| 685 | Tick |
| 686 | Normal |
| 687 | Normal |
| 688 | Normal |
| 689 | Normal |
| 690 | Normal |
| 691 | ReinforcedMove |
| 692 | Normal |
| 693 | Normal |
| 694 | Normal |
| 695 | Normal |
| 696 | Normal |
| 697 | Normal |
| 698 | Normal |
| 699 | Normal |
| 700 | Normal |
| 701 | Normal |
| 702 | Normal |
| 703 | Normal |
| 704 | Normal |
| 705 | Normal |
| 706 | Normal |
| 707 | Normal |
| 708 | Normal |
| 709 | Tick |
| 710 | Tick |
| 711 | Normal |
| 712 | Normal |
| 713 | Normal |
| 714 | Normal |
| 715 | Normal |
| 716 | Party |
| 717 | Normal |
| 718 | Normal |
| 719 | Normal |
| 720 | Normal |
| 721 | Normal |
| 722 | Normal |
| 723 | Normal |
| 724 | Normal |
| 725 | Normal |
| 726 | Normal |
| 727 | Normal |
| 728 | Normal |
| 729 | Normal |
| 730 | Normal |
| 731 | Normal |
| 732 | Normal |
| 733 | Party |
| 734 | Party |
| 735 | Party |
| 736 | Party |
| 737 | Party |
| 738 | Normal |
| 739 | Normal |
| 740 | Normal |
| 741 | Normal |
| 742 | Normal |
| 743 | Normal |
| 744 | Normal |
| 745 | Normal |
| 746 | Normal |
| 747 | Normal |
| 748 | Normal |
| 749 | Normal |
| 750 | Normal |
| 751 | Tick |
| 752 | Tick |
| 753 | Tick |
| 754 | Normal |
| 755 | Normal |
| 756 | Normal |
| 757 | Normal |
| 758 | Tick |
| 759 | Normal |
| 760 | Tick |
| 761 | Normal |
| 762 | Normal |
| 763 | Normal |
| 764 | Tick |
| 765 | Normal |
| 766 | Tick |
| 767 | Normal |
| 768 | ReinforcedMove |
| 769 | Normal |
| 770 | Normal |
| 771 | Normal |
| 772 | Normal |
| 773 | Normal |
| 774 | Normal |
| 775 | Normal |
| 776 | Normal |
| 777 | Normal |
| 778 | Normal |
| 779 | Normal |
| 780 | Normal |
| 781 | Normal |
| 782 | Normal |
| 783 | Normal |
| 784 | Normal |
| 785 | Normal |
| 786 | Normal |
| 787 | Normal |
| 788 | Normal |
| 789 | Normal |
| 790 | Normal |
| 791 | Normal |
