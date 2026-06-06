extends Control


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
