%(i)Trapezoid Method

ans1_1 = zeros(8);
%�o�{�b�ͪ�8����]��Ϊk�^�A�i�H�F��n�D����T��
for j = 1:8      %���ժ���d����A�b���ͪ�1~8���ɪ���T��
    h = 10^(-j);
    num = (pi-0)/h;
    ans1_1(j) = Prob1_1(0)/2;
    for i = 1 : num-1
        ans1_1(j) = ans1_1(j) + Prob1_1(h*i);
    end    
    ans1_1(j) = ans1_1(j)+Prob1_1(pi)/2;
    ans1_1(j) = ans1_1(j)*h;         %���F�����{���b�]�ɦh�⭫�ƪ����k�A��j�a�������ƴ��ӳo�̥[
end
fprintf('Prob 1\n');
fprintf('(i) %.8f\n', ans1_1(8));

%(ii)Simpson��s Method

%�X�G�Pprob1 (i)
%�o�{�b�ͪ�3����]�����˪k�^�A�i�H�F��n�D����T��
ans1_2 = zeros(6);
for j = 1:3
    h = 10^-j;
    num = (2-0)/h;
    ans1_2(j) = Prob1_2(0);
    for i = 1 : num-1
        if mod(i,2) == 1
            ans1_2(j) = ans1_2(j) + Prob1_2(h*i)*4;
        else      
            ans1_2(j) = ans1_2(j) + Prob1_2(h*i)*2;
        end
    end
    ans1_2(j) = ans1_2(j) + Prob1_2(2);
    ans1_2(j) = ans1_2(j)*h*(1/3);    %���F�����{���b�]�ɦh�⭫�ƪ����k�A��j�a�������ƴ��ӳo�̥[
end
fprintf('(ii)%.8f\n', ans1_2(3));

