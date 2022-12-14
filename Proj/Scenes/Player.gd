extends KinematicBody2D

var SPEED = 150
var velocity = Vector2()

const FLOOR = Vector2(0, -1)
const GRAVITY = 800
const JUNP_POWER = 650

func _physics_process(delta):

	if position.y > 800:
		position.y = 0

	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED

	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED

	else: 
		velocity.x = 0
		$AnimatedSprite.play("default")
	
	if Input.is_action_just_pressed("ui_up") && is_on_floor():
		velocity.y = -JUNP_POWER
		$AnimatedSprite.play("Jump")
	
	velocity.y += (GRAVITY * delta)
	velocity = move_and_slide(velocity, FLOOR)


