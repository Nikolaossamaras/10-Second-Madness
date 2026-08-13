extends CharacterBody2D

@export var speed = 400
@export var health = 25
var player_chase = false
var player = null

func enemy():
	pass

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	if health <=0:
		die()
	if player_chase:
		var direction = (player.global_position - global_position).normalized()
		position += direction * speed * delta
	if !player_chase:
		position.y += 6

func _on_detection_area_body_entered(body: Node2D) -> void:
	if body.has_method('player'):
		player = body
		player_chase = true

func _on_hit_area_body_entered(body: Node2D) -> void:
	if body.has_method('player'):
		body.health -= 10
		print(body.health)
		queue_free()

func die():
	Global.ships_killed +=1
	queue_free()
	
