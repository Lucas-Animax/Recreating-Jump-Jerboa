extends Area2D

var player_ref:PlayerClass = null
@export var anim:AnimationPlayer

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_ref = body
		anim.play("coletion")
		await get_tree().create_timer(0.3).timeout
		player_ref.find_coin.add_coin()
		
		queue_free()

