extends Area2D
class_name Door

var menu_pass:Menu_Pass = null
var player_ref:PlayerClass = null
var find_key:find_iten = null
var key_take
static var can_click:bool = true

@export_category("variebles")
@export var need_keys:int = 1
@export_category("Objects")
@export var anim:AnimationPlayer



func _physics_process(_delta):
	key_take = find_iten.key_cont
	anim_door()


func _on_body_entered(body):
	if key_take >= need_keys and body.is_in_group("player"):
		Menu_Pass.pass_level = true
	pass
func anim_door():
	if key_take >= need_keys:
		anim.play("door_open")
	else: anim.play("door_close")


func _on_body_exited(body):
	if key_take >= need_keys and body.is_in_group("player"):
		Menu_Pass.pass_level = false
	pass # Replace with function body.
