%Prob3 a
f3_a = figure;
m = 5; %物體重量
t = linspace(0, 20, 1000);
hold on;
%velocity is a fcn to calculate velocity
%velocity(t)
plot(t, velocity(t));
xlabel('t');
ylabel('v(t)');
title('Prob3 a');
hold off;

%Prob3 b

%以下註解部分用來求最小誤差在哪裡
%{
h = linspace(2^-50,2^-1);
min = 100;
%truNum是正確手算微分公式a 
trueNum = (-20*exp(-0.01*(8^2))*(-0.01)*2*8*sin(20*pi*8+(2*pi)/5)+...
          (-20)*exp(-0.01*(8^2))*cos(20*pi*8+2*pi/5)*20*pi)*m;
%發現有比min小的誤差時存起來
for i = 1:50
    if min > abs((velocity(8+2^-i)-velocity(8-2^-i))/(2*(2^(-i)))*m-trueNum)
        min = abs((velocity(8+2^-i)-velocity(8-2^-i))/(2*(2^(-i)))*m-trueNum);
        n = i;
    end   
end
fprintf('n = %d , max = %.12f\n',n, min);
%發現h = 2^-20誤差最小
%}
f3_b = figure;
a = (velocity(t+2^-20)-velocity(t-2^-20))/(2*(2^(-20))); % a(加速度)是v(速度)的微分
F = m*a; %力的公式 F=ma
hold on;
plot(t, F);
xlabel('t');
ylabel('F(t)')
title('Prob3 b');
hold off;

%Prob3 c
F8 = m*(velocity(8+2^-20)-velocity(8-2^-20))/(2*(2^(-20)));
fprintf('Prob3 (c)\n');
fprintf('F(8) = %.12f\n',F8);
