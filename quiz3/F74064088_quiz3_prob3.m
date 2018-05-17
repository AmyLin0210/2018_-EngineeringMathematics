correctAns = pi*80;
%¥Îfor°j°é§ä»~®t¡A§ä¨ì«áµù¸Ñ±¼
%{
for j = 1:9
    count = 0;
    for i = 0 : 10^j
        x = rand*10;
        y = rand*8;
        a = Fcn3(x);
        if y<a
            count = count+1;
        end
    end
    ans1 = (count/10^j)*80*4;
    fprintf('%d %.2f\n',j,correctAns);
    fprintf('  %.2f\n\n',ans1);
end
%}
%{
count = 0;
for i = 0 : 10^9
    x = rand*10;
    y = rand*8;
    a = Fcn3(x);
    if y<a
        count = count+1;
    end
end
ans1 = (count/10^9)*80*4;
%}
fprintf('prob3\n');
fprintf('h = 9\n');


