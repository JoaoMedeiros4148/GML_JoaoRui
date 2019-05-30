/// @description init shadow casting
if( !surface_exists(surf) ){
    surf = surface_create(room_width,room_height);
}
surface_set_target(surf);
draw_clear_alpha(0,0);

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();

var surf = -1;




