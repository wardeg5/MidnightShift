global.screen = "$";
global.targetPrice = "";
global.regIndex = 0;
global.nextState = "";
global.curState = "rad1";

//I know there are better ways to do this
//my brain is melting rn
global.custItems[0] = -1;
global.custItems[1] = -1;
global.custItems[2] = -1;
global.custItems[3] = -1;
global.custItems[4] = -1;
global.custItems[5] = -1;
global.custItems[6] = -1;
global.custItems[7] = -1;

global.showPriceBook = false;
global.curItem = 0;


total = "$";
itemTotal = "$";

pressTimer = 10;


createTextBox("rad1");


initItems();



//screen = string_concat(itemPrice[0]);

