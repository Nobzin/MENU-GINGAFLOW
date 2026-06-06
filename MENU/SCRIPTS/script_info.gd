extends Node2D

@onready var icons = [
	preload("res://MENU/ASSETS/ICONS/1.png"),
	preload("res://MENU/ASSETS/ICONS/2.png"),
	preload("res://MENU/ASSETS/ICONS/3.png"),
	preload("res://MENU/ASSETS/ICONS/4.png"),
	preload("res://MENU/ASSETS/ICONS/5.png"),
	preload("res://MENU/ASSETS/ICONS/6.png"),
	preload("res://MENU/ASSETS/ICONS/7.png"),
	preload("res://MENU/ASSETS/ICONS/8.png"),
	preload("res://MENU/ASSETS/ICONS/9.png"),
	preload("res://MENU/ASSETS/ICONS/1.png")
]

@onready var nations = [
	preload("res://MENU/ASSETS/PAISES/1.png"),
	preload("res://MENU/ASSETS/PAISES/2.png"),
	preload("res://MENU/ASSETS/PAISES/3.png"),
	preload("res://MENU/ASSETS/PAISES/4.png"),
	preload("res://MENU/ASSETS/PAISES/5.png"),
	preload("res://MENU/ASSETS/PAISES/6.png"),
	preload("res://MENU/ASSETS/PAISES/7.png"),
	preload("res://MENU/ASSETS/PAISES/8.png"),
	preload("res://MENU/ASSETS/PAISES/9.png"),
	preload("res://MENU/ASSETS/PAISES/10.png"),
	preload("res://MENU/ASSETS/PAISES/11.png"),
	preload("res://MENU/ASSETS/PAISES/12.png"),
	preload("res://MENU/ASSETS/PAISES/13.png")
]


func _ready() -> void:
	if global.current_name != "":
		$Label.text = global.current_name
	else:
		$Label.text = "Egoist Player"
		
	$TextureRectICON.texture = icons[global.current_icon - 1]
	$"TextureRectNAÇAO".texture = nations[global.current_nation - 1]
	
