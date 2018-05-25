initialization
initialize
	super initialize.
	rules := self buildRules.
	state := Cons empty.