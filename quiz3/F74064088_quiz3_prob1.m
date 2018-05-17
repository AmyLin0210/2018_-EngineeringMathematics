%prob1_1
f1 = figure;
correctAns = sin((1/2)*pi)-sin((1/4)*pi);

numf = zeros(300);
hh   = zeros(300);
ansf = zeros(300);
ansf2= zeros(300);
for i = 1:300
    hh(i) = 10^-(6-i/50);
    numf(i) = ((1/2-1/4)/hh(i))-1;
    ansf(i) = 0;
    ansf2(i) = 0;
    for j = 0 : numf(i)
        ansf(i) = ansf(i) + Fcn1(1/4+hh(i)*j)*(hh(i)); 
        ansf2(i) = ansf2(i) + (Fcn1(1/4+hh(i)*j)*hh(i)+Fcn1(1/4+hh(i)*(j+1))*hh(i))/2;
    end
end
loglog(hh,abs(correctAns-ansf),...
       hh,abs(correctAns-ansf2));

%prob1_2

%用此for迴圈找到接近值後才註解掉的
%{
for j = 1:9
    h = 10^(-j);
    num = ((1/2-1/4)/h)-1;
    ans1 = 0;
    for i = 0 : num
        ans1 = ans1 + Fcn1(1/4+h*i)*h;
    end
end
%}
h = 10^-9;
num = ((1/2-1/4)/h)-1;
ans1 = 0;
for i = 0 : num
    ans1 = ans1 + Fcn1(1/4+h*i)*h;
end
fprintf('prob1_2\n')
fprintf('h = 10^-9, %.10f\n',ans1);

%用此for迴圈找到接近值後才註解掉的
%{
for j = 1:5  
    h = 10^(-j);
    num = ((1/2-1/4)/h)-1;
    ans2 = 0;
    for i = 0 : num
        ans2 = ans2 + (Fcn1(1/4+h*i)*h+Fcn1(1/4+h*(i+1))*h)/2;
    end
    fprintf('%.10f\n',abs(correctAns-ans2));
end
%}
  
h = 10^-4;
num = ((1/2-1/4)/h)-1;
ans2 = 0;
for i = 0 : num
    ans2 = ans2 + (Fcn1(1/4+h*i)*h+Fcn1(1/4+h*(i+1))*h)/2;
end
fprintf('h = 10^-4, %.10f\n',ans2);