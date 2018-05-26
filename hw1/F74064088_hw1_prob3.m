%Prob3 a
f3_a = figure;
m = 5; %���魫�q
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

%�H�U���ѳ����ΨӨD�̤p�~�t�b����
%{
h = linspace(2^-50,2^-1);
min = 100;
%truNum�O���T���L������a 
trueNum = (-20*exp(-0.01*(8^2))*(-0.01)*2*8*sin(20*pi*8+(2*pi)/5)+...
          (-20)*exp(-0.01*(8^2))*cos(20*pi*8+2*pi/5)*20*pi)*m;
%�o�{����min�p���~�t�ɦs�_��
for i = 1:50
    if min > abs((velocity(8+2^-i)-velocity(8-2^-i))/(2*(2^(-i)))*m-trueNum)
        min = abs((velocity(8+2^-i)-velocity(8-2^-i))/(2*(2^(-i)))*m-trueNum);
        n = i;
    end   
end
fprintf('n = %d , max = %.12f\n',n, min);
%�o�{h = 2^-20�~�t�̤p
%}
f3_b = figure;
a = (velocity(t+2^-20)-velocity(t-2^-20))/(2*(2^(-20))); % a(�[�t��)�Ov(�t��)���L��
F = m*a; %�O������ F=ma
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
