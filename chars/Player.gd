extends CharacterBody2D
var speed = 40

var grid_size = 40
var inputs = {
	'up': Vector2.UP,
	'down': Vector2.DOWN,
	'left': Vector2.LEFT,
	'right': Vector2.RIGHT
}

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)
			
func move(dir):
	var vector_pos = inputs[dir] * grid_size
	var movement = vector_pos.normalized() * speed
	var collision = move_and_collide(movement)
	if collision:
		# Handle collision here
		# For example, you could stop the character's movement:
		velocity = Vector2.ZERO

