extends Node2D

var bullet_scene := preload("res://bullet.tscn")
const BULLET_SPEED: float = 1000.0

# When the timer runs out, fires a bullet from Firing to Target
func _on_fire_timer_timeout():
	print("Fire!")
	# Get a reference to each of the planes
	var firing := $FiringPlane
	var target := $TargetPlane
	# Instantiate a new bullet
	var bullet := bullet_scene.instantiate()
	add_child(bullet)
	# Put the bullet in the right position and give it the right velocity
	bullet.position = firing.position
	bullet.velocity = get_bullet_velocity(firing.position, firing.velocity, target.position, target.velocity, BULLET_SPEED)

# This function calculates the velocity which a bullet should travel to hit a target plane.
# Note: All parameters should be provided in global coordinates. The return value is also given in
# global coordinates.
#
# Parameters:
# pos_fire: the position of the firing plane
# vel_fire: the velocity of the firing plane
# pos_targ: the position of the target plane
# vel_targ: the velocity of the target plane
# speed_bullet: the speed at which the bullet will travel (relative to the firing plane)
func get_bullet_velocity(pos_fire: Vector2, vel_fire: Vector2,
						pos_targ: Vector2, vel_targ: Vector2,
						speed_bullet: float) -> Vector2:
	var vel_fire_to_targ_unit: Vector2 = (pos_targ - pos_fire).normalized()
	var vel_fire_to_targ_mag: float # unknown at this time
	var a: float = 1
	var b: float = 2.0 * vel_fire_to_targ_unit.dot(vel_targ - vel_fire)
	var c: float = (vel_targ - vel_fire).length_squared() - speed_bullet * speed_bullet
	vel_fire_to_targ_mag = (-b + sqrt(b * b - 4.0 * a * c)) / (2.0 * a)
	var vel_bullet: Vector2 = vel_targ + vel_fire_to_targ_mag * vel_fire_to_targ_unit
	return vel_bullet
