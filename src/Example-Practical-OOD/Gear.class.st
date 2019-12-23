Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog'
	],
	#category : #'Example-Practical-OOD'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringNumber cog: cogNumber [
	^ self basicNew setChainring: chainringNumber cog: cogNumber
]

{ #category : #arithmetic }
Gear >> ratio [
	^ (chainring / cog) asFloat 
]

{ #category : #private }
Gear >> setChainring: chainringNumber cog: cogNumber [
	chainring := chainringNumber.
	cog := cogNumber.
	^ self
]
