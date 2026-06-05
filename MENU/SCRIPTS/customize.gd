extends Control

@onready var icons = [
	$"Panel/Node2D/1",
	$"Panel/Node2D/2",
	$"Panel/Node2D/3",
	$"Panel/Node2D/4",
	$"Panel/Node2D/5",
	$"Panel/Node2D/6",
	$"Panel/Node2D/7",
	$"Panel/Node2D/8",
	$"Panel/Node2D/9"
]

@onready var nations = [
	$"Panel/Node2DNACAO/1",
	$"Panel/Node2DNACAO/2",
	$"Panel/Node2DNACAO/3",
	$"Panel/Node2DNACAO/4",
	$"Panel/Node2DNACAO/5",
	$"Panel/Node2DNACAO/6",
	$"Panel/Node2DNACAO/7",
	$"Panel/Node2DNACAO/8",
	$"Panel/Node2DNACAO/9",
	$"Panel/Node2DNACAO/10",
	$"Panel/Node2DNACAO/11",
	$"Panel/Node2DNACAO/12",
	$"Panel/Node2DNACAO/13"
]

func _ready() -> void:
	trocar_icon()
	trocar_nation()
	$Panel/LineEditNAME.text = global.current_name
	$Panel/SpinBoxNUM.value = global.current_num_shirt

func _on_button_l_pressed() -> void:
	global.current_icon -= 1

	if global.current_icon < 1:
		global.current_icon = 9

	trocar_icon()

func _on_button_r_pressed() -> void:
	global.current_icon += 1

	if global.current_icon > 9:
		global.current_icon = 1

	trocar_icon()

func trocar_icon():
	# Esconde todos
	for icon in icons:
		icon.visible = false

	# Mostra apenas o selecionado
	icons[global.current_icon - 1].visible = true




func _on_line_edit_text_changed(new_text: String) -> void:
	var cursor = $Panel/LineEditNAME.caret_column

	var texto_filtrado := ""

	for c in new_text:
		if !c.is_valid_int():
			texto_filtrado += c

	$Panel/LineEditNAME.text = texto_filtrado
	$Panel/LineEditNAME.caret_column = min(cursor, texto_filtrado.length())
	global.current_name = $Panel/LineEditNAME.text


func _on_button_return_pressed() -> void:
	get_tree().change_scene_to_file("res://MENU/SCENES/menu.tscn")



func _on_spin_box_num_value_changed(value: float) -> void:
	global.current_num_shirt = $Panel/SpinBoxNUM.value


func trocar_nation():
	for nation in nations:
		nation.visible = false

	# Mostra apenas o selecionado
	nations[global.current_nation - 1].visible = true

func _on_button_lnacao_pressed() -> void:
	global.current_nation -= 1

	if global.current_nation < 1:
		global.current_nation = 13

	trocar_nation()


func _on_button_rnacao_pressed() -> void:
	global.current_nation += 1

	if global.current_nation > 13:
		global.current_nation = 1

	trocar_nation()
