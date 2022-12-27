extends Control 

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Main_.tscn") 


func _process(delta):
	if Input.is_action_just_pressed("_Enter") == true: get_tree().change_scene("res://Scenes/Main_.tscn")

