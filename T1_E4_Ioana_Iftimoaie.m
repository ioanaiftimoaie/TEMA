z = zeros(1,21); %fac o matrice de zerouri de aceleasi dimensiuni ca z
z(6)=1; % punem valoarea 1 ca sa obtinem z-ul cerut
n=0:20;
m=-5:15;
figure(1)
%cu ajutorul functiei obtinem doua grafice in aceasi figura
subplot(2,1,1),stem(n,z),grid 
subplot(2,1,2),stem(m,z),grid 
%b)
t=abs(10-n); %Functia abs este modulul
figure(2)
stem(n,t), grid
%c) 
n1= -15:25; % definim un n1 pentru ca o sa avem nevoie cand facem graficele
x1=sin(pi*n1/17);
n2= 0:50
x2=cos(pi*n2/sqrt(23));
figure(3) % afisarea pe acelasi grafic
stem(n1,x1),grid 
hold on % este necesar ca sa punem doua semnale pe acelasi grafic
stem(n2,x2), grid
figure (4) % afisarea in aceasi fereastra in timp discret
subplot(2,1,1),stem(n1,x1),grid
subplot(2,1,2),stem(n2,x2),grid 

figure(5) % afisarea pe acelasi grafic
plot(n1,x1),grid 
hold on 
plot(n2,x2), grid
figure (6) % afisarea in aceasi fereastra
subplot(2,1,1),plot(n1,x1),grid
subplot(2,1,2),plot(n2,x2),grid 