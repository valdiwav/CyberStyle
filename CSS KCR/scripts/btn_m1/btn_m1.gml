function btn_m1(numeroBtn) {
    randomise();

    if (global.respuestas[numeroBtn - 1] == global.preguntas1[global.i][$ "Respuesta"]) {
        if (room == minion_fight) {
            obj_minion.vida_minion -= 1;
            global.vida_minion1 -= 1;
        } else if (room == boss_fight) {
            obj_evilboss2.vida_boss -= 1;
            global.vida_boss_m1 -= 1;
        }
        audio_play_sound(correcto, 1, false);
        array_push(global.correctasM1, global.i);
    } else {
        global.vida_jugador -= 1;
        array_push(global.incorrectasM1, global.i);
        audio_play_sound(hitEnemy, 1, false);
        obj_vida.dibujar = true;

        if (global.vida_jugador == 0) {
            dibujarDerrota = true;
            return; // Fin del juego
        }
    }

    // Generar nueva pregunta
    if (!generarNuevaPregunta()) return;
}

// Función auxiliar para generar una nueva pregunta
function generarNuevaPregunta() {
    // Reiniciar preguntas si ya todas fueron usadas
    if (array_length(global.arraypreguntas) >= array_length(global.preguntas1)) {
        global.arraypreguntas = []; // Reiniciar el arreglo de preguntas usadas
       
    }

    // Generar nueva pregunta que no se haya usado en esta ronda
    var nuevaPregunta = -1; // Inicializamos fuera de rango para evitar problemas
    while (nuevaPregunta == global.i || nuevaPregunta == -1) {
        nuevaPregunta = int64(random_range(0, array_length(global.preguntas1) - 1));
    }

    global.i = nuevaPregunta;
    array_push(global.arraypreguntas, global.i);
    global.respuestas = randomizar_respuestas();
    return true;
}


