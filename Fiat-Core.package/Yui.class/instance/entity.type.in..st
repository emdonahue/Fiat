types
entity: anEntity type: aType in: aWorld
	^ (self isPlayer: anEntity in: aWorld) & (aType === #player) | ((self isItem: anEntity in: aWorld) & (aType === #item))
				| ((self isRoom: anEntity in: aWorld) & (aType === #room))