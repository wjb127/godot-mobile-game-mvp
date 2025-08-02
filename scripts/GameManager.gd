extends Node2D

var score = 0
var game_over = false
var enemy_speed = 200.0
var speed_increase_rate = 10.0

@onready var enemy = $Enemy
@onready var score_label = $ScoreLabel
@onready var game_over_panel = $GameOverPanel
@onready var final_score_label = $GameOverPanel/FinalScoreLabel

func _ready():
	randomize()
	reset_enemy_position()

func _process(delta):
	if not game_over:
		enemy.position.y += enemy_speed * delta
		
		if enemy.position.y > 1300:
			reset_enemy_position()
			add_score(1)
		
		enemy_speed += speed_increase_rate * delta

func reset_enemy_position():
	enemy.position.x = randf_range(50, 670)
	enemy.position.y = -50

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