/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if room==mapa1{
	global.primera_vez=true
	room_goto(mapa2)
}else if room==mapa2{
	global.primera_vez=true
	room_goto(mapa3)
}

global.mundo=global.mundo+1;
global.i=undefined;
global.arraypreguntas=[]