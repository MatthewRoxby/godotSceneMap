@tool
extends Control

var inspector : Control = null
var value

# Called when the node enters the scene tree for the first time.
func _enter_tree() -> void:
	inspector = EditorInspector.instantiate_property_editor(
		self,
		TYPE_STRING,
		"value",
		PropertyHint.PROPERTY_HINT_MULTILINE_TEXT,
		"",
		PROPERTY_USAGE_DEFAULT,
		true
	)
	add_child(inspector)
	inspector.custom_minimum_size.x = size.x

func _exit_tree() -> void:
	inspector.queue_free()
