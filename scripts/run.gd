extends Node2D

@export var name_run:String
@export var need_key:int

func _ready():
	find_iten.key_cont = 0
	runs.name_run = name_run
	runs.need_keys = need_key
	Trasition_Scene.stats["word_start"] = true


