interpreting
lexSentence: aSentence o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		aSentence carCdro: [ :a :d | 
			aLex carCdro: [ :a2 :d2 |
				{self lexWord: a o: a2.
				self lexSentence: d o: d2}]]} conde.