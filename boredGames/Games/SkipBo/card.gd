extends Area2D

signal card_selected(card_node)
var card = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = card

func selected():
	$Outline.visible = true

func unselected():
	$Outline.visible = false

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if(event.is_pressed()):
		if(event.is_action("Click")):
			card_selected.emit(get_node("."))
			
