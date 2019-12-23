Class {
	#name : #Wheel,
	#superclass : #Object,
	#instVars : [
		'rim',
		'tire'
	],
	#category : #'Example-Practical-OOD'
}

{ #category : #'instance creation' }
Wheel class >> rim: rimInteger tire: tireFloat [
	^ self new setRim: rimInteger tire: tireFloat 
]

{ #category : #'as yet unclassified' }
Wheel >> diameter [
	^ rim + (tire * 2)
]

{ #category : #accessing }
Wheel >> rim [
	^ rim 
]

{ #category : #private }
Wheel >> setRim: rimInteger tire: tireFloat [
	rim := rimInteger .
	tire := tireFloat .
	^ self
]

{ #category : #accessing }
Wheel >> tire [
	^ tire
]
