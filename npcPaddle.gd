extends CharacterBody2D

var ball;

var direction = Vector2();
@export var speed = 100;

# Called when the node enters the scene tree for the first time.
func _ready():
	ball = get_node("../ball")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if ball.position.y > self.position.y:
		direction.y += 1;
	elif ball.position.y < self.position.y:
		direction.y -= 1;
	
	direction.normalized();
	position += direction * speed * delta;
