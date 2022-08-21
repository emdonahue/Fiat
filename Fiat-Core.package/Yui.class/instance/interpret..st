mant
interpret: anInput
	anInput isArray ifTrue: [ ^ self interpret: anInput asConsR ].
	anInput car isCons & anInput cdr isEmpty ifTrue: [ ^ self evalCommand: anInput car ].