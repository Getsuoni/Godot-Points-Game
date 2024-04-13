extends Area2D

@onready var game_manager = %GameManager




# Delete the banana object when entered
func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		queue_free()
		game_manager.add_points()
