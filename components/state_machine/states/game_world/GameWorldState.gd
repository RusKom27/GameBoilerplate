class_name GameWorldState
extends State

var game_world: GameWorld

func _ready() -> void:
	yield(owner, "ready")
	print(owner)
	game_world = owner as GameWorld
	assert(game_world != null)
