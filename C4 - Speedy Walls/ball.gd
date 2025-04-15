# ball.gd
# Written by Andrew Roddy
# 4 / 15 / 2025

extends CharacterBody2D

var speed = 4

## NEW # NEW # NEW # NEW # NEW ##
var multiplier = 1.1
var game_over = false
#################################

var collision = move_and_collide(velocity)

func _ready() -> void:
	velocity.x = speed
	velocity.y = speed
	
func _physics_process(delta: float) -> void:
	
	## NEW # NEW # NEW # NEW # NEW ##
	if game_over:
		position.x = 1000
		position.y = 50
		game_over = false
	#################################
	
	var collision = move_and_collide(velocity)
	if collision:
		var collider = collision.get_collider()
		var collision_normal = collision.get_normal()
		if (
			
			## NEW # NEW # NEW # NEW # NEW ##
			collider.name == "Left_Wall" or
			collider.name == "Right_Wall" or
			collider.name == "Top_Wall" or 
			#################################
			
			collider.name == "Cat"
		):
			if (collision_normal == Vector2(1, 0) or 
				collision_normal == Vector2(-1, 0)):
				velocity.x = velocity.x * -1
			if (collision_normal == Vector2(0, 1) or
				collision_normal == Vector2(0, -1)):
				velocity.y = velocity.y * -1
		
		## NEW # NEW # NEW # NEW # NEW ##
		if collider.name == "Cat":
			var cat_velocity = collider.velocity.x
			velocity.x += cat_velocity * 0.01 
		#################################
		
		if (collider.name == "Bottom_Wall"):
			velocity.x = speed
			velocity.y = speed
			
			## NEW # NEW # NEW # NEW # NEW ##
			game_over = true
			#################################
			
