questions
askIsIn: aQuestion answer: anAnswer in: aWorld
	^ aQuestion match: #(is ? in ?) o: [ :obj :room | ((aWorld state membero: (#room cons: room cons: obj cons)) & (anAnswer === #yes)) | ((aWorld state nembero: (#room cons: room cons: obj cons)) & (anAnswer === #no)) ].