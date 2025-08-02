extends Area2D

var target_position = Vector2()
var move_speed = 800.0
var keyboard_speed = 500.0

func _ready():
	target_position = position

func _process(delta):
	# 키보드 입력 처리
	if Input.is_action_pressed("ui_left"):
		target_position.x -= keyboard_speed * delta
		target_position.x = clamp(target_position.x, 40, 680)
	elif Input.is_action_pressed("ui_right"):
		target_position.x += keyboard_speed * delta
		target_position.x = clamp(target_position.x, 40, 680)
	
	# 목표 위치로 이동
	if position.distance_to(target_position) > 5:
		position = position.move_toward(target_position, move_speed * delta)

func _input(event):
	# 마우스 클릭 및 터치 입력
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		target_position.x = clamp(event.position.x, 40, 680)
	elif event is InputEventScreenTouch and event.pressed:
		target_position.x = clamp(event.position.x, 40, 680)
	elif event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		target_position.x = clamp(event.position.x, 40, 680)