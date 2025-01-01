function btn_m3(numeroBtn) {
    // Guardar la respuesta seleccionada
    array_push(global.respuestas_seleccionadas, global.respuestas[numeroBtn - 1]);
    show_debug_message("respuestas_seleccionadas: " + string(global.respuestas_seleccionadas));

    // Verificar si se han seleccionado 3 respuestas
    if (array_length(global.respuestas_seleccionadas) == 3) {
        // Comprobar si las respuestas son correctas
        if (global.respuestas_seleccionadas[0] == global.array_respuestas_correctas[0] &&
            global.respuestas_seleccionadas[1] == global.array_respuestas_correctas[1] &&
            global.respuestas_seleccionadas[2] == global.array_respuestas_correctas[2]) {
            
            // Acciones si las respuestas son correctas
            if (room == minion_fight3) {
                obj_minion3.vida_minion -= 1;
                global.vida_minion3 -= 1;
                audio_play_sound(correcto, 1, false);
            } else if (room == boss_fight3) {
                obj_final_boss.vida_boss -= 1;
                global.vida_boss_m3 -= 1;
                audio_play_sound(correcto, 1, false);
            }
            array_push(global.correctasM3, global.i);
        } else {
            // Restar vida al jugador si las respuestas son incorrectas
            global.vida_jugador -= 1;
            array_push(global.incorrectasM3, global.i);
            audio_play_sound(hitEnemy, 1, false);
            obj_vida.dibujar = true;
        }

        // Verificar si todas las preguntas han sido usadas
        if (array_length(global.arraypreguntas) >= array_length(global.preguntas3)) {
            global.arraypreguntas = [];  // Reiniciar las preguntas usadas

        }

        // Asegurarse de que haya preguntas disponibles
        if (array_length(global.preguntas3) > 0) {
            // Generar una nueva pregunta
            var intentos = 0; // Contador de intentos
            var max_intentos = 10; // Limitar el número de intentos

            // Verificar si se puede obtener una nueva pregunta sin caer en un ciclo infinito
            while (Script5() && intentos < max_intentos) {
                global.i = int64(random_range(0, array_length(global.preguntas3) - 1));
                intentos++;
            }

            // Si el ciclo alcanzó el límite de intentos, mostrar un mensaje de advertencia
            if (intentos >= max_intentos) {
            }

            // Asegurarse de que la pregunta no haya sido usada previamente
            array_push(global.arraypreguntas, global.i);

            // Generar nuevas respuestas
            global.respuestas = randomizar_respuestas();

        } else {
            // Si no hay más preguntas, mostrar mensaje

        }

        // Limpiar las respuestas seleccionadas para la próxima pregunta
        global.respuestas_seleccionadas = [];
    }
}
