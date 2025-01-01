/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_index = 0;

if global.mundo==1{
	room_goto(mapa1)
	global.primera_vez=true
	global.vida_jugador=5
	global.i=undefined;
	global.i = int64(random_range(0,11));
}else if global.mundo==2{
	room_goto(mapa2)
	global.primera_vez=true
	global.vida_jugador=5
	global.i=undefined;
	global.i = int64(random_range(0,18));
}else if global.mundo==3{
	room_goto(mapa3)
	global.primera_vez=true
	global.vida_jugador=5
	global.i=undefined;
	global.i = int64(random_range(0,14));
}


//game_restart()