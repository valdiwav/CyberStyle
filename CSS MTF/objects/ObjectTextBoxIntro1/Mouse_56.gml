/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(textOnDispley != text[page]){
    textOnDispley = text[page];
    exit;
}
page +=1;
textOnDispley = "";
alarm[0] = 4.5;
if(page >= array_length(text)){
    room_goto(intro2);
}