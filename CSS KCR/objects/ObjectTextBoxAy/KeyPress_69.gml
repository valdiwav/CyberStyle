/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(textOnDispley != text[page]){
    textOnDispley = text[page];
    exit;
}
page +=1;
textOnDispley = "";
alarm[0] = 1;
if(page >= array_length(text)){
	audio_stop_sound(sound_intro)
    room_goto(menu_inicio);
}