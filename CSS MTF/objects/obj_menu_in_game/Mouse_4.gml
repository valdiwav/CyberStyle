/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
// Mostrar una ventana de confirmación
var respuesta = show_question("¿Estás seguro de que quieres volver al menú? ¡Perderás todo el progreso!");

if (respuesta) {
    // El jugador confirma que desea salir
    // Cambiar a la sala del menú principal
    room_goto(menu_inicio);
} else {
    // El jugador cancela la salida, no hacemos nada
}
