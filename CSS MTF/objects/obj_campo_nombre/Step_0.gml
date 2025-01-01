if puede_scribir == true
{
	image_index = 1
	if string_width(texto_campo_nombre) < tx-16 or keyboard_check(vk_backspace)
	{
		texto_campo_nombre = keyboard_string;
	}else{
		keyboard_string = texto_campo_nombre
	}
	
}else{
	image_index = 0
}


if mouse_check_button(mb_left)
{
	if (mouse_x >= x && mouse_x <= x+tx) && (mouse_y >= y && mouse_y <= y+ty)
	{
		keyboard_string = texto_campo_nombre
		puede_scribir = true
	}else{
		puede_scribir = false
	}
}



if keyboard_check(vk_enter){
	puede_scribir = false
}

