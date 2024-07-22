@icon("res://sprits/player.png")
extends CharacterBody2D
class_name PlayerClass
@export_category("Objects")
@export var spr:Sprite2D
@export var wall_ray:RayCast2D
@export_category("Variebles")
@export var speed:float
#region var numbers
var dic:float = 1
var jump_cont:int
var direction:int = 1
#endregion
#region cosnts
const gravit_value = 50
const jump_value = 550
const wall_gravit = 30
const wall_impuse =1000
const wall_jump = 350
#endregion

func _physics_process(delta):
	move()
	switch_sides()
	move_and_slide()
	spr.animate(dic,velocity)
	jump()
	gravit()

func move():
	if not next_to_wall():
		velocity.x = dic * speed

func switch_sides():
	if next_to_wall() and is_on_floor():
		if dic == 1:
			dic = -1
		elif dic == -1:
			dic = 1

func next_to_wall() -> bool:
	if wall_ray.is_colliding():
		return true 
	else:return false

func jump():
	if is_on_floor() or next_to_wall() and not is_on_floor():
		jump_cont = 0
	if Input.is_action_just_pressed("jump") and jump_cont < 1:
		jump_cont += 1
		if next_to_wall() and not is_on_floor():
			velocity.x = direction * wall_impuse
			velocity.y -= wall_jump
			dic = direction
		else:
			velocity.y -= jump_value
			dic != direction
		
		
	
	
	
	pass

func gravit():
	if not is_on_floor() and next_to_wall():
		velocity.y += wall_gravit
		if velocity.y >=  wall_gravit:
			velocity.y = wall_gravit
			await get_tree().create_timer(0.1).timeout
			velocity.y != wall_gravit
	elif not is_on_floor():
		velocity.y += gravit_value
		if velocity.y >=  gravit_value:
			velocity.y = gravit_value