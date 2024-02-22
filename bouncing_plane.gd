extends Node2D

var velocity := Vector2(100.0, 100.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Update the position based on velocity
	position += velocity * delta
	
	# Get the size of the screen
	var screen_size = get_viewport_rect().size
	
	# Keep the x value within the screen
	if position.x < 0.0:
		position.x = 0.0
		velocity.x = abs(velocity.x)
	elif position.x > screen_size.x:
		position.x = screen_size.x
		velocity.x = -abs(velocity.x)
	
	# Keep the y value within the screen
	if position.y < 0.0:
		position.y = 0.0
		velocity.y = abs(velocity.y)
	elif position.y > screen_size.y:
		position.y = screen_size.y
		velocity.y = -abs(velocity.y)
