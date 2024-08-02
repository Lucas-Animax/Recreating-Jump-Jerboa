extends CanvasLayer

@export var anim:AnimationPlayer

func change_scene(target: String) -> void:
	anim.play('animation_in')
	await anim.animation_finished
	get_tree().change_scene(target)
	anim.play_backwards('animation_in')


