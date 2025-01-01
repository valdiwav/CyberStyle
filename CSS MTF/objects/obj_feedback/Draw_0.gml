if (global.duracion_mensaje > 0) {
    // Asignar la fuente personalizada
    draw_set_font(fnt_incorrecto);
    
    // Posición y texto del mensaje
    var pos_x = 40;
    var pos_y = 150;
    var mensaje = global.mensaje_feedback;
    
    // Escala del texto
    var escala_x = 1.3;
    var escala_y = 1.3;
    
    // Calcular el tamaño del cuadro de texto en función del mensaje y la escala
    var texto_ancho = string_width(mensaje) * escala_x;
    var texto_alto = string_height(mensaje) * escala_y;
    
    // Dibujar el cuadro de fondo detrás del texto con transparencia
    draw_set_alpha(0.5); // Configura el nivel de transparencia (0.0 = totalmente transparente, 1.0 = opaco)
    draw_set_colour(c_orange); // Color del cuadro
    draw_rectangle(pos_x - 10, pos_y - 10, pos_x + texto_ancho + 10, pos_y + texto_alto + 10, false);
    draw_set_alpha(1); // Restablecer la transparencia a 1 para otros elementos
    
    // Dibujar el texto escalado
    draw_set_colour(c_white); // Color del texto
    draw_text_transformed(pos_x, pos_y, mensaje, escala_x, escala_y, 0);
    
    // Reducir la duración del mensaje en cada frame
    global.duracion_mensaje -= 0.5;
}
