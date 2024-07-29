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




	pass

func click_relod():
	get_tree().reload_current_scene()



	pass
func click_quit():
	get_tree().quit()


	pass


func _on_touch_next_fase_pressed():
		print("meu pau")
		get_tree().change_scene_to_file("res://scenes/runs/word1.tscn")
		pass 
