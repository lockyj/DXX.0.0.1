extends Control

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/lobby.tscn")

func _on_settings_button_pressed():
	# 暂无效果
	pass

func _on_quit_button_pressed():
	get_tree().quit()
