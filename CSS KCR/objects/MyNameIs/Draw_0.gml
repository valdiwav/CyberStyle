/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_text(x,y,playername);

if blink
{
    var length = string_width(playername);
    var height = string_height(playername);
 
    draw_line(x + length, y, x+length, y+height);
 
    if height < 1 { draw_line(x, y, x, y+50);
    }
}