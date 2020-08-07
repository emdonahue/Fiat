accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				baseline: 'Cons' with: [ spec repository: 'github://emdonahue/Cons' ];
				baseline: 'Contracts' with: [ spec repository: 'github://emdonahue/Contracts' ];			
				package: 'Fiat-Core' with: [ spec requires: #('Cons' 'SmallKanren') ];
				package: 'Fiat-Tests' with: [ spec requires: #('Fiat-Core' 'SmallKanren' 'Cons' 'Contracts') ] ]