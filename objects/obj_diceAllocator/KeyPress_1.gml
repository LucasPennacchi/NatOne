if (keyboard_check_pressed(vk_enter)) {
    // Aplicar ao player
    for (var i = 0; i < array_length(dice); i++) {
        var stat = allocated[i];
        var val = dice[i];

        if (stat != "") {
            // Verifica se a chave (stat) existe em global.stats
            if (!variable_struct_exists(global.stats, stat)) {
                // Cria o campo caso não exista
                variable_struct_set(global.stats, stat, 0);
            }

            // Atualiza o valor do stat
            var current = variable_struct_get(global.stats, stat);
            variable_struct_set(global.stats, stat, current + val);

            // Se for health, ajustar o hp também
            if (stat == "health") {
                playerRef.hp = variable_struct_get(global.stats, "health");
                playerRef.maxHp = playerRef.hp;
            }
        }
    }

    instance_destroy(); // Fecha o alocador
    room_goto(rm_firstRoom); // Inicia a run
}


// Alocação com teclas 1~9
for (var i = 0; i < array_length(statusOptions); i++) {
    if (keyboard_check_pressed(ord(string(i + 1)))) {
        allocated[currentDieIndex] = statusOptions[i];
        currentDieIndex++;

        if (currentDieIndex >= array_length(dice)) {
            currentDieIndex = array_length(dice) - 1;
        }
    }
}
