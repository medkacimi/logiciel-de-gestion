Class {
	#name : 'Meuble',
	#superclass : 'Object',
	#instVars : [
		'reference',
		'largeur',
		'hauteur',
		'profondeur',
		'prix',
		'materiaux'
	],
	#category : 'Gestion meubles',
	#package : 'Gestion meubles'
}

{ #category : 'as yet unclassified' }
Meuble >> ajouterMateriau: unMateriau [
    materiaux add: unMateriau.
    ^ self
]

{ #category : 'as yet unclassified' }
Meuble >> calculVolume [
    "Retourne le volume en cm³"
    ^ largeur * hauteur * profondeur
]

{ #category : 'accessing' }
Meuble >> hauteur [

	^ hauteur
]

{ #category : 'accessing' }
Meuble >> hauteur: anObject [

	hauteur := anObject
]

{ #category : 'initialization' }
Meuble >> initialize [
    super initialize.
    materiaux := OrderedCollection new

]

{ #category : 'accessing' }
Meuble >> largeur [

	^ largeur
]

{ #category : 'accessing' }
Meuble >> largeur: anObject [

	largeur := anObject
]

{ #category : 'accessing' }
Meuble >> materiaux [

	^ materiaux
]

{ #category : 'accessing' }
Meuble >> materiaux: anObject [

	materiaux := anObject
]

{ #category : 'accessing' }
Meuble >> prix [

	^ prix
]

{ #category : 'accessing' }
Meuble >> prix: anObject [

	prix := anObject
]

{ #category : 'accessing' }
Meuble >> profondeur [

	^ profondeur
]

{ #category : 'accessing' }
Meuble >> profondeur: anObject [

	profondeur := anObject
]

{ #category : 'accessing' }
Meuble >> reference [

	^ reference
]

{ #category : 'accessing' }
Meuble >> reference: anObject [

	reference := anObject
]
