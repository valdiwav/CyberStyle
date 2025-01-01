function btn_m2(numeroBtn){
    // Guardar la respuesta seleccionada
    array_push(global.respuestas_seleccionadas, global.respuestas[numeroBtn-1]);
    show_debug_message("respuestas_seleccionadas: " + string(global.respuestas_seleccionadas));

    // Verificar si se han seleccionado 2 respuestas
    if (array_length(global.respuestas_seleccionadas) == 2) {
        // Comprobar si las respuestas son correctas
        if (global.respuestas_seleccionadas[0] == global.array_respuestas_correctas[0] && global.respuestas_seleccionadas[1] == global.array_respuestas_correctas[1]) {
            // Realizar la acción si las respuestas son correctas
            if (room == minion_fight2) {
                obj_minion2.vida_minion -= 1;
                global.vida_minion2 -= 1;
                audio_play_sound(correcto, 1, false);
            } else if (room == boss_fight2) {
                obj_evilboss4.vida_boss -= 1;
                global.vida_boss_m2 -= 1;
                audio_play_sound(correcto, 1, false);
            }
            array_push(global.correctasM2, global.i);
        } else {
            // Restar vida al jugador si las respuestas son incorrectas
            global.vida_jugador -= 1;
            array_push(global.incorrectasM2, global.i);
            audio_play_sound(hitEnemy, 1, false);
            obj_vida.dibujar = true;
        }

        // Verificar si todas las preguntas han sido usadas
        if (array_length(global.arraypreguntas) >= array_length(global.preguntas1)) {
            global.arraypreguntas = [];  // Reiniciar las preguntas usadas

        }

        // Generar una nueva pregunta
        while (Script5()) {
            global.i = int64(random_range(0, array_length(global.preguntas1) - 1));
        }

        // Asegurarse de que la pregunta no haya sido usada previamente
        array_push(global.arraypreguntas, global.i);

        // Generar nuevas respuestas
        global.respuestas = randomizar_respuestas();

        // Limpiar las respuestas seleccionadas para la próxima pregunta
        global.respuestas_seleccionadas = [];
    }
}
