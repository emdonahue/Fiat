planning
primitiveAct: aStep by: anActor from: startS to: nextS rules: theRules
	^ startS carCdrIn: [ :worldS :kbS | | nextWorld |
		nextWorld := SKVar tag: #nextWorld.
	(theRules act: (anActor cons: aStep) from: worldS to: nextWorld)
	& (nextS === (nextWorld cons: kbS))]