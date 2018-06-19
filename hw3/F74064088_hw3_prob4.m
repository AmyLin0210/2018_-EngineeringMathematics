%Prob4 (2)
f1 = figure;
L = 2*10^-3;
R = 8;
C = 5*10^-6;

h = 0.000001;    %下一個接近值的間隔
num = 10*10^-3/h;

%initiaz (t = 0)
i(1) = 0;
ip = 1/L;
ipp = (1/L)*(-R*ip);
Vr(1) = 0;
Vs(1) = 1;
t(1) = 0;

%using Euler's method
for k = 1:num
    i(k+1) = i(k) + ip*h+ipp*h^2/2;       %對i做下個接近值的估算
    ip = ip + ipp*h;                    %對i的微分做下個接近值的估算 
    Vsp = -6000*sin(6000*k*h);          %對Vs微分
    ipp = (1/L)*(Vsp-R*ip-(1/C)*i(k+1));%i的二次微分
    Vr(k+1) = i(k+1)*R;
    Vs(k+1) = cos(6000*k*h);
    t(k+1) = k*h;
end
hold on;
title('Fig.5');
plot(t, Vs, t, Vr);
legend('Vs','Vr');
hold off;

%Prob4 (3)
%做法皆同第一題

f2 = figure;

h = 0.000001;   %下一個接近值的間隔
num = 10*10^-3/h;

i(1) = 0;
ip = 1/L;
ipp = (1/L)*(-R*ip);
Vr(1) = 0;
Vs(1) = 0;
t(1) = 0;

%using Euler's method
for k = 1:num
    i(k+1) = i(k) + ip*h + ipp*h^2/2;
    ip = ip + ipp*h;
    Vsp = -10000*sin(10000*k*h);
    ipp = (1/L)*(Vsp-R*ip - i(k+1)/C);    
    Vs(k+1) = cos(10000*k*h);
    Vr(k+1) = i(k+1)*R;
    t(k+1) = k*h;
end
hold on;
title('Fig.6');
plot(t, Vs, t, Vr);
legend('Vs','Vr');
hold off;

%Prob4 (4)
%做法皆同第一題
f3 = figure;

h = 0.000001;
num = 10*10^-3/h;

i(1) = 0;
ip = 1/L;
ipp = (1/L)*(-R*ip);
Vr(1) = 0;
Vs(1) = 0;
t(1) = 0;

%using Euler's method
for k = 1:num
    i(k+1) = i(k) + ip*h + ipp*h^2/2;
    ip = ip + ipp*h;
    Vs(k+1) = cos(20000*k*h);
    Vsp = -20000*sin(20000*k*h);
    ipp = (1/L)*(Vsp - R*ip - i(k+1)/C);
    Vr(k+1) = i(k+1)*R;
    t(k+1) = k*h;
end
hold on;
title('Fig.7');
plot(t, Vs, t, Vr);
legend('Vs','Vr');
hold off;