constative
sayYes: aStep from: startS to: nextS
	^ startS
		carCdrIn: [ :worldS :kbS | 
			history
				match: #(#(? #'.' ?) #'.' ?)
				o: [ :act :st :_ | 
					act
						match: #(player1 say is ? a ?)
						o: [ :obj :type | 
							(self entity: obj type: type in: worldS) & (aStep === (#say cons: #yes cons)) & (kbS nembero: (#type cons: obj cons: type cons))
								& (nextS === (worldS cons: ((#type cons: obj cons: type cons) cons: kbS))) ] ] ].