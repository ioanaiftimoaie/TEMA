% E1
 a = 0:0.1:2;
 b = ones(length(a),1);
 a*b
 b*a
a.*b
b.*a
% a) Ce lungime trebuie s? aib? b astfel ca s? aib? sens �nmul?irea (�n sens matricial) a*b?
%Ini?ializa?i �n MATLAB cei doi vectori ?i realiza?i �nmul?irea.Ce opera?ie se efectueaz?? 
%Raspus : b trebuie sa aiba un numar de linii egal cu numarul de coloane ale lui a (a si b au acelasi numar de elemente)
% Operatia care se realizeaza e de fapt inmultirea unei matrici linie cu o matrice coloana si rezulatul va fi o matrice cu o linie si o coloana.
% c) Realiza?i �nmul?irea element cu element a celor doi vectori. Ce rezultat se ob?ine? 
%Raspuns: Prin inmultirea element cu element a celor doi vectori se obtine o matrice cu 21 de linii si 21 de coloane (practic aceeasi matrice ca in cazul in care fac inmultirea b*a).