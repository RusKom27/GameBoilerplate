extends GameWorldState

var menu_ui: Control;

func enter(msg := {}):
	menu_ui = owner.ui_root.get_node("MenuUI")
	menu_ui.visible = true

func exit():
	menu_ui.visible = false
	
