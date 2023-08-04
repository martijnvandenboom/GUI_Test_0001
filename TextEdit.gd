extends TextEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	var output = []
	var exit_code
	
	if Globals.current_os == "OSX":
		
		exit_code = OS.execute("sw_vers", [], true, output)
		for line in output:
		  self.text = self.text + line
		  print (exit_code)
		  print (line)
		
		exit_code = OS.execute("system_profiler", ["SPHardwareDataType"], true, output)
		for line in output:
		  self.text = self.text + line
		  print (exit_code)
		  print (line)
	
		
	
	"""
	exit_code = OS.execute("ls", ["-al", "/Users/martijnvandenboom/Downloads/"], true, output)
	for line in output:
	  self.text = self.text + line
	  print (exit_code)
	  print (line)
	"""
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
