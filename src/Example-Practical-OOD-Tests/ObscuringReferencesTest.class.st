Class {
	#name : #ObscuringReferencesTest,
	#superclass : #TestCase,
	#category : #'Example-Practical-OOD-Tests'
}

{ #category : #tests }
ObscuringReferencesTest >> testDiameters [
	| initialData |
	initialData := #(#(622 20) #(622 23) #(559 30) #(559 40)).
	self
		assert: (ObscuringReferences new data: initialData) diameters
		equals: #(662 668 619 639)
]
