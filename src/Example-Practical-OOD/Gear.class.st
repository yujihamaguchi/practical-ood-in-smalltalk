Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog',
		'rim',
		'tire'
	],
	#category : #'Example-Practical-OOD'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringNumber cog: cogNumber [
	^ self basicNew setChainring: chainringNumber cog: cogNumber
]

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat [
	^ self basicNew setChainring: chainringInteger cog: cogInteger rim: rimInteger tire: tireFloat
]

{ #category : #arithmetic }
Gear >> gearInches [
	^ self ratio * (rim + (tire * 2))
]

{ #category : #arithmetic }
Gear >> ratio [
	^ (chainring / cog) asFloat 
]

{ #category : #private }
Gear >> setChainring: chainringNumber cog: cogNumber rim: rimInteger tire: tireFloat [
	chainring := chainringNumber.
	cog := cogNumber.
	rim := rimInteger.
	tire := tireFloat.
	^ self
]
