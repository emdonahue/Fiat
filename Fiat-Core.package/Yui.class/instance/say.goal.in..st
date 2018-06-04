speech
say: anUtterance goal: aGoal in: aWorld
	^ (self sayCome: anUtterance goal: aGoal in: aWorld) | (self sayBring: anUtterance goal: aGoal in: aWorld) | (self sayDrop: anUtterance goal: aGoal in: aWorld)