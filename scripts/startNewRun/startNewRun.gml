function startNewRun() {
    var name = global.saveManager.playerName;
    var runNum = global.saveManager.runCount;
    var roman = toRoman(runNum);

    var displayName = name + " " + roman;

    var player = instance_create_layer(100, 100, "Instances", obj_player);
    player.displayName = displayName;

    var allocator = instance_create_layer(0, 0, "UI", obj_diceAllocator);
    allocator.setupAllocator(player);
}