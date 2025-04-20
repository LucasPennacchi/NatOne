function saveSaveData() {
    ini_open(saveFile);
    ini_write_string("Player", "Name", playerName);
    ini_write_real("Player", "RunCount", runCount);
    ini_close();
}
