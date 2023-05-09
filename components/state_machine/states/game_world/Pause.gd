extends GameWorldState

onready var pause_ui: Control;

func enter(msg := {}):
	pause_ui = owner.ui_root.get_node("PauseUI")
	pause_ui.visible = true

func exit():
	pause_ui.visible = false
