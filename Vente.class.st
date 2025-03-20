Class {
	#name : 'Vente',
	#superclass : 'Object',
	#instVars : [
		'date',
		'client',
		'conseiller',
		'meubles',
		'montantTotal'
	],
	#category : 'Gestion meubles',
	#package : 'Gestion meubles'
}

{ #category : 'as yet unclassified' }
Vente >> ajouterMeuble: unMeuble [
    meubles add: unMeuble.
    ^ self
]

{ #category : 'as yet unclassified' }
Vente >> calculCommission [
    "Calcule une commission de 10% sur le montant total"
    ^ (self montantTotal * 0.1) asFloat
]

{ #category : 'as yet unclassified' }
Vente >> calculMontantTotal [
    | totalMeubles remise |
    totalMeubles := meubles sum: [ :meuble | meuble prix ] ifEmpty: [ 0 ].
    remise := client ifNotNil: [ client calculRemise ] ifNil: [ 0 ].
    montantTotal := totalMeubles - remise.
    ^ montantTotal  
]

{ #category : 'accessing' }
Vente >> client [

	^ client
]

{ #category : 'accessing' }
Vente >> client: anObject [

	client := anObject
]

{ #category : 'accessing' }
Vente >> conseiller [

	^ conseiller
]

{ #category : 'accessing' }
Vente >> conseiller: anObject [

	conseiller := anObject
]

{ #category : 'accessing' }
Vente >> date [

	^ date
]

{ #category : 'accessing' }
Vente >> date: anObject [

	date := anObject
]

{ #category : 'as yet unclassified' }
Vente >> finaliser [
    "Finalise la vente en l'ajoutant aux achats du client et aux ventes du conseiller"
    client ifNotNil: [ client ajouterAchat: self ].
    conseiller ifNotNil: [ conseiller ajouterVente: self ].
    ^ self
]

{ #category : 'initialization' }
Vente >> initialize [
    super initialize.
    meubles := OrderedCollection new.
    date := Date today
]

{ #category : 'accessing' }
Vente >> meubles [

	^ meubles
]

{ #category : 'accessing' }
Vente >> meubles: anObject [

	meubles := anObject
]

{ #category : 'accessing' }
Vente >> montantTotal [
    ^ montantTotal ifNil: [ self calculMontantTotal ]
]

{ #category : 'accessing' }
Vente >> montantTotal: anObject [

	montantTotal := anObject
]
