%Prob1_1
f1 = figure;

hold on;
h = 0.01;
num = 20/h;

ans1 = zeros(num+1);
t = zeros(num+1);

priNum = 0;
ans1(1) = priNum;
t(1) = 0;
plot(0,0);
for i = 1:num
    priNum = priNum + Prob1_1(priNum)*h;
    plot(i*h, priNum);
    ans1(i+1) = priNum;
    t(i+1) = h*i;
end 

plot(t, ans1);
xlabel('t');
ylabel('y(t)');

hold off;

%Prob1_3
h = 0.0001;
num = 2/h;

priNum = 0;

for i = 1:num
    priNum = priNum + Prob1_1(priNum)*h;
end 
fprintf('Problem 1: y(2) = %.4f\n', priNum);