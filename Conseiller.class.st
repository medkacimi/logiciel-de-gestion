Class {
	#name : 'Conseiller',
	#superclass : 'Object',
	#instVars : [
		'nom',
		'identifiant',
		'ventes'
	],
	#category : 'Gestion meubles',
	#package : 'Gestion meubles'
}

{ #category : 'as yet unclassified' }
Conseiller >> ajouterVente: uneVente [
    ventes add: uneVente.
    ^ self
]

{ #category : 'as yet unclassified' }
Conseiller >> calculCommissionTotale [
    "Calcule une commission de 10% sur le montant total des ventes"
    ^ (ventes sum: [ :vente | vente montantTotal ] ifEmpty: [ 0 ]) * 0.1

]

{ #category : 'accessing' }
Conseiller >> identifiant [

	^ identifiant
]

{ #category : 'accessing' }
Conseiller >> identifiant: anObject [

	identifiant := anObject
]

{ #category : 'initialization' }
Conseiller >> initialize [
    super initialize.
    ventes := OrderedCollection new
]

{ #category : 'accessing' }
Conseiller >> nom [

	^ nom
]

{ #category : 'accessing' }
Conseiller >> nom: anObject [

	nom := anObject
]

{ #category : 'accessing' }
Conseiller >> ventes [

	^ ventes
]

{ #category : 'accessing' }
Conseiller >> ventes: anObject [

	ventes := anObject
]
