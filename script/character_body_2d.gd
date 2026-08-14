extends CharacterBody2D
@export var health:int = 100
@export var SPEED = 300.0
@onready var projectile_scene = preload("res://scene/projectile.tscn")
@onready var shooting_hit: CollisionShape2D = $shooting_hit
@onready var shooting_hit2: CollisionShape2D = $shooting_hit2

func player():
	pass
	
func _physics_process(delta: float) -> void:
	if health <= 0:
		get_tree().change_scene_to_file("res://scene/deathscreen.tscn")
	
	if Input.is_action_just_pressed("shoot"):
		spawn_projectile(shooting_hit.global_position)
		spawn_projectile(shooting_hit2.global_position)
	
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()

func spawn_projectile(pos: Vector2) -> void:
	var projectile = projectile_scene.instantiate()
	projectile.global_position = pos
	add_sibling(projectile)
