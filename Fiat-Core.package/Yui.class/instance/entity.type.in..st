types
entity: anEntity type: aType in: aState
	^ 
			(self isPlayer: anEntity in: aState) & (aType === #player) | ((self isItem: anEntity in: aState) & (aType === #item))
				| ((self isRoom: anEntity in: aState) & (aType === #room))