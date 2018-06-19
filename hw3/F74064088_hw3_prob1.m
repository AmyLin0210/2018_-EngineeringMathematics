%Prob1 (2)

%initialize
i1 = 0;
i2 = 0;
i3 = 0;
num = 0;

%using the equation in the PDF Prob1 (1)
%using jacobi method
for k = 1:100
    ans1 = (1/6)*(5+i2*4+i3*2);
    ans2 = (1/9)*(2*i1+4*i3);
    ans3 = (1/6)*(i1+4*i2);
    
    %when the precision achieve 6 digital, break;
    if(abs(ans1-i1) < 10^-6 && abs(ans2-i2) < 10^-6 && abs(ans3-i3) < 10^-6)
       num = k;
       break
    end
    i1 = ans1;
    i2 = ans2;
    i3 = ans3;
end

%fprintf('%d %.6f %.6f %.6f\n', num, i1, i2, i3);

i5 = i3-i2;

fprintf('Problem 1: I5 = %.6f A\n', i5);
