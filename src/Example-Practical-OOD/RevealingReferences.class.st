Class {
	#name : #RevealingReferences,
	#superclass : #Object,
	#instVars : [
		'wheels'
	],
	#category : #'Example-Practical-OOD'
}

{ #category : #'instance creation' }
RevealingReferences class >> data: aData [
	^ self new setWheels: aData
]

{ #category : #calculating }
RevealingReferences >> diameters [
	^ wheels collect: [ :wheel | wheel diameter ]
]

{ #category : #private }
RevealingReferences >> setWheels: aData [
	wheels := self wheelify: aData
]

{ #category : #private }
RevealingReferences >> wheelify: aData [
	^ aData collect: [ :cell | Wheel rim: (cell at: 1) tire: (cell at: 2) ]
]
