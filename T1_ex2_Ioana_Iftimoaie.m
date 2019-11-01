fr = 2000;
t = 0:1/fr:100;
tr = sawtooth(0.4*pi*t, 0.5); %semnal triunghiular cu perioada 5 secunde
plot(t, tr);
xlabel('Time(sec)')
ylabel('Amplitude')
title('Triangle')
