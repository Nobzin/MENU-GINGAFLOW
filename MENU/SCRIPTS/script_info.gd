extends Node2D

@onready var icons = [
	$"Node2D/1",
	$"Node2D/2",
	$"Node2D/3",
	$"Node2D/4",
	$"Node2D/5",
	$"Node2D/6",
	$"Node2D/7",
	$"Node2D/8",
	$"Node2D/9"
]

@onready var nations = [
	$"Node2DNACAO/1",
	$"Node2DNACAO/2",
	$"Node2DNACAO/3",
	$"Node2DNACAO/4",
	$"Node2DNACAO/5",
	$"Node2DNACAO/6",
	$"Node2DNACAO/7",
	$"Node2DNACAO/8",
	$"Node2DNACAO/9",
	$"Node2DNACAO/10",
	$"Node2DNACAO/11",
	$"Node2DNACAO/12",
	$"Node2DNACAO/13"
]


func _ready() -> void:
	if global.current_name != "":
		$Label.text = global.current_name
	else:
		$Label.text = "Egoist Player"
		
	for icon in icons:
		icon.visible = false

	icons[global.current_icon - 1].visible = true
	
	for nation in nations:
		nation.visible = false

	nations[global.current_nation - 1].visible = true
	
