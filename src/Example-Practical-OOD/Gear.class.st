Class {
	#name : #Gear,
	#superclass : #Object,
	#instVars : [
		'chainring',
		'cog',
		'wheel'
	],
	#category : #'Example-Practical-OOD'
}

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger [
	^ self basicNew setChainring: chainringInteger cog: cogInteger
]

{ #category : #'instance creation' }
Gear class >> chainring: chainringInteger cog: cogInteger wheel: aWheel [
	^ self basicNew setChainring: chainringInteger cog: cogInteger wheel: aWheel
]

{ #category : #calculating }
Gear >> gearInches [
	^ self ratio * wheel diameter
]

{ #category : #calculating }
Gear >> ratio [
	^ (chainring / cog) asFloat 
]

{ #category : #initialization }
Gear >> setChainring: chainringNumber cog: cogNumber [
	chainring := chainringNumber.
	cog := cogNumber.
	^ self
]

{ #category : #private }
Gear >> setChainring: chainringNumber cog: cogNumber wheel: aWheel [
	chainring := chainringNumber.
	cog := cogNumber.
	wheel := aWheel .
	^ self
]
