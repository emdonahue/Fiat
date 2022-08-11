rules
matchRuleBodies: ruleBodies in: aKB
	^ {ruleBodies isEmptyo.
		ruleBodies carCdro: [ :body :rest |
			{aKB membero: body. self matchRuleBodies: rest in: aKB}]} conde.