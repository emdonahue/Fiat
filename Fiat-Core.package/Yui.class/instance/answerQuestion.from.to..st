questions
answerQuestion: aStep from: startS to: nextS
	| obj type |
	^ startS
		carCdrIn: [ :worldS :kbS | 
			obj := SKVar tag: #whatObj.
			type := SKVar tag: #whatType.
			(self entity: obj type: type in: worldS) & (aStep === (#say cons: obj cons: #is cons: type cons)) & (kbS nembero: (#type cons: obj cons: type cons))
				& (nextS === (worldS cons: ((#type cons: obj cons: type cons) cons: kbS))) ].