/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(global.vida_jugador == 4){
	image_index=1;

} else if(global.vida_jugador == 3){
	image_index=2;

} else if(global.vida_jugador == 2){
	image_index=3;

} else if(global.vida_jugador == 1){
	image_index=4;

} else if(global.vida_jugador == 0){
	image_index=5;
	global.muertes++
	room_goto(defeat)
}
