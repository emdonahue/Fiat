planning
answerQuestion: aStep from: startS to: nextS
	| room obj |
	^ startS
		carCdrIn: [ :worldS :kbS | 
			room := SKVar tag: #whatRoom.
			obj := SKVar tag: #whatObj.
			(worldS membero: (#room cons: room cons: obj cons)) & (aStep === (#say cons: obj cons: #is cons: #item cons))
				& (kbS nembero: (#type cons: obj cons: #item cons)) & (nextS === (worldS cons: ((#type cons: obj cons: #item cons) cons: kbS))) ].