Class {
	#name : 'MeubleBuilder',
	#superclass : 'Object',
	#instVars : [
		'meuble'
	],
	#category : 'Gestion meubles',
	#package : 'Gestion meubles'
}

{ #category : 'as yet unclassified' }
MeubleBuilder >> ajouterMateriau: unMateriau [
    meuble ajouterMateriau: unMateriau.
    ^ self 
]

{ #category : 'as yet unclassified' }
MeubleBuilder >> construire [
    ^ meuble  
]

{ #category : 'as yet unclassified' }
MeubleBuilder >> dimensions: largeur hauteur: hauteur profondeur: profondeur [
    meuble largeur: largeur;
          hauteur: hauteur;
          profondeur: profondeur.
    ^ self 
]

{ #category : 'initialization' }
MeubleBuilder >> initialize [
    super initialize.
    meuble := Meuble new 
]

{ #category : 'accessing' }
MeubleBuilder >> meuble [

	^ meuble
]

{ #category : 'accessing' }
MeubleBuilder >> meuble: anObject [

	meuble := anObject
]

{ #category : 'accessing' }
MeubleBuilder >> prix: unPrix [
    meuble prix: unPrix.
    ^ self 
]

{ #category : 'accessing' }
MeubleBuilder >> reference: uneReference [
    meuble reference: uneReference.
    ^ self 
]
