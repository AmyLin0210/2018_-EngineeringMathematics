%question 1
f1 = figure;
x = linspace(-5,5);
plot(x,MyFcn(x));

%question 2
f2 = figure;
h = zeros(4);
for i = 1:4
    h(i) = 10^(-i);
end
plot(x,(MyFcn(x+h(1))-MyFcn(x))./h(1),...
     x,(MyFcn(x+h(2))-MyFcn(x))./h(2),...
     x,(MyFcn(x+h(3))-MyFcn(x))./h(3),...
     x,(MyFcn(x+h(4))-MyFcn(x))./h(4),...
     x, exp(2*x)-exp(-2*x));
 legend('0.1','0.01','0.001','0.001','correct');
 
%question 3
f3 = figure;
semilogy(x,(MyFcn(x+h(1))-MyFcn(x))./h(1)-(exp(2*x)-exp(-2*x)),...
         x,(MyFcn(x+h(2))-MyFcn(x))./h(2)-(exp(2*x)-exp(-2*x)),...
         x,(MyFcn(x+h(3))-MyFcn(x))./h(3)-(exp(2*x)-exp(-2*x)),...
         x,(MyFcn(x+h(4))-MyFcn(x))./h(4)-(exp(2*x)-exp(-2*x)));
legend('0.1','0.01','0.001','0.001');

%question 4
f4 = figure;
plot(x,(MyFcn(x+h(1))-MyFcn(x-h(1)))./(2*h(1)),...
     x,(MyFcn(x+h(2))-MyFcn(x-h(2)))./(2*h(2)),...
     x,(MyFcn(x+h(3))-MyFcn(x-h(3)))./(2*h(3)),...
     x,(MyFcn(x+h(4))-MyFcn(x-h(4)))./(2*h(4)),...
     x, exp(2*x)-exp(-2*x));
 legend('0.1','0.01','0.001','0.001','correct');
 
%question 5
f5 = figure;
semilogy(x,abs((MyFcn(x+h(1))-MyFcn(x-h(1)))./(2*h(1))-(exp(2*x)-exp(-2*x))),...
         x,abs((MyFcn(x+h(2))-MyFcn(x-h(2)))./(2*h(2))-(exp(2*x)-exp(-2*x))),...
         x,abs((MyFcn(x+h(3))-MyFcn(x-h(3)))./(2*h(3))-(exp(2*x)-exp(-2*x))),...
         x,abs((MyFcn(x+h(4))-MyFcn(x-h(4)))./(2*h(4))-(exp(2*x)-exp(-2*x))));
legend('0.1','0.01','0.001','0.001');

%question 6
f6 = figure;
a = 1000;
m = linspace(2^-50,2^-1);
loglog(m,abs(Q6Fcn2(2)-((tanh(2.+ m)-tanh(2))./m)));
for i = 1:50
    if a > abs(Q6Fcn2(2)-((tanh(2.+2.^-i)-tanh(2))./(2.^-i)))
       a = abs(Q6Fcn2(2)-((tanh(2.+2.^-i)-tanh(2))./(2.^-i)));
    end
end


%question 7
f7 = figure;
loglog(m,abs(Q6Fcn2(2)-((tanh(2.+ m)-tanh(2.-m))./(2.* m))));
for i = 1:50
    if a > abs(Q6Fcn2(2)-(tanh(2+2^(-i))-tanh(2-2^(-i)))/(2.*(2^(-i))))
       a = abs(Q6Fcn2(2)-(tanh(2+2^(-i))-tanh(2-2^(-i)))/(2.*(2^(-i))));
    end
end






