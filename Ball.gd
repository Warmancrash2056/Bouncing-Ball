extends KinematicBody2D

var Motion = Vector2(100,100)

func _physics_process(delta):
	var collision_info = move_and_collide(Motion * delta)
	
	if collision_info:
		Motion = Motion.bounce(collision_info.normal)
