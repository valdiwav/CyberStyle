spd=5;
distance = 0;

if room==mapa1{
	if global.vida_minion1==0 && global.vida_boss_m1!=0 {
		player_obj.x=428
		player_obj.y=416
	}else if global.vida_boss_m1==0 && room==mapa1{
		player_obj.x=936
		player_obj.y=376
	}
}else if room==mapa2{
	if global.vida_minion2==0 && global.vida_boss_m2!=0 {
		player_obj.x=428
		player_obj.y=416
	}else if global.vida_boss_m2==0 && room==mapa2{
		player_obj.x=932
		player_obj.y=394
	}
}else if room==mapa3{
	if global.vida_minion3==0 {
		player_obj.x=652
		player_obj.y=416
	}
}



