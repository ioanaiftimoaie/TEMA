fr = 5000;
t = 0:1/fr:100;
d = square(pi*t, 25);
%pt semnal dreptunghiular se foloseste square. stim ca factorul de umplere e 25% si perioada 2 secunde
for i = 1:1:length(d)
  if d(i)>0
  d(i) = d(i)/2;
  end
end
 
plot(t,d)
axis([0 5.3 - 1.2 1.2])
xlabel('Time(sec)')
ylabel('Amplitude')
title('Square')
