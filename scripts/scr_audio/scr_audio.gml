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
		
		case "music_menu": //background music
		if (!audio_is_playing(sfx_mus_menu) and global.music == 1)
		{
			audio_stop_sound(sfx_mus_level);
			audio_play_sound(sfx_mus_menu,64,1);
		}
		break;
		
		case "music_level": //background music
		audio_sound_gain(sfx_mus_level, 0.45, 120);
		if (!audio_is_playing(sfx_mus_level) and global.music == 1)
		{
			audio_stop_sound(sfx_mus_menu);
			audio_play_sound(sfx_mus_level,64,1);
		}
		break;
		
		case "jump": // jump
		audio_play_sound(sfx_jump,64,0);
		break;
		
		case "explosion": // flammable object destroyed
		audio_play_sound(sfx_explosion, 64, 0);
		audio_sound_pitch(sfx_explosion, 1.17 - random(0.33));
		break;
		
		case "dig": // dig dirt
		audio_play_sound(sfx_dig, 64, 0);
		audio_sound_pitch(sfx_dig, 1.1 - random(0.2));
		break;
		
		case "death": // player or animal death
		if (!global.is_dead)
		{
			audio_play_sound(sfx_death,64,0);
		}
		break;
	}
}

