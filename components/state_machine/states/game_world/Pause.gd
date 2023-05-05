extends GameWorldState


func enter(msg := {}):
	owner.ui_root.get_node("PauseUI").visible = true

func exit():
	owner.ui_root.get_node("PauseUI").visible = false
