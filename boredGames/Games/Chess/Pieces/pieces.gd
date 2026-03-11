extends StaticBody3D

var black_piece_color = preload("res://Games/Chess/black_piece_color.tres")
var white_piece_color = preload("res://Games/Chess/white_piece_color.tres")
@export_enum("White", "Black") var Team:String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func set_color():
	if Team == "Black":
		$Body.set_surface_override_material(0,black_piece_color)
	elif Team == "White":
		$Body.set_surface_override_material(0,white_piece_color)
