Class {
	#name : 'TestClient',
	#superclass : 'TestCase',
	#category : 'Gestion meubles - test',
	#package : 'Gestion meubles - test'
}

{ #category : 'tests' }
TestClient >> testCalculRemise [
    | client vente1 vente2 |
    client := Client new.
    
    vente1 := Vente new 
        montantTotal: 1000; 
        client: client;
        date: '2023-01-15' asDate.
    
    vente2 := Vente new
        montantTotal: 2000;
        client: client;
        date: '2023-02-20' asDate.
    
    client ajouterAchat: vente1.
    client ajouterAchat: vente2.
    
    "La remise devrait être de 3% du total des achats précédents"
    self assert: client calculRemise equals: 90. "3% de 3000" 
]

{ #category : 'tests' }
TestClient >> testCreationClient [
    | client |
    client := Client new
        nom: 'Dupont';
        adresse: '123 Rue de Paris, 75001 Paris'.
    
    self assert: client nom equals: 'Dupont'.
    self assert: client adresse equals: '123 Rue de Paris, 75001 Paris'.
    self assert: client achats isEmpty
]
