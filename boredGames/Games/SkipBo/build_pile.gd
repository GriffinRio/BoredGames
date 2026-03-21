extends Area2D

signal play_card(pile_node)

var card_pile = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		if event.is_action("Click"):
			play_card.emit(get_node("."))
		if event.is_action("Right_Click"):
			print(card_pile)

func add_card(card):
	card_pile.append(card)
	update_displayed_card()

func update_displayed_card():
	$Label.text = card_pile.back()
