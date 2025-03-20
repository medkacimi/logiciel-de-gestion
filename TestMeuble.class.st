Class {
	#name : 'TestMeuble',
	#superclass : 'TestCase',
	#category : 'Gestion meubles - test',
	#package : 'Gestion meubles - test'
}

{ #category : 'tests' }
TestMeuble >> testCalculVolume [
    | meuble |
    meuble := Meuble new 
        largeur: 100;
        hauteur: 200;
        profondeur: 50.
    
    self assert: meuble calculVolume equals: 1000000. "en cm³" 
]

{ #category : 'tests' }
TestMeuble >> testCreationMeuble [
    | meuble |
    meuble := Meuble new 
        reference: 'REF001';
        largeur: 120;
        hauteur: 80;
        profondeur: 60;
        prix: 1500;
        ajouterMateriau: 'Bois';
        ajouterMateriau: 'Métal'.
    
    self assert: meuble reference equals: 'REF001'.
    self assert: meuble largeur equals: 120.
    self assert: meuble hauteur equals: 80.
    self assert: meuble profondeur equals: 60.
    self assert: meuble prix equals: 1500.
    self assert: meuble materiaux size equals: 2.
    self assert: (meuble materiaux includes: 'Bois').
    self assert: (meuble materiaux includes: 'Métal')
]
