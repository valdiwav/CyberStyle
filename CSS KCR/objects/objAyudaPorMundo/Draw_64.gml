/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if dibujar {
	if(room==mapa1 || room==minion_fight || room==boss_fight){
		draw_sprite_stretched(sprAyuda1,0,250,150,900,550)
	}else if(room==mapa2 || room==minion_fight2 || room==boss_fight2){
		draw_sprite_stretched(sprAyuda2,0,250,150,900,550)
	}else if(room==mapa3 || room==minion_fight3 || room==boss_fight3){
		draw_sprite_stretched(sprAyuda3,0,250,150,900,550)
	}
}