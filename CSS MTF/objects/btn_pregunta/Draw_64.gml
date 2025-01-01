/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if dibujar {
	var texto=FuncionTexto("pregunta");
	var _x=50;
	var _y=125;
	draw_sprite(SpriteTextBox1,0,50,125);
	draw_set_font(consola);
	draw_set_color(c_white);
	draw_text_ext_transformed(_x+30,_y+50,texto,20,600,2,2,image_angle);
}