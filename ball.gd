extends Area2D

var speed = -300
var direction = Vector2(1.0,0.0);

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.position.y - $Sprite2D.texture.get_height() / 2 < 0:
		self.direction.y *= -1;
	elif self.position.y + $Sprite2D.texture.get_height() / 2 > DisplayServer.window_get_size().y:
		self.direction.y *= -1
	direction.normalized()
	position += direction * speed * delta;

func _on_body_entered(body):
	
		self.direction -= body.direction;
		self.direction.x *= -1;
		#print("gamer")
