DEP-facts
sayLocation: aStep from: startS to: nextS
	| obj room fact |
	^ startS
		carCdrIn: [ :worldS :kbS | 
			obj := SKVar tag: #whatObj.
			room := SKVar tag: #whatType.
			fact := (#room cons: room cons: obj cons).
			(worldS membero: fact) & (aStep === (#say cons: obj cons: #in cons: room cons))
				& (kbS nembero: fact) & (nextS === (worldS cons: (fact cons: kbS))) ].