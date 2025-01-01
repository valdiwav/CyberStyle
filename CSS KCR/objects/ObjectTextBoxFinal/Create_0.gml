text = "1001101 NOOOO!! NO SE SUPONÍA QU GANARAS 101101 MALDITO SEAS HUMANO LOS COLORES DEL MUNDO ERAN MIOOOSS MIIIOOS TE DESTRUIREE T D STR IRE TTT DDD 1011... 110... 01... 1... 0...    .    .            .";
text = scrSplitTextIntoPages(text,global.TEXTBOX_FONT,10,350,40);
page = 0;
textOnDispley = "";
alarm[0] = 6;


global.tiempoTotal=(get_timer())*0.000001

global.tiempoM3=global.tiempoTotal-global.tiempoEmpiezaM3

saveData()