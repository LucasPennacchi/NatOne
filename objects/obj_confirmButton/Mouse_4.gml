if (instance_exists(obj_nameInput) && variable_global_exists("saveManager") && instance_exists(global.saveManager)) {
    var name = obj_nameInput.inputText;

    if (string_length(name) > 0) {
        global.saveManager.playerName = name;
        global.saveManager.runCount = 1;
		with (global.saveManager) {
		    saveSaveData();
		}
		
		startNewRun();
		
		
    } else {
        show_debug_message("Name is empty!");
    }
} else {
    show_debug_message("Save manager not initialized!");
}

