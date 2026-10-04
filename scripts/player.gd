extends CharacterBody2D

@export var speed: float = 420.0
@export var jump_force: float = -640.0
@export var gravity: float = 1800.0

func _physics_process(delta: float) -> void:
  velocity.y += gravity * delta
    if Input.is_action_just_pressed('jump') and is_on_floor():
        velocity.y = jump_force
          velocity.x = speed
            move_and_slide()
            
