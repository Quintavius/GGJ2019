walksp = 3; // Horizontal movement speed
jump_height = 9; // Initial speed of jump (positive is up)

hp = 200;

// State variables
hsp = 0; 
vsp = jump_height * -1;
collisons = true;
capture_cooldown = 0;

airtime = 0; // Num of steps in air for
jump_armed = false; // Whether the player can jump at current step
queue_jump = false; // Whether this character will autojump once it touches the ground

draw_xscale = 1;
draw_yscale = 1;