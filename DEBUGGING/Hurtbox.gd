extends Area2D


func _on_area_entered(area: Area2D) -> void:
	pass ##cant remove it on the editor for some reason; does nothing atm

@export var AnimPlayer : AnimationPlayer
var clickable = false

func _on_mouse_entered() -> void:
	clickable = true

func _on_mouse_exited() -> void:
	clickable = false

##If mouse inside its hurtbox and you click it, then animation plays
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_mouseclick") and clickable == true:
		AnimPlayer.play("TakingEnemyDmg")
