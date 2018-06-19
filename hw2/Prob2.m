function [a]= Prob2(x,y)
    k = 8.987*10^9;
    a = k*1*0.5/((x^2+y^2+0.5^2)^(3/2));
end