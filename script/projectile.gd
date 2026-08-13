extends Area2D

var speed = 500.0

func _physics_process(delta: float) -> void:
	position.y -= speed * delta


func _on_body_entered(body: Node2D) -> void:
	if body.has_method('enemy'):
		body.health -= 25
		print('enemy health')
		print(body.health)
