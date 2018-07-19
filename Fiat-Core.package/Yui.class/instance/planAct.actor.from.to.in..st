planning-dep
planAct: step actor: anActor from: startS to: endS in: aWorld
	self deprecated: 'See planning protocol'.
	^ aWorld act: (anActor cons: step) from: startS to: endS.