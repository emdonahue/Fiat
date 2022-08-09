DEP-facts
sayFact: aStep from: startS to: nextS
	^  (self sayType: aStep from: startS to: nextS) | (self sayYes: aStep from: startS to: nextS) | (self sayLocation: aStep from: startS to: nextS).