extends Area2D

var pile = {"1": 0, "2": 0, "3": 0, "4": 0, "5": 0, "6": 0, "7": 0, "8": 0, "9": 0, "10": 0, "11": 0, "0": 0, "skipBo": 0}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = str(calculate_size())

func calculate_size():
	var size = 0
	for key in pile.keys():
		size += pile[key]
	return size

func ingest(cards):
	for card in cards:
		pile[card] += 1
	var size = calculate_size()
	$Label.text = str(size)
	if size > 0:
		$MeshInstance2D.visible = true

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event.is_pressed():
		if event.is_action("Right_Click"):
			print(pile)
		
