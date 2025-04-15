# cat.gd
# Written by Andrew Roddy 
# 4/15/2025

# It's kind of like Javascript where you have to tell the program 
extends CharacterBody2D

const SPEED = 300.0 # Player speed

# This runs every delta frame meaning every frame multiplied by how bad your computer is
func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# Godot has really convenient button mapping stuff so we can edit what
	# "ui_left" and "ui_right" do later but we wont :)
	var direction := Input.get_axis("ui_left", "ui_right")

	if direction: # This changes our x position to where we are tryna move
		velocity.x = direction * SPEED
		if not get_node("../Rock").playing:
			get_node("../Rock").play()
	else: # If we don't have a direction yet, stand still
		velocity.x = move_toward(velocity.x, 0, SPEED)
		get_node("../Rock").stop()

	# Then this last part just makes sure our velocity.y stays 0
	# When the ball bounces off of us we don't want to be pushed back
	velocity.y = 0

	# Then this guy interprets all of that and actually does the moving
	move_and_slide() 
