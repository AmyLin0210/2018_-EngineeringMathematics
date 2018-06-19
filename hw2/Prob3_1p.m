function [a] = Prob3_1p(x)
    a = 2*x/(x^2+1)-(exp(0.4*x)*0.4*cos(pi*x)+exp(0.4*x)*(-sin(pi*x))*pi);
end