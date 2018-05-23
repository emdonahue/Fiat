as yet unclassified
adminRule: aRule remove: dList add: aList
	| b plus minus |
	b := SKVar new.
	plus := aRule === (#player1 cons: #+ cons: b) & dList isEmptyo & (aList === b cons).
	minus := aRule === (#player1 cons: #- cons: b) & aList isEmptyo & (dList === b cons).
	^ plus | minus