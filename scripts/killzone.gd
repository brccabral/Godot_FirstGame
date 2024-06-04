extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	# body is the player because it is the only object that enters killzone
	print("You died!")

	# slows the engine when player is killed
	Engine.time_scale = 0.5

	# remove the collision from the player so it falls down the ground
	# when it gets killed
	body.get_node("CollisionShape2D").queue_free()

	# triggers scene restart on func "_on_timer_timeout"
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1 # resets game speed
	get_tree().reload_current_scene()
