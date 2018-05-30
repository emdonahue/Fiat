tests-yui
testSay
	| playerT aiT |
	playerT := world admin: #player1 act: #(say get sword1).
	self assert: playerT world ai goal equals: #(#(inventory yui sword1)) asConsTree cons.
	aiT := playerT world runAI.
	self assert: (aiT world state includes: #(inventory yui sword1) asConsTree).
	self assert: aiT world ai goal equals: Cons empty cons