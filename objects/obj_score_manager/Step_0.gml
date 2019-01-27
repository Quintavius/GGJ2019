height = -PixelToBlock(obj_player.y-607);

if (height >= global.height_reached && global.game_time > 1)
{
global.height_reached = height;
}