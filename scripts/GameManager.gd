extends Node2D

var score = 0
var game_over = false
var enemy_speed = 200.0
var speed_increase_rate = 10.0

# 적의 이동 방향과 속도
var enemy_direction = Vector2()
var enemy_spawn_side = 0  # 0: 위, 1: 오른쪽, 2: 아래, 3: 왼쪽

@onready var enemy = $Enemy
@onready var score_label = $ScoreLabel
@onready var game_over_panel = $GameOverPanel
@onready var final_score_label = $GameOverPanel/FinalScoreLabel

func _ready():
	randomize()
	reset_enemy_position()

func _process(delta):
	if not game_over:
		# 적을 설정된 방향으로 이동
		enemy.position += enemy_direction * enemy_speed * delta
		
		# 화면 밖으로 나가면 리셋
		if is_enemy_out_of_bounds():
			reset_enemy_position()
			add_score(1)
		
		enemy_speed += speed_increase_rate * delta

func is_enemy_out_of_bounds():
	return enemy.position.x < -50 or enemy.position.x > 770 or \
		   enemy.position.y < -50 or enemy.position.y > 1330

func reset_enemy_position():
	# 랜덤하게 4방향 중 하나에서 생성
	enemy_spawn_side = randi() % 4
	
	match enemy_spawn_side:
		0:  # 위에서 아래로
			enemy.position.x = randf_range(50, 670)
			enemy.position.y = -50
			enemy_direction = Vector2(0, 1)
		1:  # 오른쪽에서 왼쪽으로
			enemy.position.x = 770
			enemy.position.y = randf_range(50, 1230)
			enemy_direction = Vector2(-1, 0)
		2:  # 아래에서 위로
			enemy.position.x = randf_range(50, 670)
			enemy.position.y = 1330
			enemy_direction = Vector2(0, -1)
		3:  # 왼쪽에서 오른쪽으로
			enemy.position.x = -50
			enemy.position.y = randf_range(50, 1230)
			enemy_direction = Vector2(1, 0)
	
	# 대각선 이동도 추가 (50% 확률)
	if randf() > 0.5:
		enemy_direction = enemy_direction.rotated(randf_range(-PI/4, PI/4))
		enemy_direction = enemy_direction.normalized()

func add_score(points):
	score += points
	score_label.text = "Score: " + str(score)

func _on_enemy_area_entered(area):
	if area.name == "Player":
		game_over = true
		game_over_panel.visible = true
		final_score_label.text = "Final Score: " + str(score)

func _on_restart_button_pressed():
	get_tree().reload_current_scene()