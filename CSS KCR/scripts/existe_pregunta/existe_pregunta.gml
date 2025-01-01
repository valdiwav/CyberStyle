// Los recursos de Script han cambiado para la v2.3.0 Consulta
// indica si ya existe una pregunta en el arreglo
function Script5(){
	var preguntas_copia = global.arraypreguntas;
	for (var i = 0; i < array_length(preguntas_copia); i += 1) {
    if(global.i == preguntas_copia[i]){
        return true;
		}
	}
	return false;
}