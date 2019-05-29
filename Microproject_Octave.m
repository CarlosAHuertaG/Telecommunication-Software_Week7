Q = [-3 3; 5 -5];
index=1;
for t=0:0.1:10
  P = expm(Q*t);
  ROW1_1(index) = P(1,1);
  ROW1_2(index) = P(1,2);
  ROW2_1(index) = P(2,1);
  ROW2_2(index) = P(2,2);
  index = index +1;
endfor
t = 0:0.1:10;
plot(t,ROW1_1,'b',t,ROW1_2,'b',t,ROW2_1,'r',t,ROW2_2,'r');