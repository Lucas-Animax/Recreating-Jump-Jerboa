@icon("res://sprits/icon_rosaline.png")
extends CharacterBody2D
@export_category("Objects")
@export var spr:Sprite2D
@export var wall_ray:RayCast2D
@export var anim:AnimationPlayer
@export_category("Variebles")
@export var speed:int
var dic = -1




func _physics_process(delta):
	move()
	change_side()
	flip_h()
	move_and_slide()
	
	pass

func move():
	velocity.x = dic * speed
	if not is_on_floor():
		velocity.y += 40
	
	
	
	
	pass



func change_side():
	if next_to_wall():
		if dic == -1:
			dic = 1
		elif dic == 1:
			dic = -1
func flip_h():
	if dic == 1:
		spr.flip_h = false
		wall_ray.target_position = Vector2(5,0)
		
	if dic == -1:
		spr.flip_h = true
		wall_ray.target_position = Vector2(-5,0)
		
func next_to_wall() -> bool:
	if wall_ray.is_colliding():
		return true
	else: return false

