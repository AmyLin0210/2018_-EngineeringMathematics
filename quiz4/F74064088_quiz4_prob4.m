root1 = 5.000000002;

max = 1000; 
min = -1000;
for i = 0 : 8
    mid = (max+min)/2;
    if(Prob4(mid)*Prob4(max) < 0)
        min = mid;
    else
        max = mid;
    end
end

fprintf('%.5f %.5f\n', min, max);

ans4 = zeros(10);
ans4(1) = min;

for i = 2 : 10
    ans4(i) = ans4(i-1)-(Prob4(ans4(i-1))/Prob4_2(ans4(i-1)));
    if(abs((ans4(i)-ans4(i-1))/ans4(i)) < 10^-8)
        probAns = ans4(i);
        probNum = i;
        break
    end
end

%fprintf('%.10f %d\n', probAns, probNum);
fprintf('Prob 4: The root is %.9f\n', probAns);