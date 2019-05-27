/// @description Update Camera

//Atualizar o destino da camera
if (instance_exists(follow)) //if que testa se a personagem está no lugar correto para nao dar bugs na camera
{
xTo = follow.x //essas 2 linhas da nos onde queremos ir 
yTo = follow.y
}

//Atualizar onde está a personagem 
x += (xTo - x) /35; //da a diferenca de onde queremos ir para onde estamos (linha 11 e 12) e o /35 faz com que a camera se mova suavemente
y += (yTo - y) /35; 


//Não deixa a camera ultrapassar os limites da room
x= clamp (x, view_w_half, room_width - view_w_half); 
y= clamp (y, view_h_half, room_height - view_h_half); 


//Mudar a camera de sitio 
camera_set_view_pos (cam,x-view_w_half,y-view_h_half); //mete a personagem no meio da camera


