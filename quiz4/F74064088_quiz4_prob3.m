min = 0; 
max = pi/2;
for i = 1:100
    mid = (max+min)/2;
    if(Prob3(mid)*Prob3(max) < 0)
        min = mid;
    else
        max = mid;
    end
    
    if abs((max-min)/max) < 10^-6        
        probAns = min;
        probNum = i;
        break
    end
end

fprintf('Prob 3: The shooting angle should be %.6f degree is %d\n', probAns, 6);

