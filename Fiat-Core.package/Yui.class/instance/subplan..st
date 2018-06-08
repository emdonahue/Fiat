subplanning
subplan: aWorld
	^ (self makesubplan: aWorld) run ifNotEmpty: [ :plans | plans car car ]