rules
checkRuleUniqueness: ruleHead in: aKB
	^ {aKB isEmptyo.
		aKB carCdro: [ :pred :rest |
			{pred =/= ruleHead. self checkRuleUniqueness: ruleHead in: rest}]} conde.