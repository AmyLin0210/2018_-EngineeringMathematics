%Prob2 (1)

k = 58*10^3;
m = 1.2*10^3;
b = 4*10^3;

h = 0.05;    %�U�@�ӱ���Ȫ����j
num = 20/h;

%initial (t = 0)
t(1) = 0;
x(1) = 20;
xp(1) = 0;
xpp(1) = (1/m)*(-b*xp(1)-k*x(1));

%using Euler's method
for i = 1:num
    x(i+1) = x(i) + xp(i)*h + (1/2)*xpp(i)*h^2; %x���U�ӱ���� 
    xp(i+1) = xp(i) + xpp(i)*h;                 %x�L�����U�ӱ����
    xpp(i+1) = (1/m)*(-b*xp(i+1)-k*x(i+1));     %x�U�ӱ���Ȫ��G���L��
    t(i+1) = i*h;                               %�x�s�ɶ��K�󰵹�
end
f1 = figure;
plot(t, x);
title('Fig.1');
ylabel('x(t)');
xlabel('t');

%Prob2 (2)

k = 58*10^3;
m = 1.2*10^3;
b = 4*10^3;
f = 0;

h = 0.001;
num = 20/h;

count = 0;

x1 = 20;
xp1 = 0;
xpp1 = (1/m)*(-b*xp1-k*2);

for i = 1:num
    x2 = x1 + xp1*h + (1/2)*xpp1*h^2;  
    xp2 = xp1 + xpp1*h;
    xpp2 = (1/m)*(-b*xp1-k*x1);
    %count how many times x = 0
    %x pass 0 twice in a period
    if x2*x1 < 0
        count = count + 1;
    end
    x1 = x2;
    xp1 = xp2;
    xpp1 = xpp2;
end

%there is 20 second so the count should /20;
%x pass 0 twice in a period, so the count should /2;
frequence = (1/(count/2/20));
fprintf('Problem 2: The oscillation frequency is %.2f Hz\n', frequence);