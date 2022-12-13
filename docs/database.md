---
sidebar_position: 2
---

# Common Database Table Information
Quick and basic rundown of the most commonly viewed tables inside the databases.

:::note
Some columns can vary between sets. But, this information is mostly universal.
:::

## Account Database
### tUser
nUserNo:
```bash
Unique identifier of the account.
```

sUserID:
```bash
Account username.
```

sUserPW:
```bash
Account password. Passwords are hashed with MD5 by default.
```

bIsBlock:
```bash
If the account is blocked or not.
```

nAuthID:
```bash
Account level.
```
:::tip
If the account level equals 9, every character they create will automatically have 100 admin level. This feature is included in all of our sets.
:::

sUserIP:
```bash
IP Address of the account.
```

:::caution
When using our automatic account creation, this field is localhost by default.
:::

sEmail:
```bash
Email Address of the account.
```

:::caution
When using our automatic account creation, this field is NULL.
:::

### tUserAuth

nAuthID:
```bash
Account level. Can be anything you want, really.
```

sAuthName:
```bash
Description.
```

bIsLoginAble:
```bash
If said level can login or not. Useful maintenances.
```

### tChargeItem

:::info
This table is used for an Item Mall.
:::

userNo:
```bash
nUserNo of the account. Same as Account.tUser
```

orderNo:
```bash
Unique identifier of the order.
```

goodsNo:
```bash
ItemShop.shn
```

## AccountLog Database

### tIPBlock

sIPStart:
```bash
The starting range of the IP Addresses.

Example: 192.168.0.1
```

sIPEnd:
```bash
The ending range of the IP Addresses.

Example: 192.168.0.254
```
:::tip
If you're wanting to ban just a single IP, enter that IP in both fields.
:::

## World00_Character Database

### tCharacter

nCharNo:
```bash
Unique identifier of the character.
```

sID:
```bash
Character name.
```

nUserNo:
```bash
Account ID associated with the character.
```

nAdminLevel:
```bash
GM level of the character. Max is usually, 100.
```

sLoginZone:
```
Map InxName of the character.
```

nLoginZoneX:
```bash
X coordinate of the character.
```

nLoginZoneY:
```bash
Y coordinate of the character.
```

nLevel:
```bash
Character level.
```

nExp:
```bash
Character EXP.
```

nFame:
```bash
Character amount of fame.
```

nMoney:
```bash
Character amount of money.
```

### tCharacterShape

nCharNo:
```bash
ID of the character.
```

nClass:
```bash
ClassName.shn
```

nGender:
```bash
Character gender.

1 = Male
2 = Female
```

nHairType:
```bash
HairInfo.shn
```

nHairColor:
```bash
HairColorInfo.shn
```

nFaceShape:
```bash
FaceInfo.shn
```

### tItem

nItemKey:
```bash
Unique identifier of the item.
```

nOwner:
```bash
Character ID that currently has the item.
```

nItemID:
```bash
ItemInfo.shn
```

### tPrison

nCharID:
```bash
Character ID.
```

nMinute:
```bash
The amount of minutes you want the character prisoned for.
```

sReason:
```bash
Description.
```

## Example Queries

This can be useful if you're wanting to build some server statistics.

How many players are currently playing:
```sql
SELECT TOP 1 nCount FROM StatisticsData..tSameTimeChar WHERE nWorld = 0 ORDER BY dDate DESC
```

Registered accounts:
```sql
SELECT COUNT(*) AS [Accounts] FROM Account..tUser
```

Created characters:
```sql
SELECT COUNT(*) AS [Characters] FROM World00_Character..tCharacter
```

Top 10 players:
```sql
SELECT TOP 10 sID, nLevel, nExp, nPKCount, dLastLoginDate FROM World00_Character..tCharacter WHERE nAdminLevel = 0 AND bDeleted = 0 ORDER BY nLevel DESC, dLastLoginDate DESC, nPKCount DESC
```

Top 10 guilds:
```sql
SELECT TOP 10 sName, nWarWinCount, nWarLoseCount, nWarDrawCount FROM World00_Character..tGuild ORDER BY nWarWinCount DESC
```

Who has the most playtime:
```sql
SELECT Top 1 sID, nPlayMin FROM World00_Character..tCharacter WHERE nAdminLevel = 0 AND bDeleted = 0 ORDER  BY nPlayMin DESC
```

Who has the most money:
```sql
SELECT Top 1 sID, nMoney FROM World00_Character..tCharacter WHERE nAdminLevel = 0 AND bDeleted = 0 ORDER  BY nMoney DESC
```