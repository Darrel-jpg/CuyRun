extends Label

func get_coin(coin) -> void:
	text = str('+', coin)

func _ready() -> void:
	Controller.connect('my_coin', get_coin)
