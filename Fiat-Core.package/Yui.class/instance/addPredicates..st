mant
addPredicates: somePreds
	^ self copy knowledgebase: (knowledgebase append: somePreds) force.