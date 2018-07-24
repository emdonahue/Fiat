DEP - questions
ask: aQuery in: aWorld
	^ (self goalFromQuestion: aQuery asCons in: aWorld) run ifEmpty: 'I dont know' ifNotEmpty: [ :ans | ans first first ].