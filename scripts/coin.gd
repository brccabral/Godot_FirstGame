extends Area2D

# using % because GameManger is marked as UNIQUE in our scene
@onready var game_manager = %GameManager

func _on_body_entered(body):
	game_manager.add_point()
	queue_free()
