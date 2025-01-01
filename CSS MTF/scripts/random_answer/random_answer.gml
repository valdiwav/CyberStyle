// Los recursos de Script han cambiado para la v2.3.0 Consulta
// script para randomizar opciones de respuesta
function randomizar_respuestas(){
	
	if global.mundo==1{
		global.respuestas=[global.preguntas1[global.i][$ "Respuesta"],global.preguntas1[global.i][$ "I1"],global.preguntas1[global.i][$ "I2"],global.preguntas1[global.i][$ "I3"]]
		global.respuestas=array_shuffle(global.respuestas);
		return global.respuestas;
	}else if global.mundo==2{
		global.respuestas=[global.preguntas2[global.i][$ "Respuesta 1"],global.preguntas2[global.i][$ "Respuesta 2"],global.preguntas2[global.i][$ "I1"],global.preguntas2[global.i][$ "I2"]]
		global.array_respuestas_correctas[0]=global.respuestas[0]
		global.array_respuestas_correctas[1]=global.respuestas[1]
		global.respuestas=array_shuffle(global.respuestas);
		return global.respuestas;
	}else if global.mundo==3{
		global.respuestas=[global.preguntas3[global.i][$ "Respuesta 1"],global.preguntas3[global.i][$ "Respuesta 2"],global.preguntas3[global.i][$ "Respuesta 3"],global.preguntas3[global.i][$ "I1"],global.preguntas3[global.i][$ "I2"],global.preguntas3[global.i][$ "I3"]]//////cambiar segun json
		global.array_respuestas_correctas[0]=global.respuestas[0]
		global.array_respuestas_correctas[1]=global.respuestas[1]
		global.array_respuestas_correctas[2]=global.respuestas[2]

		global.respuestas=array_shuffle(global.respuestas);
		return global.respuestas;
	}
}