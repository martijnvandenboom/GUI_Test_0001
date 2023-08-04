extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	Globals.current_os = OS.get_name()
	
	self.text = Globals.current_os
	
	var output = []
	
	OS.execute( 'sw_vers', [], true, output, false, true )
	for line in output:
	  print( line )
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
