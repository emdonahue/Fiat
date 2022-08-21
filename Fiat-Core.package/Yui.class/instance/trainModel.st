mant
trainModel
	| c |
	c := SKCategorical new maximize: (SKSparseSufficientStatistics new statistics: ((((knowledgebase select: [ :k | k first = #lexicon ]) collect: [ :k | k cdr -> 0 ])) inject: Dictionary new into: [ :d :v | d add: v; yourself ])).
	model := c.