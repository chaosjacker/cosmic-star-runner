extends Area2D

@export var move_speed: float = -360.0
@export var score_value: int = 10

func _physics_process(delta: float) -> void:
  position.x += move_speed * delta
    if position.x < -120:
        queue_free()
        
        func _on_body_entered(body: Node2D) -> void:
          if body.name == 'Player':
              ScoreManager.add_score(score_value)
                  queue_free()
                  /collectible.gd
