extends Label

@onready var timer: Timer = $Timer

var countdown: int = 10

func updateLabelText() -> void:
	text = str(countdown)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateLabelText()
	timer.start()
	timer.wait_time = 1
	timer.autostart = true

func _on_timer_timeout() -> void:
	if countdown > 0:
		countdown -= 1
		updateLabelText()
	else:
		timer.stop()
		timer.wait_time = 1.5
		Controller.reset_coin()
		get_tree().reload_current_scene()
