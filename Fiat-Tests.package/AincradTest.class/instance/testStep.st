step
testStep
	| gotSword |
	gotSword := [ :nxt | world act: #(player1 get sword1) from: world state to: nxt rules: world rules ] asGoal run first first.
	self assert: (gotSword includes: #(inventory player1 sword1) asConsTree).