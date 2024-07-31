@icon("res://sprits/chave_icon.png")
extends Area2D
var player_ref:PlayerClass = null

@export var anim:AnimationPlayer

func _on_body_entered(body):
	if body.is_in_group("player"):
		player_ref = body
		anim.play("take")
		await get_tree().create_timer(1).timeout
		player_ref.find_coin.add_key(runs.name_run,runs.need_keys)
		queue_free()

