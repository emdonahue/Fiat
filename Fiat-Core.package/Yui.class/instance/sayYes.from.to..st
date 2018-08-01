facts
sayYes: aStep from: startS to: nextS
	| fact |
	fact := SKVar tag: #yesFact.
	^ startS
		carCdrIn: [ :worldS :kbS | 
			history
				match: #(#(? #'.' ?) #'.' ?)
				o: [ :act :st :_ | 
					((act match: #(player1 say is ? a ?) o: [ :obj :type | (self entity: obj type: type in: worldS) & (fact === (#type cons: obj cons: type cons)) ]) | ((act match: #(player1 say is ? in ?) o: [ :obj :room | (worldS membero: (#room cons: room cons: obj cons)) & (fact === (#room cons: room cons: obj cons)) ])))
						& (aStep === (#say cons: #yes cons) & (kbS nembero: fact) & (nextS === (worldS cons: (fact cons: kbS)))) ] ].