%prob2_1

%找到前八位都一樣的後註解掉的
%{
for j = 1:5
    h = 10^-j;
    num = (2-0)/h;
    ans1 = Fcn2(0)*(1/3)*h;
    for i = 1 : num-1
        if mod(i,2) == 1
            ans1 = ans1 + Fcn2(h*i)*h*(4/3);
        else      
            ans1 = ans1 + Fcn2(h*i)*h*(2/3);
        end
    end
    ans1 = ans1 + Fcn2(2)*h*(1/3);
    fprintf('%.10f\n', ans1)
end
%}

h = 10^-2;
num = (2-0)/h;
ans1 = Fcn2(0)*(1/3)*h;
for i = 1 : num-1
    if mod(i,2) == 1
        ans1 = ans1 + Fcn2(h*i)*h*(4/3);
    else      
        ans1 = ans1 + Fcn2(h*i)*h*(2/3);
    end
end
    ans1 = ans1 + Fcn2(2)*h*(1/3);
fprintf('prob2_1\n');    
fprintf('%.10f\n',ans1);

%prob2_2
fprintf('prob2_2\n');
fprintf('h = 10^-2,\n');
fprintf('我用for迴圈下去跑10^-1~10^-6，發現自10^-2後，後面的數字前八位皆相同，因此判斷h = 10^-2\n');
