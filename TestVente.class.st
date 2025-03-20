Class {
	#name : 'TestVente',
	#superclass : 'TestCase',
	#category : 'Gestion meubles - test',
	#package : 'Gestion meubles - test'
}

{ #category : 'tests' }
TestVente >> testCalculCommission [
    | vente |
    vente := Vente new montantTotal: 2000.
    
    "La commission devrait être de 10% du montant total"
    self assert: vente calculCommission equals: 200. "10% de 2000"
]

{ #category : 'tests' }
TestVente >> testCalculMontantTotal [
    | vente client meuble1 meuble2 |
    client := Client new.
    
    "Ajout d'achats précédents pour générer une remise"
    client ajouterAchat: (Vente new  montantTotal: 2000).
    
    meuble1 := Meuble new  prix: 1000. 
    meuble2 := Meuble new prix: 1500.
    
    vente := Vente new 
        client: client;
        ajouterMeuble: meuble1;
        ajouterMeuble: meuble2.
    
    "Le montant total devrait être: prix des meubles - remise"
    "Remise = 3% de 2000 = 60"
    "Montant = 2500 - 60 = 2440"
    self assert: vente calculMontantTotal equals: 2440
]

{ #category : 'tests' }
TestVente >> testCreationVente [
    | vente client conseiller meuble |
    client := Client new  nom: 'Dupont'.
    conseiller := Conseiller new nom: 'Martin'.
    meuble := Meuble new 
        reference: 'REF001';
        prix: 1500.
     
    vente := Vente new 
        date: '2023-03-15' asDate;
        client: client;
        conseiller: conseiller;
        ajouterMeuble: meuble.
    
    self assert: vente date equals: '2023-03-15' asDate.
    self assert: vente client equals: client.
    self assert: vente conseiller equals: conseiller.
    self assert: vente meubles size equals: 1
]

{ #category : 'tests' }
TestVente >> testFinalisationVente [
    | vente client conseiller |
    client := Client new.
    conseiller := Conseiller new.
    
    vente := Vente new
        client: client;
        conseiller: conseiller;
        montantTotal: 1000.
    
    vente finaliser.
    
    self assert: client achats size equals: 1.
    self assert: conseiller ventes size equals: 1.
    self assert: (client achats includes: vente).
    self assert: (conseiller ventes includes: vente) 
]
