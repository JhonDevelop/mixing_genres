extends KinematicBody2D

export (int) var speed = 200

var move = Vector2(0,0)

func _input(event):
	move = Vector2()
	if Input.is_action_pressed("Direita"):
		move.x += 1 
	if Input.is_action_pressed("Esquerda"):
		move.x -= 1
	if Input.is_action_pressed("Cima"):
		move.y -= 1 
	if Input.is_action_pressed("Baixo"):
		move.y += 1 
	move = move.normalized() * speed
	
func _physics_process(delta):
	get_index()
	move = move_and_slide(move)
