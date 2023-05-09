extends GameWorldState


var next_state = "Menu"
var transition_ui: Control

func _ready():
	$Timer.connect("timeout", self, "_on_timeout")

func enter(msg:={}):
	transition_ui = owner.ui_root.get_node("TransitionUI")
	transition_ui.visible = true
	if msg.has("next_state"):
		next_state = msg.next_state
	$Timer.start()

func exit():
	transition_ui.visible = false

func _on_timeout():
	state_machine.transition_to(next_state)
