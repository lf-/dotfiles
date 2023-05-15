# betterquesting progress fix

This thing copies one uuid's progress into another uuid. Useful when for some
reason quests aren't unlocked for everyone due to mod design flaws and forking.

## Usage

```
cp QuestProgress.json QuestProgress.json.bak
./fix_progress UUID_FROM UUID_TO < QuestProgress.json.bak > QuestProgress.json
```
