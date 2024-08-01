extends TouchScreenButton

@export var current_level:int
@export var need_keys:int
@export var anim:AnimationPlayer

func _ready():
	anim_button()
	pass

func _on_pressed():
	if need_keys <= find_iten.current_keys:
		anim.play("click")
		await get_tree().create_timer(0.8).timeout
		get_tree().change_scene_to_file(WorldFaze.worlds[current_level])

func anim_button():
	if need_keys <= find_iten.current_keys:
		anim.play("onn")
	else: 
		anim.play("off")
