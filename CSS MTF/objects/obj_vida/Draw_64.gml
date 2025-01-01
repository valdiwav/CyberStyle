
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
