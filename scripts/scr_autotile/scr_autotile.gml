var f;
for (f = 0; f < 256; f++){
	tileValues[f] =46;
}

tileValues[0] = 46;
tileValues[2] = 44;
tileValues[3] = 44;
tileValues[6] = 44;
tileValues[7] = 44;
tileValues[8] = 45;
tileValues[9] = 45;
tileValues[10] = 39;
tileValues[11] = 38;
tileValues[15] = 38;
tileValues[16] = 43;
tileValues[19] = 41;
tileValues[20] = 43;
tileValues[22] = 40;
tileValues[23] = 40;
tileValues[24] = 33;
tileValues[25] = 33;
tileValues[27] = 30;
tileValues[30] = 29;
tileValues[31] = 28;
tileValues[32] = 46;
tileValues[40] = 45;
tileValues[41] = 45;
tileValues[43] = 38;
tileValues[47] = 38;
tileValues[48] = 43;
tileValues[56] = 33;
tileValues[57] = 33;
tileValues[59] = 30;
tileValues[62] = 29;
tileValues[63] = 28;
tileValues[64] = 42;
tileValues[66] = 32;
tileValues[67] = 32;
tileValues[68] = 42;
tileValues[72] = 37;
tileValues[73] = 37;
tileValues[74] = 27;
tileValues[75] = 25;
tileValues[79] = 25;
tileValues[82] = 18;
tileValues[86] = 18;
tileValues[87] = 18;
tileValues[92] = 23;
tileValues[96] = 42;
tileValues[98] = 32;
tileValues[100] = 42;
tileValues[102] = 32;
tileValues[103] = 32;
tileValues[104] = 36;
tileValues[105] = 36;
tileValues[106] = 26;
tileValues[107] = 24;
tileValues[111] = 24;
tileValues[120] = 21;
tileValues[123] = 6;
tileValues[127] = 4;
tileValues[144] = 43;
tileValues[148] = 43;
tileValues[150] = 40;
tileValues[151] = 40;
tileValues[154] = 31;
tileValues[156] = 33;
tileValues[158] = 29;
tileValues[159] = 28;
tileValues[192] = 42;
tileValues[194] = 32;
tileValues[198] = 32;
tileValues[208] = 34;
tileValues[210] = 17;
tileValues[212] = 34;
tileValues[214] = 17;
tileValues[214] = 16;
tileValues[215] = 16;
tileValues[216] = 22;
tileValues[219] = 10;
tileValues[220] = 22;
tileValues[222] = 9;
tileValues[224] = 42;
tileValues[223] = 8;
tileValues[232] = 36;
tileValues[233] = 36;
tileValues[235] = 24;
tileValues[239] = 24;
tileValues[240] = 34;
tileValues[242] = 17;
tileValues[244] = 34;
tileValues[246] = 16;
tileValues[247] = 16;
tileValues[248] = 20;
tileValues[249] = 20;
tileValues[250] = 3;
tileValues[251] = 2;
tileValues[252] = 20;
tileValues[254] = 1;
tileValues[255] = 47;

var bitValue = (
	(1 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(2 * NewBoolSwitch(place_meeting(x, y - BlockToPixel(1), obj_wall))) +
	(4 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y - BlockToPixel(1), obj_wall))) +
	(8 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y, obj_wall))) +
	(16 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y, obj_wall))) +
	(32 * NewBoolSwitch(place_meeting(x - BlockToPixel(1), y + BlockToPixel(1), obj_wall))) +
	(64 * NewBoolSwitch(place_meeting(x, y + BlockToPixel(1), obj_wall))) +
	(128 * NewBoolSwitch(place_meeting(x + BlockToPixel(1), y + BlockToPixel(1), obj_wall)))
)

draw_tile(placeHolderTiles, tileValues[bitValue] , 0,x,y);
