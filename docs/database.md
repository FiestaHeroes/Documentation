---
title: Database
sidebar_position: 2
---

# Database Documentation

Brief overview of the tables that are frequently accessed within databases.

:::note
Although the columns within a set may differ, the information they contain is generally consistent and can be easily compared across all sets.
:::

## Account Database
### tUser
nUserNo:
```bash
Unique identification number for the account.
```

sUserID:
```bash
Account username.
```

sUserPW:
```bash
Account password. Passwords are encrypted using the MD5 algorithm as the default method.
```

bIsBlock:
```bash
If the account has been blocked or not.
```

nAuthID:
```bash
Account level.
```
:::tip
If the account level is set to 9, all characters created under that account will have an automatic admin level of 100. This feature is included in all of our sets.
:::

sUserIP:
```bash
The IP Address associated with the account.
```

:::caution
When utilizing our automatic account creation feature, the default value for this field is set to "localhost".
:::

sEmail:
```bash
The Email Address associated with the account.
```

:::caution
When utilizing our automatic account creation feature, the default value for this field is set to "NULL".
:::

### tUserAuth

nAuthID:
```bash
Account level. This field can be set to any desired value.
```

sAuthName:
```bash
Description.
```

bIsLoginAble:
```bash
Whether or not this level can log in. Useful for maintenance purposes.
```

### tChargeItem

:::info
This table is utilized for a virtual Item Mall.
:::

userNo:
```bash
The identification number linked to the account.
```

orderNo:
```bash
Unique identification number for the order.
```

goodsNo:
```bash
ItemShop.shn.
```

## AccountLog Database

### tIPBlock

sIPStart:
```bash
Starting range of the IP Address.

Example: 192.168.0.1
```

sIPEnd:
```bash
Ending range of the IP Address.

Example: 192.168.0.254
```
:::tip
If you want to ban a specific IP address, enter it in both fields.
:::

## World00_Character Database

### tCharacter

nCharNo:
```bash
Unique identification number for the character.
```

sID:
```bash
Character name.
```

:::tip
If you want to use special characters in your name, such as [GM], you will need to ensure that your nAdminLevel is greater than 0.
:::

nUserNo:
```bash
The identification number linked to the account.
```

nAdminLevel:
```bash
GM level of the character. Usually, the max is 100.
```

sLoginZone:
```
Map location of the character.
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
Characters level.
```

nExp:
```bash
Characters EXP.
```

nFame:
```bash
Characters amount of fame.
```

nMoney:
```bash
Characters total amount of money.
```

### QuestItemFix

:::note
Ensure that the QuestID and ItemID match each other for the same quest.
:::

ItemID:
```bash
Enter the ItemID number (ItemInfo.shn) of the quest item you want to prevent players from turning in repeatedly for the same quest.
```

QuestID:
```bash
Enter the QuestID number (QuestData.shn) of the quest you want to prevent players from repeatedly turning in the same item for.
```

### tCharacterShape

nCharNo:
```bash
The identification number linked to the character.
```

nClass:
```bash
ClassName.shn.
```

nGender:
```bash
Character gender.

1 = Male
2 = Female
```

nHairType:
```bash
HairInfo.shn.
```

nHairColor:
```bash
HairColorInfo.shn.
```

nFaceShape:
```bash
FaceInfo.shn.
```

### tItem

nItemKey:
```bash
Unique identification number for the item.
```

nOwner:
```bash
The identification number linked to the character.
```

nItemID:
```bash
ItemInfo.shn.
```

### tPrison

nCharID:
```bash
The identification number linked to the character.
```

nMinute:
```bash
The number of minutes for which you want the character to be imprisoned.
```

sReason:
```bash
Description.
```

## Example Queries

This can be useful for creating server statistics.

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