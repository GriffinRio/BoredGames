extends Area2D

@export var card_scene: PackedScene

var positions = [[]]
var cards = []
var spacing = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spacing = $CollisionShape2D.get_transform()[0][0] * 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_draw_pile_card_drawn(card: String) -> void:
	var current_card = card_scene.instantiate()
	current_card.card = card
	add_child(current_card)
	var x_position = -180 + (cards.size() + 1) * spacing
	print(x_position)
	current_card.position.x = x_position
	cards.append(current_card)
	
	
	
