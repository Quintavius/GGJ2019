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
		
		case "damage": // player or animal death
		audio_sound_gain(sfx_damage, 0.3*(1-obj_player.hp/200), 0);
		if (!audio_is_playing(sfx_damage))
		{
			audio_play_sound(sfx_damage,64,0);
		}
		if (global.is_dead || obj_player.hp >= 200)
		{
		 audio_stop_sound(sfx_damage);	
		}
		break;
		
		case "death": // player or animal death
		audio_play_sound(sfx_death,64,0);
		break;
	}
}

