extends Line2D

func downcounting():
	points[1].x -= 1

func when_time_is_up():
	return points[1].x == 0

func _on_Timer_timeout():
	downcounting()
