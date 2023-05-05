class_name GameWorld
extends Node2D

onready var state_machine: StateMachine = get_node("StateMachine")
onready var ui_root: = get_node("Camera2D/UIRoot")

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
