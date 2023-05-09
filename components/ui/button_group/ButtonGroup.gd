extends HBoxContainer


func _ready():
	$PauseButton.connect("pressed", self, "_on_pause_pressed")
	$MenuButton.connect("pressed", self, "_on_menu_pressed")
	$GameButton.connect("pressed", self, "_on_game_pressed")

func _on_pause_pressed():
	if owner.state_machine.state.name != "Pause":
		owner.state_machine.transition_to("Transition", {"next_state": "Pause"})

func _on_menu_pressed():
	if owner.state_machine.state.name != "Menu":
		owner.state_machine.transition_to("Transition", {"next_state": "Menu"})

func _on_game_pressed():
	if owner.state_machine.state.name != "Game":
		owner.state_machine.transition_to("Transition", {"next_state": "Game"})
