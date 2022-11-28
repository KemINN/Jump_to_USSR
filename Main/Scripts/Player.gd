extends KinematicBody2D

var velocity = Vector2() 

const SPEED = 30;
const gravity = 10;
const jump = 200;
const FLOOR = Vector2(0, -1)

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -jump
	
	velocity.y += gravity
	
	move_and_slide(velocity)
