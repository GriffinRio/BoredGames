extends Area2D

signal play_card(pile_node)

var card_pile = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		if event.is_action("Click"):
			play_card.emit(get_node("."))
		if event.is_action("Right_Click"):
			print(card_pile)

func add_card(card):
	if(playable(card)):
		card_pile.append(card)
		update_displayed_card()
		return true
	else:
		return false

func update_displayed_card():
	if(card_pile.back() == "skipBo"):
		$Label.text = card_pile.back() + "\n(" + str(card_pile.size()) + ")"
	else:
		$Label.text = card_pile.back()

func playable(card):
	if card == "skipBo":
		return true
	elif (card_pile.size() + 1) == int(card):
		return true
	else:
		return false
	
