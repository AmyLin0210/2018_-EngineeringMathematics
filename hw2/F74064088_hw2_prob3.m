%Prob 3(a)
fprintf('prob 3\n');
%------------The smallest positive root-----------%
%����2���G�i�k�D�����Ʀr
max = 0; 
min = 1;
for i = 1:8
    mid = (max+min)/2;
    if(Prob3_1(mid)*Prob3_1(max) < 0)
        min = mid;
    else
        max = mid;
    end
end

%���~�t���b��쪺�Ʀr��
%�A�Τ��y�k�D���T���Ʀr
ans1_1 = zeros(20);
ans1_1(1) = min;
for i = 2 : 20
    ans1_1(i) = ans1_1(i-1)-(Prob3_1(ans1_1(i-1))/Prob3_1p(ans1_1(i-1)));
    %�H�Uif�O���F�b��T�׹F��10^-8�ᵲ��for loop
    if(abs((ans1_1(i)-ans1_1(i-1))/ans1_1(i)) < 10^-8)
        probAns = ans1_1(i);
        probNum = i;
        break
    end
end
fprintf('The smallest positive root of Prob.3(a) is %.9f\n', probAns);


%-------------The largest negative root-----------------%
%��k�����PProb.3(a)
max = 0; 
min = -1;
for i = 1:8
    mid = (max+min)/2;
    if(Prob3_1(mid)*Prob3_1(max) < 0)
        min = mid;
    else
        max = mid;
    end
end

ans2_2 = zeros(10);
ans2_2(1) = min;
for i = 2 : 10
    ans2_2(i) = ans2_2(i-1)-(Prob3_1(ans2_2(i-1))/Prob3_1p(ans2_2(i-1)));
    if(abs((ans2_2(i)-ans2_2(i-1))/ans2_2(i)) < 10^-8)
        probAns = ans2_2(i);
        probNum = i;
        break
    end
end

fprintf('The largest negative root of Prob.3(a) is %.9f\n', probAns);


%Prob 3(b)
%------------The smallest positive root-----------%
%��k�����PProb.3(a)
max = 1; 
min = 0;
for i = 1:8
    mid = (max+min)/2;
    if(Prob3_2(mid)*Prob3_2(max) < 0)
        min = mid;
    else
        max = mid;
    end
end

ans2_1 = zeros(10);
ans2_1(1) = min;
for i = 2 : 10
    ans2_1(i) = ans2_1(i-1)-(Prob3_2(ans2_1(i-1))/Prob3_2p(ans2_1(i-1)));
    if(abs((ans2_1(i)-ans2_1(i-1))/ans2_1(i)) < 10^-8)
        probAns = ans2_1(i);
        probNum = i;
        break
    end
end
fprintf('The smallest positive root of Prob.3(b) is %.9f\n', probAns);

%-------------The largest negative root-----------------% 
%��k�����PProb.3(a)

max = 0; 
min = -0.5;
for i = 1:8
    mid = (max+min)/2;
    if(Prob3_1(mid)*Prob3_1(max) < 0)
        min = mid;
    else
        max = mid;
    end
end


ans2_2 = zeros(10);
ans2_2(1) = min;
for i = 2 : 10
    ans2_2(i) = ans2_2(i-1)-(Prob3_2(ans2_2(i-1))/Prob3_2p(ans2_2(i-1)));
    if(abs((ans2_2(i)-ans2_2(i-1))/ans2_2(i)) < 10^-8)
        probAns = ans2_2(i);
        probNum = i;
        break
    end
end

fprintf('The largest negative root of Prob.3(b) is %.9f\n', probAns);

