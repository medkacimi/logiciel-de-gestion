Class {
	#name : 'Jeudesssai',
	#superclass : 'Object',
	#category : 'Gestion meubles',
	#package : 'Gestion meubles'
}

{ #category : 'as yet unclassified' }
Jeudesssai class >> jeudessai1 [
"1. Création d'un meuble"
| meuble |
meuble := Meuble new.
meuble reference: 'REF001'.
meuble prix: 1500.
Transcript show: 'Meuble créé avec succès'; cr.
Transcript show: 'Référence: ', meuble reference; cr.
Transcript show: 'Prix: ', meuble prix asString; cr.
]

{ #category : 'as yet unclassified' }
Jeudesssai class >> jeudessai2 [

"Test avec client"
| meuble client |
meuble := Meuble new.
meuble reference: 'REF001'.
meuble prix: 1500.

client := Client new.
client nom: 'Dupont'.

Transcript show: 'Meuble créé avec succès'; cr.
Transcript show: 'Client créé avec succès'; cr.
]

{ #category : 'as yet unclassified' }
Jeudesssai class >> jeudessai3 [

"Test avec vente"
| meuble client vente |
meuble := Meuble new.
meuble reference: 'REF001'.
meuble prix: 1500.

client := Client new.
client nom: 'Dupont'.

vente := Vente new.
vente client: client.
vente ajouterMeuble: meuble.

Transcript show: 'Vente créée avec succès'; cr.
Transcript show: 'Montant total: ', vente montantTotal asString; cr.
]

{ #category : 'as yet unclassified' }
Jeudesssai class >> jeudessai4 [
"Test du Builder"
| builder meuble |
builder := MeubleBuilder new.
builder reference: 'REF001'.
builder prix: 1500.
meuble := builder construire.

Transcript show: 'Meuble créé avec succès'; cr.
Transcript show: 'Référence: ', meuble reference; cr.
Transcript show: 'Prix: ', meuble prix asString; cr.
]
