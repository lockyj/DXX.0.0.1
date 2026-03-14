extends Control

@onready var character_panel = $CharacterPanel
@onready var inventory_panel = $InventoryPanel
@onready var settings_panel = $SettingsPanel

func _ready():
	# 初始状态隐藏所有面板
	character_panel.hide()
	inventory_panel.hide()
	settings_panel.hide()

# --- 大厅按钮事件 ---
func _on_character_button_pressed():
	character_panel.show()

func _on_inventory_button_pressed():
	inventory_panel.show()

func _on_enter_game_button_pressed():
	get_tree().change_scene_to_file("res://scenes/in_game.tscn")

func _on_settings_button_pressed():
	settings_panel.show()

# --- 角色面板事件 ---
func _on_character_close_button_pressed():
	character_panel.hide()

# --- 背包面板事件 ---
func _on_inventory_close_button_pressed():
	inventory_panel.hide()

# --- 设置面板事件 ---
func _on_settings_close_button_pressed():
	settings_panel.hide()

func _on_settings_quit_button_pressed():
	get_tree().quit()
