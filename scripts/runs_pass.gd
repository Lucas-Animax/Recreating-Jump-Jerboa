extends TouchScreenButton

@export var current_level:int
@export var need_keys:int
@export_category("Objects")
@export var anim:AnimationPlayer
@export var label:Label

func _ready():
	label.text = "{current}/{need}".format({"need":need_keys,"current":find_iten.current_keys})
	anim_button()
	pass

func _on_pressed():
	if need_keys <= find_iten.current_keys:
		anim.play("click")
		await get_tree().create_timer(0.8).timeout
		Trasition_Scene.stats["click_button"] = true
		await get_tree().create_timer(1.5).timeout
		get_tree().change_scene_to_file(WorldFaze.worlds[current_level])

func anim_button():
	if need_keys <= find_iten.current_keys:
		anim.play("onn")
	else: 
		anim.play("off")
