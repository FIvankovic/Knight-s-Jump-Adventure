extends Area2D

@onready var timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You have died.")
	Engine.time_scale = 0.6;
	body.get_node("CollisionShape2D").queue_free();
	timer.start();


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0;
	get_tree().reload_current_scene();
