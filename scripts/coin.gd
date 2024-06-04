extends Area2D

# using % because GameManger is marked as UNIQUE in our scene
@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(_body):
	game_manager.add_point()
	# we use the animation "pickup" to
	# - invisible coin
	# - disable collision
	# - play sound
	# - and then call queue_free()
	# we do this using animation because when calling queue_free()
	# directly it stops the sound. So, we use animation to give some time
	# to play the sound before removing the coin from memory
	animation_player.play("pickup")
