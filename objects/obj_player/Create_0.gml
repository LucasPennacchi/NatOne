// Dados básicos
displayName = ""; // Ex: Arthur III

// Status
global.stats = {
    health: 1,
    energy: 1,
    mana: 1,
    strength: 1,
    speed: 1,
    magic: 1,
    spellSlot: 1,
    luck: 0,
    coins: 0
};

// Inicialmente apenas vida está disponível
availableStats = [ "hp" ]; // Desbloqueios virão da skill tree futuramente

// Lista de dados disponíveis no começo da run
diceList = [4]; // 1d4 no início

rolledDice = []; // Ex: [3]
allocatedStats = []; // Ex: [ "hp" ]
