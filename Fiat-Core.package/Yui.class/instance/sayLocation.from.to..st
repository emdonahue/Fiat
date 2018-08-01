facts
sayLocation: aStep from: startS to: nextS
	| obj room |
	^ startS
		carCdrIn: [ :worldS :kbS | 
			obj := SKVar tag: #whatObj.
			room := SKVar tag: #whatType.
			(worldS membero: (#room cons: room cons: obj cons)) & (aStep === (#say cons: obj cons: #in cons: room cons)) & (kbS nembero: (#room cons: room cons: obj cons))
				& (nextS === (worldS cons: ((#room cons: room cons: obj cons) cons: kbS))) ].