depth = 4;


//textbox parameters
tbWidth = 326;
tbHeight = 48;
tbBorder = 10;
lineSep = 16;
lineWidth = tbWidth - tbBorder*2;

tbSprite[0] = sTextBox3;
tbImage = 0;
tbImageSpeed = 6/60;

//the text
page = 0;
pageNumber = 0;

text[0] = "";
//text[1] = "Here's another kinda long bit of text so we can see if everything works alrighttttt!!!!!!";
//text[2] = "Short";
//text[3] = "Long long long long long long long long long long long long long long long long long long long long long long long long looooooooonnnnnnggggg";
textLength[0] = string_length(text[0]);

char[0,0] = "";
charX[0,0] = 0;
charY[0,0] = 0;

drawChar = 0;
textSpeed = .5;

//options
option[0] = "";
optionLinkId[0] = -1;
optionPos = 0;
optionNumber = 0;


setup = false;

//sound
//Make this an array later maybe
sndDelay = 4;
sndCount = sndDelay;

global.playMusic = true;



//effects
scrSetDefaultsForText();
lastFreeSpace = 0;
textPauseTimer = 0;
textPauseTime = 16;
