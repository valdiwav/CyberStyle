/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
image_index = 0;

if press{
	if global.mundo==1{
		if obj_vida.dibujar==false &&  btn_pregunta.dibujar==false && obj_vida.dibujarIntro==false && objAyudaPorMundo.dibujar==false{
			btn_m1(2)
		}
	}else if global.mundo==2{
		if obj_vida.dibujar==false &&  btn_pregunta.dibujar==false && obj_vida.dibujarIntro==false && objAyudaPorMundo.dibujar==false{
			btn_m2(2)
		}
	}else if global.mundo==3{
		if obj_vida.dibujar==false &&  btn_pregunta.dibujar==false && obj_vida.dibujarIntro==false && objAyudaPorMundo.dibujar==false{
			btn_m3(6)
		}
	}
}
