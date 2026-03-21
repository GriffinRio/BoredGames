extends Area2D


@export var card_scene: PackedScene
var cards = []
var spacing = 0
var selected_card

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spacing = $CollisionShape2D.get_transform()[0][0] * 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func card_drawn(card: String) -> void:
	var current_card = card_scene.instantiate()
	current_card.card = card
	var x_position = -180 + (cards.size() + 1) * spacing
	current_card.position.x = x_position
	add_child(current_card)
	current_card.card_selected.connect(card_selected)
	cards.append(current_card)
	
func card_selected(card_node):
	if(selected_card != null):
		selected_card.unselected()
	if(selected_card != card_node):	
		selected_card = card_node
		selected_card.selected()
	else:
		selected_card = null

func remove_selected():
	cards.erase(selected_card)
	selected_card.queue_free()
	selected_card = null
	
	
	
