playerRef = noone;
dice = [];
allocated = [];

currentDieIndex = 0;
statusOptions = []; // status disponíveis (vem do playerRef.availableStats)

function setupAllocator(player) {
    playerRef = player;
    dice = rollDiceList(player.diceList);
    allocated = array_create(array_length(dice), "");

    currentDieIndex = 0;
    statusOptions = player.availableStats;
}
