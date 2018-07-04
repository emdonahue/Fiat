planning-dep
planAct: step actor: anActor from: startS to: endS in: aWorld
	^ aWorld act: (anActor cons: step) from: startS to: endS