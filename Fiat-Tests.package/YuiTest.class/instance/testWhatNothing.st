questions
testWhatNothing
	| y kbSize |
	kbSize := yui knowledgebase size.
	y := yui processUtterance: #(what nothing) asCons in: world.
	self assert: y goal equals: Cons empty cons.
	self assert: y knowledgebase size equals: kbSize.
	self assert: (y plan: world) equals: Cons empty.