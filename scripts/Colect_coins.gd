extends Node
class_name find_iten

static var current_coins
static var current_chaves
static var coin_cont:int = 0
static var key_cont:int = 0

func add_coin():
	coin_cont += 1
	print(coin_cont)
	pass

func add_key():
	key_cont += 1 
	print(key_cont)
	pass
