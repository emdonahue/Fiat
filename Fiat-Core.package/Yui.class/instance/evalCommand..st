mant
evalCommand: aCommand
	aCommand car = #define ifTrue: [ ^ self addPredicates: aCommand cdr cons ].