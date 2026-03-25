extends Area2D

signal discard_clicked(pile_node)

var cards = []
var top_card = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func selected():
	$Outline.visible = true

func unselected():
	$Outline.visible = false

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		if event.is_action("Click"):
			discard_clicked.emit(get_node("."))
		elif event.is_action("Right_Click"):
			print(cards)

func add_discard(card):
	cards.append(card)
	top_card = card
	$Label.text = top_card 

func remove_top():
	cards.remove_at(-1)
