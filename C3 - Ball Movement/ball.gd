# ball.gd
# Written by Andrew Roddy
# 4 / 14 / 2025

extends CharacterBody2D

var speed = 4
var collision = move_and_collide(velocity)

# Runs when the game starts
func _ready() -> void:
	velocity.x = speed
	velocity.y = speed

func _physics_process(delta: float) -> void:
	# Gets the collision
	var collision = move_and_collide(velocity)
	
	# Runs if there is a collision
	if collision:
		# Gets the colliders and their directions
		var collider = collision.get_collider()
		var collision_normal = collision.get_normal()
		
		# If it collides with the cat
		if (collider.name == "Cat"):
			
			# If the collision should send you down, have it send you down etc
			if collision_normal == Vector2(1, 0) or collision_normal == Vector2(-1, 0):
				velocity.x = velocity.x * -1
			if collision_normal == Vector2(0, 1) or collision_normal == Vector2(0, -1):
				velocity.y = velocity.y * -1
		
