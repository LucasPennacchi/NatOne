function loadSaveData() {
    if (file_exists(saveFile)) {
        ini_open(saveFile);
        playerName = ini_read_string("Player", "Name", "");
        runCount = ini_read_real("Player", "RunCount", 1);
        ini_close();
    } else {
        // Cria o arquivo pela primeira vez
        playerName = "Unnamed";
        runCount = 1;
        saveSaveData();
    }
}
