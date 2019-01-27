global.grv = 0.3;				// Gravity
global.water_speed = 0.5;		// Initial speed of water scrolling
global.game_time = 0;			// Seconds after room start
global.play_time = 0;			// Seconds after control taken
global.death_timer = 0;			// Seconds death screen is displayed for
global.is_dead = false;			// Whether player is currently dead
global.tint_alpha = 1;			// Alpha of black background
global.is_paused = false;		// Whether the game is paused
global.is_playing = false;		// Whether control has been taken

can_place = false;				// Whether a crate can be placed at current mouse pos

scr_audio("music_level");		// Play level music