extends Line2D

func downcounting():
	points[1].x -= 1	#отнимаем время

func when_time_is_up():
	return points[1].x == 0

func _on_Timer_timeout() -> void:
	downcounting()
	if when_time_is_up():
		get_tree().change_scene("res://Scenes/DIED.tscn")	#Сцена после смерти
