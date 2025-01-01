global.arraypreguntas=[];
global.array_respuestas_correctas=[];
global.i=undefined;
global.mundo=1;/////
global.mute = false;
global.primera_vez=true;
global.respuestas_seleccionadas=[];
global.vida_jugador = 5;
global.muertes = 0;
global.respuestas = [];


global.preguntas1 = undefined;
global.correctasM1 = [];
global.incorrectasM1 = [];
global.vida_minion1 = undefined;
global.vida_boss_m1= undefined;

global.preguntas2 = undefined;
global.correctasM2 = [];
global.incorrectasM2 = [];
global.vida_minion2 = undefined;
global.vida_boss_m2= undefined;

global.preguntas3 = undefined;
global.correctasM3 = [];
global.incorrectasM3 = [];
global.vida_minion3 = undefined;
global.vida_boss_m3= undefined;


global.intentos_restantes = undefined;
global.mensaje_feedback = "";
global.duracion_mensaje = 0; // Cuántos frames se mostrará el mensaje en pantalla




//Mundo 1
if(file_exists(working_directory + "dat1.dat")){
    var json = "";
    var file = file_text_open_read(working_directory + "dat1.dat");

    while(file_text_eof(file)==false){
        json += file_text_readln(file);
    }
    file_text_close(file);

    global.preguntas1 = json_parse(json);
}

//Mundo 2
if(file_exists(working_directory + "dat2.dat")){
    var json = "";
    var file = file_text_open_read(working_directory + "dat2.dat");

    while(file_text_eof(file)==false){
        json += file_text_readln(file);
    }
    file_text_close(file);

    global.preguntas2 = json_parse(json);
}

//Mundo 3
if(file_exists(working_directory + "dat3.dat")){
    var json = "";
    var file = file_text_open_read(working_directory + "dat3.dat");

    while(file_text_eof(file)==false){
        json += file_text_readln(file);
    }
    file_text_close(file);

    global.preguntas3 = json_parse(json);
}






