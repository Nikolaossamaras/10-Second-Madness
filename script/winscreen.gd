extends Node2D

var one_time = 0
@onready var enemy_scene = preload("res://scene/enemy_ship.tscn")

func _ready() -> void:
	$instructions.start()
	$wait_until_cutscene.start()
	$Timer.start()
	$spawn_time.start()

func _process(_delta: float) -> void:
	$Label.text = "YOU HAVE KILLED " +str(Global.ships_killed) +" / " +str(Global.ship_needed)+" ships"

func _on_wait_until_cutscene_timeout() -> void:
	if one_time == 0:
		print('play')
		$AnimationPlayer.play("cut_scene")
		one_time = 1
		

func spawn_enemy() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.global_position = Vector2(randf_range(50, 1100), -800)
	add_child(enemy)

var times = 0
func _on_timer_timeout() -> void:
	if times == 0:
		spawn_enemy()
		times +=1


func _on_spawn_time_timeout() -> void:
	if times != 0:
		spawn_enemy()


func _on_instructions_timeout() -> void:
	$Label2.visible=false
