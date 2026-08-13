extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body.has_method('enemy'):
		body.health -= 25
	else:
		body.health -= 10
