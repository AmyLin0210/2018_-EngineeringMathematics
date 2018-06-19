%Prob3 (2)
f2 = figure;
l = 0.5;
m = 0.5;
R = 1;
B = 1;
g = 9.8;
v(1) = 0;
vp(1) = m*g;
t2(1) = 0;

h = 0.01;         %下一個接近值的間隔
num = 45/h;

for i = 1:num
    v(i+1) = v(i)+vp(i)*h;                   %估計下個接近值的速度
    vp(i+1) = (1/m)*(m*g-(l*B)^2/R*v(i+1));  %下個接近值的速度微分
%    fprintf('%.6f\n', v(i+1));
    t2(i+1) = i*h;
end

plot(t2, v);
xlabel('t');
ylabel('v(t)');

%Prob3 (3)

%  mg = (l*B)^2*v(t)/R ->等速度
%  然後變數變換求得v(t)，發現和第二題符合
terminalSpeed = m*g*R/((l*B)^2);
fprintf('Problem 3: The terminal speed is %.2f m/s\n', terminalSpeed);
