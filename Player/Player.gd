extends Area2D

var windowSize

func _ready():
	# Get game window size
	windowSize = get_viewport_rect().size
