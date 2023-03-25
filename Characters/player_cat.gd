extends CharacterBody2D


@export var SPEED: float = 300.0

func _physics_process(_delta):
	var direction = Input.get_axis("ui_left", "ui_right")	
	if direction:
		printonce(str(direction),0)
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	direction = Input.get_axis("ui_up", "ui_down")
	if direction:
		printonce(str(direction),1)
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
var num = 0
func printonce(str,xnum):
	if num == xnum:
		print(str)
		num += 1
