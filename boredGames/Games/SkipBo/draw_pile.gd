extends Area2D

signal card_drawn(card: String)

var deck = {"1": 12, "2": 12, "3": 12, "4": 12, "5": 12, "6": 12, "7": 12, "8": 12, "9": 12, "10": 12, "11": 12, "12": 12, "skipBo": 18}
var deck_size = 162


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		if event.is_action("Click"):
			draw_card()
		elif event.is_action("Right_Click"):
			print(calculate_size())
		
func draw_card():
	var card = ""
	while card == "":
		var key = deck.keys().pick_random()
		if deck[key] > 0:
			card = key
			deck[key] -= 1
	card_drawn.emit(card)
	print(card)

func calculate_size():
	var size = 0
	for key in deck.keys():
		size += deck[key]
	return size
		
	
	
	
	
