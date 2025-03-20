Class {
	#name : 'TestMeubleBuilder',
	#superclass : 'TestCase',
	#category : 'Gestion meubles - test',
	#package : 'Gestion meubles - test'
}

{ #category : 'tests' }
TestMeubleBuilder >> testCreationMeubleAvecBuilder [
    | meuble |
    meuble := MeubleBuilder new
        reference: 'REF001';
        dimensions: 120 hauteur: 80 profondeur: 60;
        prix: 1500;
        ajouterMateriau: 'Bois';
        ajouterMateriau: 'Métal';
        construire.
    
    self assert: meuble reference equals: 'REF001'.
    self assert: meuble largeur equals: 120.
    self assert: meuble hauteur equals: 80.
    self assert: meuble profondeur equals: 60.
    self assert: meuble prix equals: 1500.
    self assert: meuble materiaux size equals: 2.
    self assert: (meuble materiaux includes: 'Bois').
    self assert: (meuble materiaux includes: 'Métal') 
]
