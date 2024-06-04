extends Area2D


func _on_body_entered(body):
#	any physics object will trigger this event (platforms)
	print("+1 coin!")
