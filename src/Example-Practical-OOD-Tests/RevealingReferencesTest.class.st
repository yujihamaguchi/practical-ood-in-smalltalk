Class {
	#name : #RevealingReferencesTest,
	#superclass : #TestCase,
	#category : #'Example-Practical-OOD-Tests'
}

{ #category : #tests }
RevealingReferencesTest >> testDiameters [
	| initialData |
	initialData := #(#(622 20) #(622 23) #(559 30) #(559 40)).
	self
		assert: (RevealingReferences data: initialData) diameters
		equals: #(662 668 619 639)
]
