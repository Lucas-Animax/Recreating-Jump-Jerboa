extends Node
class_name find_iten

static var coin_cont:int = 0
static var key_cont:int = 0
static var current_keys:int

var need_key = {
"key_run0": 1,
"key_run1":2,
"key_run2":2

}

func add_coin():
	coin_cont += 1
	print(coin_cont)
	pass

func add_key(run_name:String,key_max:int):
	key_cont += 1 
	if key_cont > need_key[run_name]:
		key_cont = key_max
	if current_keys < key_cont:
		current_keys += key_cont

	
