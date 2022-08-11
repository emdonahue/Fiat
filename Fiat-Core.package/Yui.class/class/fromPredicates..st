instance creation
fromPredicates: preds
	| vars |
	vars := Dictionary new.
	^ self new knowledgebase: 
		(preds asConsR collect: [ :p | 
			p first = #rule ifTrue: [ 
				p collectR: [ :a | 
					(a isSymbol and: [ a first isUppercase ])
						ifTrue: [ vars at: a ifAbsentPut: [ SKVar tag: a ]]
						ifFalse: a ]]
				ifFalse: p]).