extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_draw_pile_drew_cards() -> void:
	var amount = 5 - $Hand.cards.size()
	if amount > 0:
		var cards = $"Draw Pile".draw_cards(amount)
		for card in cards:
			$Hand.card_drawn(card)
	else:
		print("Full Hand")

func _on_build_pile_play_card(pile_node):
	if $Hand.selected_card != null:
		pile_node.add_card($Hand.selected_card.card)
		$Hand.remove_selected()
	
