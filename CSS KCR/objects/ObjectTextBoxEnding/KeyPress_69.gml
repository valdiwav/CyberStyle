/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(textOnDispley != text[page]){
    textOnDispley = text[page];
    exit;
}
page +=1;
textOnDispley = "";
alarm[0] = 6;
if(page >= array_length(text)){
	audio_stop_sound(sound_ending)
	show_message("Datos generados ubicados en: %localappdata%\CyberStyle")
    game_restart();
}