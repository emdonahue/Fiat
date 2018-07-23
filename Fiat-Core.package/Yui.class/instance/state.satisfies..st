planning
state: aState satisfies: endGoal
	^ aState carCdrIn: [ :worldS :kbS | 
		endGoal carCdrIn: [ :worldG :kbG |
		worldS subseto: worldG ] ].