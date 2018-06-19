ans4 = zeros(7);
aa = 40;
max = zeros(aa);
min = zeros(aa);
max(1) = 1;
min(1) = -1;
probAns = 100;
probNum = 100;


%在進入這個for loop之前，我先以x = 1帶入此方程式，
%用辛普森法發現 h = 10^-7 後可以得到精確率6位的數字，
%(以上所提的程式在我發現趨近七次後已經刪掉...)
%以下的j表示要辛普森法趨近7次
%for loop的意義表示我在做二分逼進法
for count = 1 : aa
    j = 7;
    h = 10^-j;              %set dx
   
    x = max(count);         %先做二分逼進法中大的那個數
    num = (x-0)/h;
 
    ans4(1) = Prob4(0);     %將x帶入積分式（h = 10^-7）
    for i = 0:num       
        if(mod(i,2) == 1)
            ans4(1) = ans4(1)+Prob4(i*h)*4;
        else
            ans4(1) = ans4(1)+Prob4(i*h)*2;
        end
    end
    ans4(1) = ans4(1)+Prob4(x);
    ans4(1) = ans4(1)*h*(1/3);
    
    mid = (max(count)+min(count))/2;     %再做二分逼進法中中間那個數
    x = mid;
    num = (x-0)/h;
    
    ans4(2) = Prob4(0);                  %將x帶入積分式（h = 10^-7）
    for i = 0:num
        if(mod(i,2) == 1)
            ans4(2) = ans4(2)+Prob4(i*h)*4;
        else
            ans4(2) = ans4(2)+Prob4(i*h)*2;
        end
    end
    ans4(2) = ans4(2)+Prob4(x);
    ans4(2) = ans4(2)*h*(1/3);
    
                        %找新區間（左右相乘小於零表示這區間有解）
    if count < aa       %這個if是為了避免在邊界爆掉
        if ans4(1)*ans4(2) < 0
            max(count+1) = max(count);
            min(count+1) = mid;
        else
            max(count+1) = mid;
            min(count+1) = min(count);
        end
    end

    %前半段(count > 1)是為了避免在邊界爆掉
    %其他是在精確度到10^-6時跳出for loop結束
    if count > 1 && abs((max(count)-min(count))/max(count)) < 10^-6
        probAns = max(count);
        probNum = count;
        break
    end

end
fprintf('Prob4\n');
fprintf('The x is %.7f\n', probAns);
