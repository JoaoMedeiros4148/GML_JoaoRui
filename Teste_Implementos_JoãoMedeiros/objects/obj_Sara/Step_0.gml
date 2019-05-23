/// @description Control
//hgg
//Direita
if (keyboard_check(ord("D")) && place_free(x+CollisionSpeed,y)) { //se a letra D for pressionada irá executar o código abaixo
	x = x + WalkSpeed; /// é o mesmo que x = x + 3.5 (velocidade base que está associada a variavel walkspeed)
	image_speed = WalkSpeed / 3; //faz com que a animação da imagem seja algo suave e agradavel à vista
	sprite_index = sprSaraWalkRight //muda a animação para a qual está andar para a direita
	}

//Esquerda
if (keyboard_check(ord("A")) && place_free(x-CollisionSpeed,y)) { //se a letra A for pressionada irá executar o código abaixo
	x = x - WalkSpeed; /// é o mesmo que x = x - 3.5 (velocidade base que está associada a variavel walkspeed)
	image_speed = WalkSpeed / 3; //faz com que a animação da imagem seja algo suave e agradavel à vista
	sprite_index = sprSaraWalkLeft //muda a animação para a qual está andar para a direita
	}

//Cima
if (keyboard_check(ord("W"))&& place_free(x,y-CollisionSpeed)) { //se a letra W for pressionada irá executar o código abaixo
	y -= WalkSpeed; /// é o mesmo que y = y - 3.5 (velocidade base que está associada a variavel walkspeed)
	image_speed = WalkSpeed / 3; //faz com que a animação da imagem seja algo suave e agradavel à vista
	sprite_index = sprSaraWalkUP //muda a animação para a qual está andar para a direita
	}

//Baixo
if (keyboard_check(ord("S"))&& place_free(x,y+CollisionSpeed)) { //se a letra S for pressionada irá executar o código abaixo
	y += WalkSpeed; /// é o mesmo que y = y + 3.5 (velocidade base que está associada a variavel walkspeed)
	image_speed = WalkSpeed / 3; //faz com que a animação da imagem seja algo suave e agradavel à vista
	sprite_index = sprSaraWalkDown //muda a animação para a qual está andar para a direita
	}

//parar animação quando deixarmos de mexer no teclado
if keyboard_check(vk_nokey) {
	image_speed = 0; 
	image_index =0; 
	WalkSpeed = 3.5; //para voltar a velocidade inicial caso pressionarmos a tecla shift
}

//correr 
if keyboard_check(vk_shift) {
	WalkSpeed = 5;
}
