extends Node2D

var velocity := Vector2(0.0, 0.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Update the position based on velocity
	position += velocity * delta
	
	# Get the size of the screen
	var screen_size = get_viewport_rect().size
	
	# Delete the bullet if it goes outside of the screen
	if position.x < 0.0 or position.x > screen_size.x \
			or position.y < 0.0 or position.y > screen_size.y:
		queue_free()
