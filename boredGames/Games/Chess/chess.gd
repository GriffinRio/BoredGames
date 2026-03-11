extends Node3D

var player_turn
var game_over
enum Player {WHITE, BLACK}


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player_turn = Player.WHITE
	game_over = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
