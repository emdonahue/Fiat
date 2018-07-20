questions
goalFromQuestion: aQuestion in: aWorld
	^ [ :answer | 
	(self askWhere: aQuestion answer: answer in: aWorld) | (self askWhat: aQuestion answer: answer in: aWorld) | (self askHow: aQuestion answer: answer in: aWorld)
		| (self askIsA: aQuestion answer: answer in: aWorld) | (self askIsIn: aQuestion answer: answer in: aWorld) | (self askWhy: aQuestion answer: answer in: aWorld)
		| (self askWho: aQuestion answer: answer in: aWorld) | (self askWhen: aQuestion answer: answer in: aWorld)] asGoal.