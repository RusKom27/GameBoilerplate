extends GameWorldState

onready var game_ui: Control;

func enter(msg := {}):
	game_ui = owner.ui_root.get_node("GameUI")
	game_ui.visible = true

func exit():
	game_ui.visible = false
