extends KinematicBody2D

const SPEED = 150
const FLOOR = Vector2(0, -1)
const GRAVITY = 970
const JUMP_POWER = 450

var velocity = Vector2()
var dead = false
var coins = 0


func add_coin():
	coins += 1

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
	if Input.is_action_pressed("ui_up") && is_on_floor():
		velocity.y = -JUMP_POWER
		$AnimatedSprite.play("Jump")
	velocity.y += (GRAVITY * delta)
	velocity = move_and_slide(velocity, FLOOR)

func _on_Death_body_entered(body):
	get_tree().change_scene("res://Scenes/Death_display.tscn")





func _on_Win_body_entered(body):
	get_tree().change_scene("res://Scenes/MenuWin.tscn")
	
func _on_Win2_body_entered(body):
	get_tree().change_scene("res://Scenes/MenuWin.tscn")

func _on_Win3_body_entered(body):
	get_tree().change_scene("res://Scenes/MenuWin.tscn")
