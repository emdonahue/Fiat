speaking
processUtterance: anUtterance in: aWorld

		^ self copy
				goal: (self goalFromUtterance: anUtterance in: aWorld)