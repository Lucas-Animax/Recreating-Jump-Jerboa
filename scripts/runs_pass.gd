extends TouchScreenButton

@export var current_level:int
@export var need_keys:int

func _on_pressed():
	if need_keys <= find_iten.current_keys :
		get_tree().change_scene_to_file(WorldFaze.worlds[current_level])
