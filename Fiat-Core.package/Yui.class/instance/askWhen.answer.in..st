DEP - questions
askWhen: aQuestion answer: anAnswer in: aWorld
	^ aQuestion
		car: #when
		cdrIn: [ :prop | 
			[ :plan :action | 
			(self hierarchicalPlan: plan actor: name state: (aWorld state cons: Cons empty) goal: prop cons cons rules: aWorld) & (plan lasto: action)
				& (anAnswer === (name cons: action)) ] ].