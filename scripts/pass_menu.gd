extends CanvasLayer

var current_word:int = 1

func _ready():
	visible = false

	print("word{word}".format({"word":current_word}))
	pass

func _physics_process(_delta): 
	open_menu()



	pass

func open_menu():
	if Input.is_action_just_pressed("open_menu"):
		visible = true
		get_tree().paused = true

func _on_touch_next_fase_pressed():
	get_tree().change_scene_to_file("res://scenes/runs/word" + str(current_word) + ".tscn")
	
	pass # Replace with function body.


func _on_touch_reload_pressed():
	get_tree().reload_current_scene()
	await get_tree().create_timer(0.4).timeout
	get_tree().paused = false
	pass # Replace with function body.


func _on_touch_quit_game_pressed():
	get_tree().quit()
	pass # Replace with function body.
