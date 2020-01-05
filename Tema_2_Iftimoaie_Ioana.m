clc
clear all
close all
%declararea variabilelor
P=40;
N=50;
D=13;
n=D/P;
%baza de timp se intinde pe 10 perioade
%esantionare
pas=1/(2*P);
PMax=10*P;
t=0:pas:PMax-pas;
%Am apelat functia de creare a semnalului dreptunghiular
%stocarea semnalului original
S_in=(1+square(2*pi*t/P,n*100))/2;
 
%Am calculat termenii Seriei Fourier complexe si am declarat vectorul ce la va retine
X=zeros(1,2*N+1);
for i=1:N
    X(i+N+1)=integral(@(t)((1+square(2*pi*t/P,n*100))/2).*exp((-j*i*2*pi.*t)/P),0,P);
    X(N-i+1)=conj(X(i+N+1));
end
 
%Am calculat componenta continua
X(N+1)=integral(@(t)((1+square(2*pi*t/P,n*100))/2),0,P);
%Am declarart vectorul pentru reconstituirea semnalului
X_R=zeros(1,length(t));
%Am reconstit semnalul prin adunarea termenilor seriei Fourier complexe pentru fiecare esantion al semnalului initial
for i=1:length(t)
    for l=1:2*N+1
        X_R(i)=X_R(i)+X(l)*exp((j*(l-N-1)*2*pi*t(i))/P);
    end
    X_R(i)=X_R(i)/P;
end
 
%Am afisat rezultatele
 
figure()
index_spectru=-50:50;
stem(index_spectru, abs(X),'r','linewidth',2)
title('Spectrul de amplitudini','fontsize',15,'fontweight','bold')
xlabel('k','fontsize',10,'fontweight','bold')
ylabel('abs(X(k))','fontsize',10,'fontweight','bold')
 
figure()
plot(t,S_in,'g','linewidth',1.5)
hold on
plot(t,X_R,'r--','linewidth',1.5);
title('Semnalul initial + Reconstituirea sa utilizand Seria Fourier complexa','fontsize',15,'fontweight','bold')
legend('Semnalul initial','Semnal reconstituit')
xlabel('t','fontsize',10,'fontweight','bold')
ylabel('x(t)','fontsize',10,'fontweight','bold')