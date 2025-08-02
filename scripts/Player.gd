extends Area2D

var target_position = Vector2()
var move_speed = 800.0
var keyboard_speed = 500.0

func _ready():
	target_position = position

func _process(delta):
	# 키보드 입력 처리 - 상하좌우
	var input_vector = Vector2.ZERO
	
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	
	# 대각선 이동 시 속도 정규화
	if input_vector.length() > 0:
		input_vector = input_vector.normalized()
		target_position += input_vector * keyboard_speed * delta
		
		# 화면 경계 제한
		target_position.x = clamp(target_position.x, 40, 680)
		target_position.y = clamp(target_position.y, 40, 1240)
	
	# 목표 위치로 이동
	if position.distance_to(target_position) > 5:
		position = position.move_toward(target_position, move_speed * delta)

func _input(event):
	# 마우스 클릭 및 터치 입력 - 클릭한 위치로 이동
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		target_position = Vector2(
			clamp(event.position.x, 40, 680),
			clamp(event.position.y, 40, 1240)
		)
	elif event is InputEventScreenTouch and event.pressed:
		target_position = Vector2(
			clamp(event.position.x, 40, 680),
			clamp(event.position.y, 40, 1240)
		)
	elif event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		target_position = Vector2(
			clamp(event.position.x, 40, 680),
			clamp(event.position.y, 40, 1240)
		)