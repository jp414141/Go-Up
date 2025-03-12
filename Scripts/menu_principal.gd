extends Node2D


func _on_jugar_pressed():
	get_tree().change_scene_to_file("res://Escenas/Juego.tscn")


func _on_controles_pressed():
	get_tree().change_scene_to_file("res://Escenas/controles.tscn")


func _on_creditos_pressed():
	get_tree().change_scene_to_file("res://Escenas/creditos.tscn")
