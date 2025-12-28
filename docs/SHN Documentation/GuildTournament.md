| SHNs      |                           |
| --------- | ------------------------- |
| File Name | GuildTournament           |
| File Name | GuildTournamentReward     |
| File Name | GuildTournamentRequire    |
| File Name | GuildTournamentSkill      |
| File Name | GuildTournamentSkillDesc  |
| File Name | GuildTournamentLvGap      |
| File Name | GuildTournamentOccupy     |
| File Name | GuildTournamentMasterBuff |
| File Name | GuildTournamentScore      |
| File Name | GTWinScore                |

| Schedule |                 |                           |
| -------- | --------------- | ------------------------- |
| BYTE     | isActive        | Table of schedules to use |
| BYTE     | Weeks           | Gilto start time          |
| BYTE     | Week            | Gilto start time          |
| BYTE     | Hour            | Gilto start time          |
| BYTE     | Minute          | Gilto start time          |
| BYTE     | TermHour        | Gilto start time          |
| BYTE     | TermMinute      | Gilto start time          |
| WORD     | MatchCycleMin   | Gilto start time          |
| WORD     | ExploerTimeMin  | one game time             |
| WORD     | WaitPlayTimeSec | one game time             |
| WORD     | PlayTime        | one game time             |
| WORD     | Deadline        | preparation time          |
| WORD     | MatchDelay      | preparation time          |
| WORD     | Match_161       | tournament progress       |
| WORD     | Match_162       | tournament progress       |
| WORD     | Match_8         | tournament progress       |
| WORD     | Match_4         | tournament progress       |
| WORD     | Match_2         | tournament progress       |
| REMARK   | Totlal          | tournament progress       |

| Reward                |             |                      |
| --------------------- | ----------- | -------------------- |
| BYTE                  | Rank        | Gilto Rank           |
| BYTE                  | RewardGroup | reward number        |
| INX["GT_REWARD_TYPE"] | RewardType  | Compensation type    |
| DWORD                 | Value1      | Value by reward type |
| DWORD                 | Value2      | Value by reward type |
| DWORD                 | Value3      | Value by reward type |
| DWORD                 | IO_Str      | strength             |
| DWORD                 | IO_Con      | sifter               |
| DWORD                 | IO_Dex      | min                  |
| DWORD                 | IO_Int      | ji                   |
| DWORD                 | IO_Men      | affection            |

| GTRequire |           |                                                                                                                    |
| --------- | --------- | ------------------------------------------------------------------------------------------------------------------ |
| MinLv     | MinLv     | Members of a certain level or higher must have a certain number of members to participate in the Guild Tournament. |
| MinMem    | MinMem    | Members of a certain level or higher must have a certain number of members to participate in the Guild Tournament. |
| JoinMoney | JoinMoney | Participation fee for Guild Tournament participation                                                               |

| GTSkill           |            |                                                                                                                                   |
| ----------------- | ---------- | --------------------------------------------------------------------------------------------------------------------------------- |
| WORD              | MAP_TYPE   | A group of skills to use for guild tournaments. If you add a new Gilto, you need to define it differently.                        |
| WORD              | Index      | Unique ID of guild skill                                                                                                          |
| WORD              | DeathPoint | Skills can be used when a certain number of guild members participating in Gilto die                                              |
| STR[32]           | StaName    | When a certain number of guild members participating in Gilto die, the skill can be used. Status abnormality index to use for it. |
| INX["TargetType"] | TargetType | Target to apply guild skill to                                                                                                    |
| DWORD             | DlyTime    | Guild skill reuse delay time                                                                                                      |

| GTSkillDesc |             |                                                                                                            |
| ----------- | ----------- | ---------------------------------------------------------------------------------------------------------- |
| WORD        | MAP_TYPE    | A group of skills to use for guild tournaments. If you add a new Gilto, you need to define it differently. |
| WORD        | Index       | Unique ID of guild skill                                                                                   |
| DWORD       | IconIndex   | Guild skill icon number                                                                                    |
| STR[32]     | IconFile    | Guild skill icon file name                                                                                 |
| STR[32]     | Name        | guild skill name                                                                                           |
| STR[64]     | Description | Description of Guild Skills                                                                                |

| GTLvGap |           |                                                                                                            |
| ------- | --------- | ---------------------------------------------------------------------------------------------------------- |
| WORD    | MAP_TYPE  | A group of skills to use for guild tournaments. If you add a new Gilto, you need to define it differently. |
| FLOAT   | LvGap     | Level of enemy guild members I killed - My level                                                           |
| WORD    | PointRate | Percentage of Points Earned by Level Gap                                                                   |

| GTScore                |             |                                                                                                            |
| ---------------------- | ----------- | ---------------------------------------------------------------------------------------------------------- |
| WORD                   | MAP_TYPE    | A group of skills to use for guild tournaments. If you add a new Gilto, you need to define it differently. |
| REMARK                 | MyGrade     |                                                                                                            |
| WORD_ARRAY(GradeScore) | EnemyGrade0 |                                                                                                            |
| WORD_ARRAY(GradeScore) | EnemyGrade1 |                                                                                                            |
| WORD_ARRAY(GradeScore) | EnemyGrade2 |                                                                                                            |
| WORD_ARRAY(GradeScore) | EnemyGrade3 |                                                                                                            |
| WORD_ARRAY(GradeScore) | EnemyGrade4 |                                                                                                            |
| WORD_ARRAY(GradeScore) | EnemyGrade5 |                                                                                                            |
| WORD_ARRAY(GradeScore) | EnemyGrade6 |                                                                                                            |

| GTOccupy |            |                                                                                                              |
| -------- | ---------- | ------------------------------------------------------------------------------------------------------------ |
| WORD     | MAP_TYPE   | A group of skills to use for guild tournaments. If you add a new Gilto, you need to define it differently.   |
| WORD     | OccupyTime | Unit time to earn points for capturing the flag. If this time is not met, no points are awarded for capture. |
| WORD     | Score      | Points earned when occupied for unit time                                                                    |

| GTMasterBuff |           |                                                                                                                  |
| ------------ | --------- | ---------------------------------------------------------------------------------------------------------------- |
| WORD         | MAP_TYPE  | A group of skills to use for guild tournaments. If you add a new Gilto, you need to define it differently.       |
| STR[32]      | StateName | If the guild leader is participating in a guild tournament, this status ailment is applied to the guild members. |

| GTWinScore |          |                                 |
| ---------- | -------- | ------------------------------- |
|            | WinScore | Guild Tournament Victory Points |

## Enums 
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