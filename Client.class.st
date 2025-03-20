Class {
	#name : 'Client',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'adresse',
		'achats'
	],
	#category : 'Gestion meubles',
	#package : 'Gestion meubles'
}

{ #category : 'accessing' }
Client >> achats [

	^ achats
]

{ #category : 'accessing' }
Client >> achats: anObject [

	achats := anObject
]

{ #category : 'accessing' }
Client >> adresse [

	^ adresse
]

{ #category : 'accessing' }
Client >> adresse: anObject [

	adresse := anObject
]

{ #category : 'as yet unclassified' }
Client >> ajouterAchat: uneVente [
    achats add: uneVente.
    ^ self
]

{ #category : 'as yet unclassified' }
Client >> calculRemise [
    "Calcule une remise de 3% sur le total des achats précédents"
    ^ (self totalAchatsPrecedents * 0.03) asFloat
]

{ #category : 'initialization' }
Client >> initialize [
    super initialize.
    achats := OrderedCollection new
]

{ #category : 'accessing' }
Client >> nom [

	^ nom
]

{ #category : 'accessing' }
Client >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
Client >> totalAchatsPrecedents [
    ^ achats sum: [ :achat | achat montantTotal ] ifEmpty: [ 0 ]

]
