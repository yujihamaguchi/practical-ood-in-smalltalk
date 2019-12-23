Class {
	#name : #ObscuringReferences,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'Example-Practical-OOD'
}

{ #category : #private }
ObscuringReferences >> data: aData [
	data := aData
]

{ #category : #calculating }
ObscuringReferences >> diameters [
	^ data collect: [ :cell | (cell at: 1) + ((cell at: 2) * 2) ]
]
