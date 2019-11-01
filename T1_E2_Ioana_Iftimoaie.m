v = randn(1,10);
for p=1:1:10
if v(1,p)<0
    v(1,p)
end
end
%Am facut o matrice cu numere aleatoare cu distribu?ie normal? (gaussian?)
%cu o linie si un numar oarecare de coloane (10). Mai exact am facut un
%vector de 10 elemente si am folosit o structura repetitiva prin care
%determin numerele negative.