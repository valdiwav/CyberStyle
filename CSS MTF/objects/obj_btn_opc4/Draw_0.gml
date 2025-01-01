/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self();

draw_set_color(c_black)
draw_set_font(calibri)
//draw_text_transformed(x-50,y-20,global.respuestas[3],1.5,1.5,image_angle)
if(string_length(global.respuestas[3])>=14){
	draw_text_transformed(x-170,y-20,global.respuestas[3],1.5,1.5,image_angle)
}else if(string_length(global.respuestas[3])<=13) && (string_length(global.respuestas[3])>=7){
	
	draw_text_transformed(x-130,y-20,global.respuestas[3],1.5,1.5,image_angle)

}else{
	draw_text_transformed(x-50,y-20,global.respuestas[3],1.5,1.5,image_angle)
}