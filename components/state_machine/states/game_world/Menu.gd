extends GameWorldState



func enter(msg := {}):
	owner.ui_root.get_node("MenuUI").visible = true

func exit():
	owner.ui_root.get_node("MenuUI").visible = false
	
