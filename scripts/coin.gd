extends Area2D

@onready var game_manager: Node = %"Game Manager"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point();
	print("Coin acquired: +1");
	#queue_free();
	animation_player.play("pickup");
