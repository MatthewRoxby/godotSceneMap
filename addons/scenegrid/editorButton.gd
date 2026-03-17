@tool
extends Button

@export var icon_name : String = "" : set = set_icon_name

func set_icon_name(s : String):
	icon_name = s
	icon = EditorInterface.get_editor_theme().get_icon(icon_name, "EditorIcons")
