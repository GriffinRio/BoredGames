extends Area2D

signal drew_cards

var deck = {"1": 12, "2": 12, "3": 12, "4": 12, "5": 12, "6": 12, "7": 12, "8": 12, "9": 12, "10": 12, "11": 12, "12": 12, "skipBo": 18}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		if event.is_action("Click"):
			drew_cards.emit()
		elif event.is_action("Right_Click"):
			print(calculate_size())

func calculate_size():
	var size = 0
	for key in deck.keys():
		size += deck[key]
	return size
		
func fill_deck(used_cards: Dictionary):
	for key in used_cards.keys():
		deck[key] += used_cards[key]

func draw_cards(amount: int):
	if calculate_size() >= amount:
		var cards_drawn = []
		for i in range(amount): 
			var card = ""
			var keys = deck.keys()
			while card == "":
				var key = keys.pick_random()
				if deck[key] > 0:
					card = key
					deck[key] -= 1
				else:
					keys.erase(key)
			cards_drawn.append(card)
		return cards_drawn
	else:
		return "Not enough cards in the deck"
