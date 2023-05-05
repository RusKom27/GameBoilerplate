extends GameWorldState


var next_state = "Menu"

func _ready():
	$Timer.connect("timeout", self, "_on_timeout")

func enter(msg:={}):
	owner.ui_root.get_node("TransitionUI").visible = true
	if msg.has("next_state"):
		next_state = msg.next_state
	$Timer.start()

func exit():
	owner.ui_root.get_node("TransitionUI").visible = false

func _on_timeout():
	state_machine.transition_to(next_state)



