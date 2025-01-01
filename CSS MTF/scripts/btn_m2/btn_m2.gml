function btn_m2(numeroBtn) {
    // Guardar la respuesta seleccionada
    array_push(global.respuestas_seleccionadas, global.respuestas[numeroBtn - 1]);
    show_debug_message("Respuestas seleccionadas: " + string(global.respuestas_seleccionadas));

    // Verificar si se han seleccionado 2 respuestas
    if (array_length(global.respuestas_seleccionadas) == 2) {
        // Comprobar si las respuestas son correctas
        if (global.respuestas_seleccionadas[0] == global.array_respuestas_correctas[0] && 
            global.respuestas_seleccionadas[1] == global.array_respuestas_correctas[1]) {
            // Respuestas correctas: realizar la acción
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
            global.mensaje_feedback = "Correcto! Siguiente pregunta.";
            global.intentos_restantes = 3; // Reiniciar intentos
            generar_nueva_pregunta();
        } else {
            // Respuestas incorrectas
            global.intentos_restantes -= 1;

            if (global.intentos_restantes > 0) {
                global.mensaje_feedback = "Incorrecto. Intentos restantes: " + string(global.intentos_restantes);
            } else {
                // Solo restar vida si no quedan intentos
                global.vida_jugador -= 1;
                array_push(global.incorrectasM2, global.i);
                audio_play_sound(hitEnemy, 1, false);
                obj_vida.dibujar = true;
                global.mensaje_feedback = "0 intentos restantes! Siguiente pregunta.";
                global.intentos_restantes = 3; // Reiniciar intentos
                generar_nueva_pregunta();
            }
        }

        // Limpiar las respuestas seleccionadas para la misma pregunta
        global.respuestas_seleccionadas = [];
    }
}

function generar_nueva_pregunta() {
    // Verificar si todas las preguntas han sido usadas
    if (array_length(global.arraypreguntas) >= array_length(global.preguntas1)) {
        global.arraypreguntas = [];  // Reiniciar las preguntas usadas
        global.mensaje_feedback = "Se reinician las preguntas.";
    }

    // Generar una nueva pregunta (usando un while en lugar de do...while)
    var nueva_pregunta_generada = false;
    while (!nueva_pregunta_generada) {
        global.i = int64(random_range(0, array_length(global.preguntas1) - 1));
        if (!Script5()) {
            nueva_pregunta_generada = true;
        }
    }
    array_push(global.arraypreguntas, global.i);

    // Generar nuevas respuestas
    global.respuestas = randomizar_respuestas();
}
