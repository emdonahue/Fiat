questions
testWhatPlan
	| y |
	y := yui processUtterance: #(what sword1) asCons in: world.
	self assert: yui goal equals: Cons empty cons.
	self assert: (yui knowledgebase includes: #(type sword1 item) asCons).
	self deny: (y knowledgebase includes: #(type sword1 item) asCons).
	self assert: (y plan: world) equals: #(#(say sword1 is item)) asConsTree.