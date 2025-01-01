/// @description Inserte aquí la descripción
// Evento Draw del obj_hud

// Dibuja el sprite del objeto, si es necesario
draw_self(); 

// Define el texto y sus coordenadas
var texto = global.mensaje_feedback;
var pos_x = 50;
var pos_y = 150;

// Configura la fuente y el color del texto
draw_set_font(Font4);

// Calcula el ancho y alto del texto para el fondo
var ancho = string_width(texto);
var alto = string_height(texto);

// Configura el color y alfa del fondo
draw_set_color(make_color_rgb(255, 165, 0)); // Naranja
draw_set_alpha(0.5); // Semitransparente

// Dibuja el rectángulo detrás del texto
draw_rectangle(pos_x, pos_y, pos_x + ancho, pos_y + alto, false);

// Restaura la opacidad al 100%
draw_set_alpha(1); // Importante: restaura la opacidad para el texto

// Cambia el color del texto (ejemplo: negro)
draw_set_color(c_black);

// Dibuja el texto
draw_text(pos_x, pos_y, texto);
