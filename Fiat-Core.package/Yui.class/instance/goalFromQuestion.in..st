questions
goalFromQuestion: aQuestion in: aWorld
	^ [ :answer | 
	(self askWhere: aQuestion answer: answer in: aWorld)
		| (self askWhat: aQuestion answer: answer in: aWorld) | (self askHow: aQuestion answer: answer in: aWorld) ] asGoal.