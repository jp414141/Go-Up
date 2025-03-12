extends Node2D

const GAME_OVER = "res://Escenas/scene_finish.tscn"

signal player_health_updated(new_player_health)
signal time_updated(seconds_left)

@export var player_health = 3
@export var time_seconds = 250

func game_over():
	get_tree().change_scene_to_file(GAME_OVER)
	
func game_victory():
	get_tree().change_scene_to_file("res://Escenas/escena_final_1.tscn")

func _on_personaje_player_hit():
	print("Game controller se ha enterado de que el jugador sufrio daño")
	if player_health > 0:
		player_health = player_health - 1
		player_health_updated.emit(player_health)
	else:
		game_over()

func _on_area_2d_body_entered(body):
	#el jugador ha entrado en la zona de la bandera
	game_victory()

func _on_timer_timeout():
	if time_seconds > 0:
		time_seconds = time_seconds - 1
	if time_seconds <= 0:
		game_over()
	time_updated.emit(time_seconds)
