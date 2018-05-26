max = 5; 
min = -5;
for i = 0 : 8
    mid = (max+min)/2;
    if(Prob1(mid)*Prob1(max) < 0)
        min = mid;
    else
        max = mid;
    end
end

%fprintf('%.5f %.5f\n', min, max);

ans1 = zeros(10);
ans1(1) = min;

for i = 2 : 10
    ans1(i) = ans1(i-1)-(Prob1(ans1(i-1))/Prob1_2(ans1(i-1)));
    if(abs((ans1(i)-ans1(i-1))/ans1(i)) < 10^-8)
        probAns = ans1(i);
        probNum = i;
        break
    end
end

%fprintf('%.10f %d\n', probAns, probNum);
fprintf('Prob 1: The root is %.9f\n', probAns);
