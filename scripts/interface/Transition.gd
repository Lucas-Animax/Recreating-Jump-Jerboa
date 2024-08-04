extends CanvasLayer
class_name Trasition_Scene

static var stats = {
"word_start": false,
"click_button":false,
}

@export var anim:AnimationPlayer

func _physics_process(_delta):
	animation_trasition()
	

func animation_trasition():
	if stats["word_start"]:
		anim.play("animation_out")
		get_tree().paused = true
		await anim.animation_finished
		get_tree().paused =  false
		stats["word_start"] = false

	if stats["click_button"]:
		anim.play("animation_in")
		await anim.animation_finished
		get_tree().paused =  false
		stats["click_button"] = false
	


	pass





func _on_animation_player_animation_finished(anim_name:StringName):
	match anim_name:
		"animation_out":
			stats["word_start"] = false
		"animation_in":
			stats["click_button"] = false
	pass # Replace with function body.
