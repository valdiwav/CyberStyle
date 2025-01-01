// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function movimiento(){
	if(room==mapa1){
		if(speed == 0){
		    if(keyboard_check(ord("D")) && instance_position(160,416,player_obj)!=noone){
				path_start(Path1,2,path_action_stop,false)
		        hspeed = spd;
		        distance = 16;
		    } else if(keyboard_check(ord("S"))&& instance_position(428,416,player_obj)!=noone){
				path_start(Path3,2,path_action_stop,false)
		        vspeed = spd;
		        distance = 16;
		    } else if(keyboard_check(ord("W"))&& instance_position(428,416,player_obj)!=noone){
				path_start(Path2,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
		    } else if(keyboard_check(ord("D"))&& instance_position(666,496,player_obj)!=noone){
				path_start(Path5,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
		    } else if(keyboard_check(ord("D"))&& instance_position(666,336,player_obj)!=noone){
				path_start(Path4,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
		    } else if(keyboard_check(ord("D"))&& instance_position(936,376,player_obj)!=noone){
				path_start(Path6,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
			}
		}
	}else if(room==mapa2){
		if(speed == 0){
		    if(keyboard_check(ord("D")) && instance_position(160,416,player_obj)!=noone){
				path_start(Path1,2,path_action_stop,false)
		        hspeed = spd;
		        distance = 16;
		    } else if(keyboard_check(ord("S"))&& instance_position(428,416,player_obj)!=noone){
				path_start(Path8,2,path_action_stop,false)
		        vspeed = spd;
		        distance = 16;
		    } else if(keyboard_check(ord("W"))&& instance_position(428,416,player_obj)!=noone){
				path_start(Path7,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
		    } else if(keyboard_check(ord("D"))&& instance_position(630,198,player_obj)!=noone){
				path_start(Path9,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
		    } else if(keyboard_check(ord("D"))&& instance_position(630,596,player_obj)!=noone){
				path_start(Path10,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
		    } else if(keyboard_check(ord("D"))&& instance_position(932,394,player_obj)!=noone){
				path_start(Path6,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
			}
		}
	}else if(room==mapa3){
		if(keyboard_check(ord("D")) && instance_position(160,416,player_obj)!=noone){
				path_start(Path1,2,path_action_stop,false)
		        hspeed = spd;
		        distance = 16;
		}else if(keyboard_check(ord("D"))&& instance_position(652,416,player_obj)!=noone){
				path_start(Path6,2,path_action_stop,false)
		        vspeed = -spd;
		        distance = 16;
		}
	}
}