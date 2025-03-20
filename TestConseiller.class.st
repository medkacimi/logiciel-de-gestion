Class {
	#name : 'TestConseiller',
	#superclass : 'TestCase',
	#category : 'Gestion meubles - test',
	#package : 'Gestion meubles - test'
}

{ #category : 'tests' }
TestConseiller >> testCalculCommission [
    | conseiller vente1 vente2 |
    conseiller := Conseiller new .
    
    vente1 := Vente new 
        montantTotal: 1000;
        conseiller: conseiller;
        date: '2023-01-15' asDate.
    
    vente2 := Vente new
        montantTotal: 2000;
        conseiller: conseiller;
        date: '2023-02-20' asDate.
    
    conseiller ajouterVente: vente1.
    conseiller ajouterVente: vente2.
    
    "La commission devrait être de 10% du montant total des ventes"
    self assert: conseiller calculCommissionTotale equals: 300. "10% de 3000" 
]

{ #category : 'tests' }
TestConseiller >> testCreationConseiller [
    | conseiller |
    conseiller := Conseiller new 
        nom: 'Martin';
        identifiant: 'CM001'.
    
    self assert: conseiller nom equals: 'Martin'.
    self assert: conseiller identifiant equals: 'CM001'.
    self assert: conseiller ventes isEmpty
]
