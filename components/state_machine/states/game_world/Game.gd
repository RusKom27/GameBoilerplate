extends GameWorldState

func enter(msg := {}):
	owner.ui_root.get_node("GameUI").visible = true

func exit():
	owner.ui_root.get_node("GameUI").visible = false
