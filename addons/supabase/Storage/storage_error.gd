class_name SupabaseStorageError
extends RefCounted

var _error: Dictionary
var status_code: String = "empty"
var error: String = "empty"
var message: String = "empty"

func _init(dictionary: Dictionary={}) -> void:
	_error = dictionary
	if not _error.is_empty():
			status_code = _error.get("statusCode", "empty") as String
			error = _error.get("error", "empty")
			message = _error.get("message", "empty")

func _to_string():
	return "%s >> %s: %s" % [status_code, error, message]
