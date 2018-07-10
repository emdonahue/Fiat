planning
primitiveAct: aStep by: anActor from: startS to: nextS rules: theRules
	^ (theRules act: (anActor cons: aStep) from: startS to: nextS)