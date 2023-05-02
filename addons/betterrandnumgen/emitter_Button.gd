@tool
extends Button

const Generator = preload("res://addons/betterrandnumgen/calc_random.gd") #by importing Generator, now have access to the Class BetterRandNumGen from the file.
var numbergen = BetterRandNumGen.new()

func _ready():
	pass

func _on_ready():
	#$Button.connect("pressed", _on_pressed_CreateNames())
	#$Button.connect("pressed", _on_pressed_CopyName())
	pass

func _on_pressed_CreateNum():
	var v_microSecsStart = Time.get_ticks_usec()	#eg. 308288936
	var new_number1 = numbergen.randi() #gen_rand_array()
	var new_number2 = numbergen.randf()
	var v_microSecsEnd = Time.get_ticks_usec()
	print("Time to complete: "+str(v_microSecsEnd-v_microSecsStart)+" microseconds.")

	#print(new_number, " output to screen") #disabled after initial test. Don't need feeds going to the 'output' status message once the plugin works correctly.
	%LineEdit_item_1.text = str(new_number1)
	%LineEdit_item_2.text = str(new_number2)
	%LineEdit_item_3.text = ""
	%LineEdit_item_4.text = ""
	%LineEdit_item_5.text = ""
	%LineEdit_item_6.text = ""
	pass

func _on_pressed_randi():
	#var v_microSecsStart = Time.get_ticks_usec()	
	var new_number = numbergen.randi() 
	#var v_microSecsEnd = Time.get_ticks_usec()
	#print("Time to complete: "+str(v_microSecsEnd-v_microSecsStart)+" microseconds. Final Output: "+str(new_number))
	%LineEdit_item_1.text = str(new_number)

func _on_pressed_randf():
	#var v_microSecsStart = Time.get_ticks_usec()	
	var new_number = numbergen.randf() 
	#var v_microSecsEnd = Time.get_ticks_usec()
	#print("Time to complete: "+str(v_microSecsEnd-v_microSecsStart)+" microseconds. Final Output: "+str(new_number))
	%LineEdit_item_2.text = str(new_number)
	
func _on_pressed_ManyDigits():
	#var v_microSecsStart = Time.get_ticks_usec()
	var new_number = numbergen.generate_digits(420)
	#var v_microSecsEnd = Time.get_ticks_usec()
	#print("Time to complete: "+str(v_microSecsEnd-v_microSecsStart)+" microseconds. Final Output ( "+str(new_number.length())+" digits ): "+str(new_number))
	%LineEdit_item_3.text = str(new_number)
	
	
func _on_pressed_randi_range1():
	var new_number = numbergen.randi_range(1000, 1010)
	%LineEdit_item_4.text = str(new_number)
	
func _on_pressed_CopyName6():
	print("Attempted to copy name 6")
	##DisplayServer.clipboard_set(%LineEdit_Name6.text)
