function rollDiceList(diceList) {
	randomize();
    var results = [];
    for (var i = 0; i < array_length(diceList); i++) {
        var sides = diceList[i];
        array_push(results, irandom_range(1, sides));
    }
    return results;
}
