%Prob2_1
f2 = figure;

h = 0.01;
num = 10/h;
yp = zeros(num+1);
y = zeros(num+1);
t = zeros(num+1);

yp(1) = 20;
y(1) = 1.5;
t(1) = 0;

for i = 1:num
    y(i+1) = Prob2_2(y(i), yp(i), h);
    yp(i+1) = Prob2_1(yp(i), h);
    t(i+1) = i*h;
end

plot(t, y);
xlabel('t');
ylabel('y(t)');

%Prob2_3

h2 = 0.0001;
num = 3/h2;

yp2 = 20;
y2 = 1.5;
t = 0;

for i = 1:num
    y2 = Prob2_2(y2, yp2, h2);
    yp2 = Prob2_1(yp2, h2);
end
fprintf('Problem 2: y(3) = %.2f\n', y2);

%Prob2_5

aa = 0;
for i = 1:num
    if y(i)*y(i+1) < 0
        aa = i;
        break
    end
end

%fprintf('%.2f\n', aa*h);  
