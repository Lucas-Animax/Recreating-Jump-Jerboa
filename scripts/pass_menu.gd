extends CanvasLayer
class_name Menu_Pass

var current_word:int = 1
static var pass_level:bool = false
static var reload:bool = false

func _ready():
	visible = false
	pass

func _physics_process(_delta): 
	open_menu()
	pass

func open_menu():
	if pass_level:
		visible = true
		get_tree().paused = true
	else:
		visible = false
		get_tree().paused = false



	pass



func _on_touch_next_fase_pressed():
		get_tree().change_scene_to_file("res://scenes/runs/word1.tscn")
		pass 


func _on_touch_quit_game_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_touch_reload_pressed():
	get_tree().paused = false
	visible = false
	reload = true
	get_tree().reload_current_scene()

	pass # Replace with function body.
