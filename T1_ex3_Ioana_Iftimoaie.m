n = 4; 
%n reprezinta nr de niveluri(a,b,c,d)
dn = 0.001;
tm = 0:dn:n;
j = 1;
for i = 1:length(tm)
 if tm(i) <= j*0.25
  if j <= length(tm)
    x(i) = tm(j);
  else
     x(i) = 0;
  end
 else
 if j <= length(tm)
   x(i) = tm(j);
 end
 j = j + 1;
 end
end
axis([0 20 -5 3])
plot(tm,x);
