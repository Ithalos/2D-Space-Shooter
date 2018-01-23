extends Area2D

export (int) var moveSpeed
var velocity = Vector2()
var windowSize

func _ready():
	# Get game window size
	windowSize = get_viewport_rect().size

func _process(delta):

	# Player movement
	velocity = Vector2()

	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1

	# Normalize velocity
	if velocity.length() > 0:
		velocity = velocity.normalized() * moveSpeed

	position += velocity * delta
