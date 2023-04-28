| MobWeapon |
| --------- | --------------- | ------------------------------ | ------------------------------------------------------------------------------------------------------------- |
| DWORD           | ID                             |                                                                                                               | A unique value given to each monster. |
| STR[33]   | InxName         |                                | Monster unique index in English. No spaces.                                                                   |
| STR[32]   | Skill           |                                |                                                                                                               |
| WORD      | AtkSpd          | actual attack cycle            | If the server sends this value, the client plays the animation according to this value.                       |
| WORD      | BlastRate       |                                |                                                                                                               |
| WORD      | AtkDly          | delay time                     | Delay time from using a skill to starting the next skill (or normal attack)                                   |
| WORD      | CastTime        | total casting time             | Skill casting + cast ready time.                                                                              |
| WORD      | SwingTime       | real animation time            | Total animation time the client's graphics resource has                                                       |
| WORD      | HitTime         | actual hit time                | The damage output time the client animation has.                                                              |
|           | AtkType         | attack type                    | As a field that defines the skill type, flat hits are excluded from the application.                          |
| DWORD     | MinWC           | Minimum Physical Attack        |                                                                                                               |
| DWORD     | MaxWC           | maximum physical attack power  |                                                                                                               |
| WORD      | TH              | physical accuracy              |                                                                                                               |
| DWORD     | MinMA           | Minimum Magic Attack           |                                                                                                               |
| DWORD     | MaxMA           | Max Magic Attack               |                                                                                                               |
| WORD      | MH              | magic hit                      |                                                                                                               |
| WORD      | Range           | range                          |                                                                                                               |
| INX[AJ7]  | MopAttackTarget |                                |                                                                                                               |
| INX[AK7]  | HitType         |                                |                                                                                                               |
| STR[33]   | StaName         | abnormal status                |                                                                                                               |
| WORD      | StaStrength     | Status Abnormality Rating      |                                                                                                               |
| WORD      | StaRate         | status abnormality probability |                                                                                                               |
| WORD      | AggroInitialize | reset aggro                    | When a status abnormality is specified in MobWeapon, aggro is initialized with the probability of this value. |