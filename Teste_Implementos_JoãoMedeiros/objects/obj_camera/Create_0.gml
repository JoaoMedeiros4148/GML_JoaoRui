/// @description Set up camera
cam = view_camera[0]; //metemos a camera criada pelo Game Maker no viewport 0
follow = obj_Sara; //variavel para seguir a personagem 
view_w_half = camera_get_view_width(cam) / 2; //dá-nos a metade da largura da camera para depois centrarmos a nossa personagem 
view_h_half = camera_get_view_height(cam) / 2; //dá-nos a metade do comprimento da camera para depois centrarmos a nossa personagem 
xTo= xstart; //essas 2 linhas (6 e 7) é para armazenar a origem da camera 
yTo = ystart;



