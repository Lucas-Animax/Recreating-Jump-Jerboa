extends Sprite2D

@export_category("variebles")
@export_category("Objects")
@export var player_ref:CharacterBody2D
@export var anim:AnimationPlayer



func animate(dic:float,dicV2:Vector2):
	if dicV2.y != 0:
		anim_vertical(dicV2)
	elif dicV2.x != 0:
		anim_horizontal(dic)
	if player_ref.is_dead:
		anim_dead()
	check_side(dic)

func check_side(dic:float):
	if dic == 1:
		player_ref.direction = -1
		flip_h = false
		player_ref.wall_ray.target_position = Vector2(5,0)
	elif dic == -1:
		player_ref.direction = 1
		flip_h = true
		player_ref.wall_ray.target_position = Vector2(-5,0)

func anim_horizontal(dic):
	if dic != 0:
		anim.play("walk")

func anim_vertical(dicV2:Vector2):
	if player_ref.next_to_wall() and not player_ref.is_on_floor():
		anim.play("wall_slide")
	elif dicV2.y < 0:
		anim.play("up")
	elif dicV2.y > 0:
		anim.play("down")
	pass 
func anim_dead():
	anim.play("dead")
	
	
	
	
	pass






