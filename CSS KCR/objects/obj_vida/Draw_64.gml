if dibujar {
    var texto = FuncionTexto("tip");
    // Validar que el texto no esté vacío
    if (texto == "" || is_undefined(texto)) {
        texto = "No hay información disponible.";
    }
    var _x = 175;
    var _y = 225;
    draw_sprite(SpriteTextBox3, 0, _x, _y);
    draw_set_font(global.TEXTBOX_FONT);
    draw_set_color(c_white);
    draw_text_ext_transformed(_x + 30, _y + 50, texto, 10, 250, 3.5, 3.5, image_angle);
    btn_pregunta.image_speed = 1;
}

if dibujarDerrota {
    var texto = FuncionTexto("tip");
    // Validar que el texto no esté vacío
    if (texto == "" || is_undefined(texto)) {
        texto = "No hay información disponible.";
    }
    var _x = 50;
    var _y = 125;
    draw_sprite(SpriteTextBox1, 0, _x, _y);
    draw_set_font(global.TEXTBOX_FONT);
    draw_set_color(c_white);
    draw_text_ext_transformed(_x + 30, _y + 50, texto, 10, 250, 3.5, 3.5, image_angle);
}

if dibujarIntro {
    var texto = FuncionTexto("intro");
    // Validar que el texto no esté vacío
    if (texto == "" || is_undefined(texto)) {
        texto = "No hay introducción disponible.";
    }
    var _x = 275;
    var _y = 100;
    draw_sprite(cajon, 0, _x, _y);
    draw_set_font(global.TEXTBOX_FONT);
    draw_set_color(c_silver);
    draw_text_ext_transformed(_x + 50, _y + 80, texto, 10, 200, 3.5, 3.5, image_angle);
    btn_pregunta.image_speed = 1;
}
