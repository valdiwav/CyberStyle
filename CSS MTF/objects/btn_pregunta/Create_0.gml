/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
randomise();
press = false;
dibujar=false;
if global.primera_vez{
	global.i=irandom_range(0,11);
	array_push(global.arraypreguntas,global.i);
}

//texto=global.preguntas1[global.i][$ "Enunciado"] + "\n\n" +global.preguntas1[global.i][$ "Codigo"];
//texto=FuncionTexto();
sprite_index = spr_btn_opciones;
image_speed = 0;
image_index = 0;