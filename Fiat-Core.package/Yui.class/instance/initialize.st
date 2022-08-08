initialization
initialize
	super initialize.
	self clearGoal.
	name := #yui.
	history := Cons empty.
	beliefs := Cons empty.
	kb := Cons empty.
	timestamp := 0.