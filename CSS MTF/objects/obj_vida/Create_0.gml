/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
sprite_index = spr_vida;
image_speed = 0;
dibujarIntro = true;
dibujar = false;
dibujarDerrota = false;

if (global.vida_jugador == 4) {
    image_index = 1;
} else if (global.vida_jugador == 3) {
    image_index = 2;
} else if (global.vida_jugador == 2) {
    image_index = 3;
} else if (global.vida_jugador == 1) {
    image_index = 4;
} else if (global.vida_jugador == 0) {
    // Si el jugador muere, vaciar el array
    global.arraypreguntas = [];
    dibujarDerrota = true; // Activar la bandera para dibujar la pantalla de derrota
}
