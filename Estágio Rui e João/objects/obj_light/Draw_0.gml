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
        if( tile != 0 ){

        }
    }
}

var VertexFormat = vertex_format_end();

var VBuffer = vertex_create_buffer();

vertex_begin(VBuffer, VertexFormat);
for(var yy=starty;yy<=endy;yy++)
{
    for(var xx=startx;xx<=endx;xx++)
    {
        var tile = tilemap_get(tilemap,xx,yy);
        if( tile!=0 )
        {
            // get corners of the 
            var px1 = xx*tile_size;     // top left
            var py1 = yy*tile_size;
            var px2 = px1+tile_size;    // bottom right
            var py2 = py1+tile_size;


            ProjectShadow(VBuffer,  px1,py1, px2,py1, lx,ly );
            ProjectShadow(VBuffer,  px2,py1, px2,py2, lx,ly );
            ProjectShadow(VBuffer,  px2,py2, px1,py2, lx,ly );
            ProjectShadow(VBuffer,  px1,py2, px1,py1, lx,ly );                      
        }
    }
}
vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);
var PointX = px2 - px1;
var PointY = py2 - py1;
var Adx = PointX-lx;        
var Ady = PointY-ly;      
var len = sqrt( (Adx*Adx)+(Ady*Ady) );
var Adx = Adx / len;    
var Ady = Ady / len;

  if( SignTest( px1,py1, px2,py1, lx,ly) ){
        ProjectShadow(VBuffer,  px1,py1, px2,py1, lx,ly );
    }
    if( SignTest( px2,py1, px2,py2, lx,ly) ){
        ProjectShadow(VBuffer,  px2,py1, px2,py2, lx,ly );
    }
    if( SignTest( px2,py2, px1,py2, lx,ly) ){
        ProjectShadow(VBuffer,  px2,py2, px1,py2, lx,ly );
    }
    if( SignTest( px1,py2, px1,py1, lx,ly) ){
        ProjectShadow(VBuffer,  px1,py2, px1,py1, lx,ly );                      
    }