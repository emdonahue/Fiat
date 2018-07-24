questions
testWhatNothing
	| y |
	y := yui processUtterance: #(what nothing) asCons in: world.
	self assert: yui kb size equals: 6.
	self assert: y goal equals: Cons empty cons.
	self assert: y kb size equals: 6.
	self assert: (y plan: world) equals: Cons empty.