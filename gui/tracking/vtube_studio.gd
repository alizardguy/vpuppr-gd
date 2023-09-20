extends "res://gui/tracking/tracking_gui.gd"

#-----------------------------------------------------------------------------#
# Builtin functions
#-----------------------------------------------------------------------------#

func _ready() -> void:
	var address := %Address
	var port := %Port
	
	%Start.pressed.connect(func() -> void:
		started.emit(AbstractTracker.Trackers.VTUBE_STUDIO, {
			address = address.text,
			port = port.text.to_int(),
		})
	)

#-----------------------------------------------------------------------------#
# Private functions
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Public functions
#-----------------------------------------------------------------------------#