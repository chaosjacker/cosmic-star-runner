extends Area2D

@export var move_speed: float = -360.0

func _physics_process(delta: float) -> void:
  position.x += move_speed * delta
  if position.x < -120:
    queue_free()

func _on_body_entered(body: Node2D) -> void:
  if body.name == 'Player':
    GameManager.game_over()
