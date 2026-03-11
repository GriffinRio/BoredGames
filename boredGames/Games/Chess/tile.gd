extends StaticBody3D

var black_tile_color = preload("res://Games/Chess/black_tile_color.tres")
var white_tile_color = preload("res://Games/Chess/white_tile_color.tres")
@export var black_tile = Color.BLACK
@export var white_tile = Color.WHITE
@export_enum("White", "Black") var Team:String



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Team == "Black":
		$Body.set_surface_override_material(0, black_tile_color)
	elif Team == "White":
		$Body.set_surface_override_material(0, white_tile_color)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
