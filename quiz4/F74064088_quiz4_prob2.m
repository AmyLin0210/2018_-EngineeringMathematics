max = 3; 
min = -3;
for i = 1:8
    mid = (max+min)/2;
    if(Prob2(mid)*Prob2(max) < 0)
        min = mid;
    else
        max = mid;
    end
end

%fprintf('%.5f %.5f\n', min, max);

ans2 = zeros(10);
ans2(1) = min;

for i = 2 : 10
    ans2(i) = ans2(i-1)-(Prob2(ans2(i-1))/Prob2_2(ans2(i-1)));
    if(abs((ans2(i)-ans2(i-1))/ans2(i)) < 10^-8)
        probAns = ans2(i);
        probNum = i;
        break
    end
end

%fprintf('%.10f %d\n', probAns, probNum);
fprintf('Prob 2: The root is %.9f\n', probAns);


