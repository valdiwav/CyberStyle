/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _x=62
var _y=500
draw_sprite(SpriteTextBox,0,_x,_y);
draw_set_font(global.TEXTBOX_FONT);
draw_text_ext_transformed(_x+40,_y+30,textOnDispley,10,300,4,4,image_angle);