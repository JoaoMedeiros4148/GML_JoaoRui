var lx = mouse_x;       // the light position, based around the mouse location
var ly = mouse_y;
var rad = 96            // the radius of the light
var tile_size = 32;     // size of a tile
var tilemap = layer_tilemap_get_id("walls");


var startx = floor((lx-rad)/tile_size);
var endx = floor((lx+rad)/tile_size);
var starty = floor((ly-rad)/tile_size);
var endy = floor((ly+rad)/tile_size);

draw_set_color(c_yellow);
draw_rectangle(startx*tile_size,starty*tile_size, endx*tile_size,endy*tile_size,true);

for(var yy=starty;yy<=endy;yy++)
{
    for(var xx=startx;xx<=endx;xx++)
    {
        var tile = tilemap_get(tilemap,xx,yy);
        if( tile!=0 ){

        }
    }
}
