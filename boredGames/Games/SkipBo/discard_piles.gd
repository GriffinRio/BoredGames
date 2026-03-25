extends Node2D

var selected_pile = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func select_pile(pile_node):
	if selected_pile != null:
		selected_pile.unselected()
	if selected_pile != pile_node:
		selected_pile = pile_node
		selected_pile.selected()
	else:
		selected_pile = null
