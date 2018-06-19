%(i)Trapezoid Method

ans1_1 = zeros(8);
%發現在趨近8次後（梯形法），可以達到要求的精確度
for j = 1:8      %測試的遺留痕跡，在測趨近1~8次時的精確度
    h = 10^(-j);
    num = (pi-0)/h;
    ans1_1(j) = Prob1_1(0)/2;
    for i = 1 : num-1
        ans1_1(j) = ans1_1(j) + Prob1_1(h*i);
    end    
    ans1_1(j) = ans1_1(j)+Prob1_1(pi)/2;
    ans1_1(j) = ans1_1(j)*h;         %為了不讓程式在跑時多算重複的乘法，把大家的公倍數提來這裡加
end
fprintf('Prob 1\n');
fprintf('(i) %.8f\n', ans1_1(8));

%(ii)Simpson’s Method

%幾乎同prob1 (i)
%發現在趨近3次後（辛普森法），可以達到要求的精確度
ans1_2 = zeros(6);
for j = 1:3
    h = 10^-j;
    num = (2-0)/h;
    ans1_2(j) = Prob1_2(0);
    for i = 1 : num-1
        if mod(i,2) == 1
            ans1_2(j) = ans1_2(j) + Prob1_2(h*i)*4;
        else      
            ans1_2(j) = ans1_2(j) + Prob1_2(h*i)*2;
        end
    end
    ans1_2(j) = ans1_2(j) + Prob1_2(2);
    ans1_2(j) = ans1_2(j)*h*(1/3);    %為了不讓程式在跑時多算重複的乘法，把大家的公倍數提來這裡加
end
fprintf('(ii)%.8f\n', ans1_2(3));

