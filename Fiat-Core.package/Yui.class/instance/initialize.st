initialization
initialize
	super initialize.
	self clearGoal.
	name := #yui.
	history := Cons empty.
	beliefs := Cons empty.
	knowledgebase := Cons empty.
	timestamp := 0.