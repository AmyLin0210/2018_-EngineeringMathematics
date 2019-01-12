%Prob2_1

%初始值
g = -9.8;
xp2(1) = 0;
yp2(1) = 0.2;
Vy0 = 20*sin((50/180)*pi);
Vx0 = 20*cos((50/180)*pi);
m = 0.1;


%使用二分法找何時y會等於零，取到8為有效位數
max = 20;
min = 0;
for i = 0:100
    mid = (max+min)/2;
    t = max;
    ansMax = yp2(1)+Vy0*t+1/2*g*t^2;
    t = mid;
    ansMid = yp2(1)+Vy0*t+1/2*g*t^2;
    if ansMax*ansMid < 0
        min = mid;
    else
        max = mid;
    end
    
    if(abs(ansMax-ansMid) < 10^-8)
        t = max;
        count = i;
        break;
    end
end

landedTime = t;

%開始做圖
h = landedTime/100;

for i = 2:100
    xp2(i) = Vx0*i*h;
    yp2(i) = Vy0*i*h+1/2*g*(i*h)^2+yp2(1);
end

f8 = figure;

plot(xp2, yp2);
title('Fig8');
xlabel('x');
ylabel('y');

%Prob2_2
%衝量等於動量變化->F*t = m*v
VxJim = 2*0.1/m + Vx0;
xJim = Vx0*2+(landedTime-2)*VxJim;
%fprintf('%.7f\n', xJim);

%Prob2_3
VxJack = -1*0.1/m + Vx0;
VyJack = Vy0+g*landedTime;
VtotalJack = sqrt(VxJack^2+VyJack^2);
%fprintf('%.7f\n', VtotalJack);

%Prob2_4
VyLand = Vy0+g*landedTime;
VxJim = 2*0.1/m + Vx0;
VxJay = -1*0.1/m + Vx0;
VxJack = -1*0.1/m + Vx0;
VtotalJim = sqrt(VyLand^2+VxJim^2);
VtotalJay = sqrt(VyLand^2+VxJay^2);
VtotalJack = sqrt(VyLand^2+VxJack^2);
%fprintf('Jim: %.7f\n', VtotalJim*m);
%fprintf('Jay: %.7f\n', VtotalJay*m);
%fprintf('Jack: %.7f\n', VtotalJack*m);



