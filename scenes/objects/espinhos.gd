extends Area2D

var player_ref:PlayerClass = null

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_ref = body
		player_ref.dead()
	pass # Replace with function body.

