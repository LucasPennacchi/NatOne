function initializeRunData() {
    global.playerName = oSaveManager.playerName;
    global.runCount = oSaveManager.runCount;
    global.characterName = global.playerName + " " + toRoman(global.runCount);

    global.stats = {
        health: 0,
        energy: 0,
        mana: 0,
        strength: 0,
        speed: 0,
        magic: 0,
        spellSlot: 0,
        luck: 0,
        coins: 0
    };
}
