extends Control
@onready var music_text = $Now_playing/music_label
@onready var musica_atual = get_node("/root/AudioManager")
var loading_screen = preload("res://Carregamento.tscn")
func _ready() -> void:
	var loading = loading_screen.instantiate()
	get_tree().root.add_child(loading)
	music_text.text+= musica_atual.nome
	musica_atual.start_music()
var hue:= 0.0
func _process(delta: float) -> void:
	hue += delta * 0.3
	
	if hue > 1.0:
		hue = 0.0
	music_text.modulate = Color.from_hsv(hue,1.0,1.0)
	

func _on_button_pressed() -> void:
	pass # Replace with function body.



func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://MENU/SCENES/training.tscn")


func _on_button_3_pressed() -> void:
	pass # Replace with function body.


func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://MENU/SCENES/customize.tscn")



func _on_button_quit_pressed() -> void:
	get_tree().quit()



func _on_button_login_pressed() -> void:
	get_tree().change_scene_to_file("res://MENU/SCENES/login.tscn")
	
