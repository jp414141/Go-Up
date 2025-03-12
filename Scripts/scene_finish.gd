extends CanvasLayer

const JUEGO = "res://Escenas/Juego.tscn"

func set_title(title):
	$VBoxContainer/Label.text = title

func _on_button_button_down():
	get_tree().change_scene_to_file(JUEGO)
