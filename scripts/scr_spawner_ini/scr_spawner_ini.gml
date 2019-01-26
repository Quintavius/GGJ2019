section_height = 24; //Section height in blocks
last_reached_section = 0; //Current section
next_spawn_height = section_height/2;

enum GenerationRecipes{
	ThreeTunnelCave,
	StarterCave,
	SpikeCaverns
}

//Cave settings
cave_digging_iterations = 3;

var f;
for (f = 0; f < 256; f++){
	global.tileValues[f] =46;
}

global.tileValues[0] = 46;
global.tileValues[2] = 44;
global.tileValues[3] = 44;
global.tileValues[6] = 44;
global.tileValues[7] = 44;
global.tileValues[8] = 45;
global.tileValues[9] = 45;
global.tileValues[10] = 39;
global.tileValues[11] = 38;
global.tileValues[15] = 38;
global.tileValues[16] = 43;
global.tileValues[19] = 41;
global.tileValues[20] = 43;
global.tileValues[22] = 40;
global.tileValues[23] = 40;
global.tileValues[24] = 33;
global.tileValues[25] = 33;
global.tileValues[27] = 30;
global.tileValues[30] = 29;
global.tileValues[31] = 28;
global.tileValues[32] = 46;
global.tileValues[40] = 45;
global.tileValues[41] = 45;
global.tileValues[43] = 38;
global.tileValues[47] = 38;
global.tileValues[48] = 43;
global.tileValues[56] = 33;
global.tileValues[57] = 33;
global.tileValues[59] = 30;
global.tileValues[62] = 29;
global.tileValues[63] = 28;
global.tileValues[64] = 42;
global.tileValues[66] = 32;
global.tileValues[67] = 32;
global.tileValues[68] = 42;
global.tileValues[72] = 37;
global.tileValues[73] = 37;
global.tileValues[74] = 27;
global.tileValues[75] = 25;
global.tileValues[79] = 25;
global.tileValues[82] = 18;
global.tileValues[86] = 18;
global.tileValues[87] = 18;
global.tileValues[92] = 23;
global.tileValues[96] = 42;
global.tileValues[98] = 32;
global.tileValues[100] = 42;
global.tileValues[102] = 32;
global.tileValues[103] = 32;
global.tileValues[104] = 36;
global.tileValues[105] = 36;
global.tileValues[106] = 26;
global.tileValues[107] = 24;
global.tileValues[111] = 24;
global.tileValues[120] = 21;
global.tileValues[123] = 6;
global.tileValues[127] = 4;
global.tileValues[144] = 43;
global.tileValues[148] = 43;
global.tileValues[150] = 40;
global.tileValues[151] = 40;
global.tileValues[154] = 31;
global.tileValues[156] = 33;
global.tileValues[158] = 29;
global.tileValues[159] = 28;
global.tileValues[192] = 42;
global.tileValues[194] = 32;
global.tileValues[198] = 32;
global.tileValues[208] = 34;
global.tileValues[210] = 17;
global.tileValues[212] = 34;
global.tileValues[214] = 17;
global.tileValues[214] = 16;
global.tileValues[215] = 16;
global.tileValues[216] = 22;
global.tileValues[219] = 10;
global.tileValues[220] = 22;
global.tileValues[222] = 9;
global.tileValues[224] = 42;
global.tileValues[223] = 8;
global.tileValues[232] = 36;
global.tileValues[233] = 36;
global.tileValues[235] = 24;
global.tileValues[239] = 24;
global.tileValues[240] = 34;
global.tileValues[242] = 17;
global.tileValues[244] = 34;
global.tileValues[246] = 16;
global.tileValues[247] = 16;
global.tileValues[248] = 20;
global.tileValues[249] = 20;
global.tileValues[250] = 3;
global.tileValues[251] = 2;
global.tileValues[252] = 20;
global.tileValues[254] = 1;
global.tileValues[255] = 47;
