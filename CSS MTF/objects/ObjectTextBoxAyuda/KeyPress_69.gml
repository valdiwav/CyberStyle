/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if(textOnDispley != text[page]){
    textOnDispley = text[page];
    exit;
}
page +=1;
textOnDispley = "";
alarm[0] = 0;
if(page >= array_length(text)){

    dibujar=false
}