function saveData(){
    // Obtenemos el número de archivo INI
    i = existeIni(1);

    // Asegúrate de usar una barra diagonal al final del directorio
    var directorio = program_directory + "data/";  // Añadimos la barra diagonal al final

    // Mostrar el directorio completo en la consola para verificar
    show_debug_message("Directorio completo para guardar: " + directorio + string(i) + ".ini");

    // Abrimos el archivo INI con la ruta correcta
    ini_open(directorio + string(i) + ".ini");
    ini_write_string("Tiempos", "tiempoTotal", string(global.tiempoTotal));
    ini_write_string("Tiempos", "tiempoM1", string(global.tiempoM1));
    ini_write_string("Tiempos", "tiempoM2", string(global.tiempoM2));
    ini_write_string("Tiempos", "tiempoM3", string(global.tiempoM3));

    // Convertir los arreglos a JSON y escribirlos
    ini_write_string("Correctas", "correctasM1", json_stringify(global.correctasM1));
    ini_write_string("Correctas", "correctasM2", json_stringify(global.correctasM2));
    ini_write_string("Correctas", "correctasM3", json_stringify(global.correctasM3));

    ini_write_string("Incorrectas", "incorrectasM1", json_stringify(global.incorrectasM1));
    ini_write_string("Incorrectas", "incorrectasM2", json_stringify(global.incorrectasM2));
    ini_write_string("Incorrectas", "incorrectasM3", json_stringify(global.incorrectasM3));

    ini_write_string("Muertes", "muertes", string(global.muertes));
	
	// Escribir la versión
    ini_write_string("Info", "version", "KCR");

    // Cerramos el archivo INI
    ini_close();
}

function existeIni(numero){
    // Verifica si el archivo INI existe, de no ser así, incrementa el número
    if (file_exists(program_directory + "data/" + string(numero) + ".ini")){
        numero++;
        return existeIni(numero);  // Llamada recursiva para buscar el siguiente archivo
    }
    return numero;
}
