fprintf('Prob2\n');


%Prob2_1
Ans2_1 = zeros(20);

xUp = 0.5;          %設定x y的區間
xDown = -0.5;
yUp = 0.5;
yDown = -0.5;

i = 3;
h = 10^-i;          %set the dx & dy
xNum = (xUp-xDown)/h;
yNum = (yUp-yDown)/h;

Ans2_1(i)= 0;       %開始積分（box）
for j = 0 : xNum-1 
    for k = 0 : yNum-1
        Ans2_1(i) = Ans2_1(i) + Prob2(xDown+j*h, yDown+k*h)*h^2;
    end
end
fprintf('(1) The total flux is %.0f (Volt.m)\n',Ans2_1(i)*6);

%Prob2_2
Ans2_2 = zeros(20);

xUp = 1;            %設定x y的區間
xDown = -1;
yUp = 1;
yDown = -1;

i = 3;
h = 10^-i;          %set the dx & dy
xNum = (xUp-xDown)/h;
yNum = (yUp-yDown)/h;

Ans2_2(i) = 0;      %開始積分(Box)
for j = 0 : xNum-1
    for k = 0:yNum-1   
            Ans2_2(i) = Ans2_2(i) + Prob2_2(xDown+j*h, yDown+k*h)*h^2;
    end
end
fprintf('(2) The total flux is %.0f (Volt.m)\n',Ans2_2(i)*6);

%Prob2_3
Ans2_3 = zeros(20);

xUp = 1;           %設定x和y的區間
xDown = -1;
yUp = 1;
yDown = -1;

i = 4;   
h = 10^-i;         %set dx & dy
xNum = (xUp-xDown)/h;
yNum = (yUp-yDown)/h;


Ans2_3(i)= 0;      %開始積分（box）
for j = 0 : xNum-1
    for k = 0:yNum-1          
            Ans2_3(i) = Ans2_3(i) + Prob2_3(xDown+j*h, yDown+k*h)*h^2;
    end
end  
fprintf('(3) The total flux is %.0f (Volt.m)\n',Ans2_3(i)*3);

%Prob2_4
fprintf('(4) The total flux is 0 (Volt.m)\n');
fprintf('   （因為charge在此立方體外面）\n');



