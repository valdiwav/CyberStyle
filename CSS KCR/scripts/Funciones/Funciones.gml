function FuncionTexto(tipo) {
    var texto = "";
    if (tipo == "pregunta") {
        if (global.mundo == 1) {
            texto = global.preguntas1[global.i][$ "Enunciado"] + "\n\n" + global.preguntas1[global.i][$ "Codigo"];
        } else if (global.mundo == 2) {
            texto = global.preguntas2[global.i][$ "Enunciado"] + "\n\n" + global.preguntas2[global.i][$ "Codigo"];
        } else if (global.mundo == 3) {
            texto = global.preguntas3[global.i][$ "Enunciado"] + "\n\n" + global.preguntas3[global.i][$ "Codigo"];
        }
        return texto;
    } else if (tipo == "tip") {
        if (array_length(global.arraypreguntas) > 1) {
            var index_anterior = array_length(global.arraypreguntas) - 2;
            if (global.mundo == 1) {
                texto = "Fallaste!!! " + "\n" + global.preguntas1[global.arraypreguntas[index_anterior]][$ "Pista"];
            } else if (global.mundo == 2) {
                texto = "Fallaste!!! " + "\n" + global.preguntas2[global.arraypreguntas[index_anterior]][$ "Pista"];
            } else if (global.mundo == 3) {
                texto = "Fallaste!!! " + "\n" + global.preguntas3[global.arraypreguntas[index_anterior]][$ "Pista"];
            }
        } else {
            texto = "No hay suficientes preguntas previas para mostrar una pista.";
        }
        return texto;
		
    } else if (tipo == "intro") {
        if (global.mundo == 1) {
            if (room == minion_fight) {
                texto = "Preparate para ser derrotado! Tus habilidades en CSS son tan débiles como tus respuestas.";
            } else if (room == boss_fight) {
                texto = "Crees que eres lo suficientemente valiente para enfrentarme? Tus respuestas incorrectas serán tu perdición.";
            }
        } else if (global.mundo == 2) {
            if (room == minion_fight2) {
                texto = "Ja! Parece que tus conocimientos en CSS están más desactualizados que un navegador de los 90. No tienes oportunidad.";
            } else if (room == boss_fight2) {
                texto = "CSS? Parece que tu conocimiento en estilos web está tan desgastado como tus intentos por vencerme. ¡Qué patético!";
            }
        } else if (global.mundo == 3) {
            if (room == minion_fight3) {
                texto = "CSS? Más bien, Completamente Sin Sentido. Crees que puedes vencerme? No tienes idea de lo que te espera.";
            } else if (room == boss_fight3) {
                texto = "Tu estilo es tan defectuoso como tus respuestas. No tienes lo necesario para enfrentarte a un enemigo de mi calibre. Ríndete ahora y ahórrate la vergüenza.";
            }
        }
        return texto;
    }
}
