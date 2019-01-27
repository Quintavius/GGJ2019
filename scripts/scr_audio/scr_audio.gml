// play a sound of a defined type

var sound_type;
sound_type=argument0;

if global.sound == 1 {
	switch (sound_type)
	{
		case "tap": // navigate menu
		audio_play_sound(sfx_tap,64,0);
		break;
		
		case "select": // select menu
		audio_play_sound(sfx_select,64,0);
		break;
		
		case "music_level": //background music
		if (!audio_is_playing(sfx_mus_level) and global.music == 1)
		{
			audio_play_sound(sfx_mus_level,64,1);
		}
		break;
		
		case "jump": // jump
		audio_sound_pitch(sfx_jump, 1.15 - random(0.3));
		audio_play_sound(sfx_jump,64,0);
		break;
		
		case "place": // place block
		audio_play_sound(sfx_place, 64, 0);
		audio_sound_pitch(sfx_place, 1.1 - random(0.2));
		break;
		
		case "break": // break block
		audio_play_sound(sfx_break, 64, 0);
		audio_sound_pitch(sfx_place, 1.1 - random(0.2));
		break;
		
		case "danger1": // danger level 1
		var danger1_value = 1 - (clamp(abs(obj_player.y - obj_water.y)/456 ,0 ,1 ));
		audio_sound_gain(sfx_beat, danger1_value * 0.1, 0);
		if (!global.is_dead && abs(obj_player.y - obj_water.y) < 456)
		{
			if (!audio_is_playing(sfx_beat))
			{
				audio_play_sound(sfx_beat, 16, 1);
			}
		}
		else
		{
			audio_stop_sound(sfx_beat);	
		}
		break;
		
		case "danger2": // danger level 1
		var danger2_value = 1 - (clamp(abs(obj_player.y - obj_water.y)/128 ,0 ,1 ));
		audio_sound_gain(sfx_static, danger2_value * 0.5, 0);
		if (!global.is_dead && abs(obj_player.y - obj_water.y) < 128)
		{
			if (!audio_is_playing(sfx_static))
			{
				audio_play_sound(sfx_static, 16, 1);
			}
		}
		else
		{
			audio_stop_sound(sfx_static);	
		}
		break;
		
		case "damage": // player or animal death
		audio_sound_gain(sfx_damage, 0.3*(1-obj_player.hp/200), 0);
		if (!audio_is_playing(sfx_damage))
		{
			audio_play_sound(sfx_damage,64,1);
		}
		if (global.is_dead || obj_player.hp >= 200)
		{
		 audio_stop_sound(sfx_damage);	
		}
		break;
		
		case "death": // player or animal death
		audio_play_sound(sfx_death,64,0);
		break;
		
		case "drop": // dropping object
		audio_play_sound(sfx_drop,64,0);
		break;
		
		case "mining": // mining blocks
		if (!audio_is_playing(sfx_mining))
		{
			audio_play_sound(sfx_mining,64,0);
		}
		break;
		
		case "coin": // coin pickup
		audio_play_sound(sfx_coin,64,0);
		break;
	}
}

