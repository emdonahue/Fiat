questions
askWhere: aQuestion answer: anAnswer in: aWorld
	^ aQuestion car: #where cdrIn: [ :obj | (aWorld state membero: (#room cons: anAnswer cons: obj)) | 
		
		(aWorld state membero: (#exit cons: anAnswer cons: obj)) ].