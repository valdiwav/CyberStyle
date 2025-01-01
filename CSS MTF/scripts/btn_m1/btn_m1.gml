function btn_m1(numeroBtn) {
    randomise();

    // Verificar si la respuesta es correcta
    if (global.respuestas[numeroBtn - 1] == global.preguntas1[global.i][$ "Respuesta"]) {
        // Respuesta correcta
        if (room == minion_fight) {
            obj_minion.vida_minion -= 1;
            global.vida_minion1 -= 1;
        } else if (room == boss_fight) {
            obj_evilboss2.vida_boss -= 1;
            global.vida_boss_m1 -= 1;
        }
        audio_play_sound(correcto, 1, false);
        array_push(global.correctasM1, global.i);
        global.mensaje_feedback = "Correcto! Siguiente pregunta.";
        global.intentos_restantes = 3; // Reiniciar intentos para la siguiente pregunta
        generarNuevaPregunta();
    } else {
        // Respuesta incorrecta
        global.intentos_restantes -= 1;

        if (global.intentos_restantes > 0) {
            global.mensaje_feedback = "Incorrecto. Intentos restantes: " + string(global.intentos_restantes);
        } else {
            // Penalizar al jugador si no quedan intentos
            global.vida_jugador -= 1;
            array_push(global.incorrectasM1, global.i);
            audio_play_sound(hitEnemy, 1, false);
            obj_vida.dibujar = true;

            if (global.vida_jugador == 0) {
                // Fin del juego
                global.mensaje_feedback = "Has perdido! Fin del juego.";
                dibujarDerrota = true;
                return; 
            } else {
                global.mensaje_feedback = "0 intentos restantes! Siguiente pregunta.";
                global.intentos_restantes = 3; // Reiniciar intentos
                generarNuevaPregunta();
            }
        }
    }
}

// Función auxiliar para generar una nueva pregunta
function generarNuevaPregunta() {
    // Reiniciar preguntas si ya todas fueron usadas
    if (array_length(global.arraypreguntas) >= array_length(global.preguntas1)) {
        global.arraypreguntas = []; // Reiniciar el arreglo de preguntas usadas
    }

    // Generar una nueva pregunta que no se haya usado en esta ronda
    var nuevaPregunta = -1; // Inicializamos fuera de rango para evitar problemas
    while (nuevaPregunta == global.i || nuevaPregunta == -1) {
        nuevaPregunta = int64(random_range(0, array_length(global.preguntas1) - 1));
    }

    global.i = nuevaPregunta;
    array_push(global.arraypreguntas, global.i);
    global.respuestas = randomizar_respuestas();
}
