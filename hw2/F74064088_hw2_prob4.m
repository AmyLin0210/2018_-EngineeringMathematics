ans4 = zeros(7);
aa = 40;
max = zeros(aa);
min = zeros(aa);
max(1) = 1;
min(1) = -1;
probAns = 100;
probNum = 100;


%�b�i�J�o��for loop���e�A�ڥ��Hx = 1�a�J����{���A
%�Ψ����˪k�o�{ h = 10^-7 ��i�H�o���T�v6�쪺�Ʀr�A
%(�H�W�Ҵ����{���b�ڵo�{�ͪ�C����w�g�R��...)
%�H�U��j��ܭn�����˪k�ͪ�7��
%for loop���N�q��ܧڦb���G���G�i�k
for count = 1 : aa
    j = 7;
    h = 10^-j;              %set dx
   
    x = max(count);         %�����G���G�i�k���j�����Ӽ�
    num = (x-0)/h;
 
    ans4(1) = Prob4(0);     %�Nx�a�J�n�����]h = 10^-7�^
    for i = 0:num       
        if(mod(i,2) == 1)
            ans4(1) = ans4(1)+Prob4(i*h)*4;
        else
            ans4(1) = ans4(1)+Prob4(i*h)*2;
        end
    end
    ans4(1) = ans4(1)+Prob4(x);
    ans4(1) = ans4(1)*h*(1/3);
    
    mid = (max(count)+min(count))/2;     %�A���G���G�i�k���������Ӽ�
    x = mid;
    num = (x-0)/h;
    
    ans4(2) = Prob4(0);                  %�Nx�a�J�n�����]h = 10^-7�^
    for i = 0:num
        if(mod(i,2) == 1)
            ans4(2) = ans4(2)+Prob4(i*h)*4;
        else
            ans4(2) = ans4(2)+Prob4(i*h)*2;
        end
    end
    ans4(2) = ans4(2)+Prob4(x);
    ans4(2) = ans4(2)*h*(1/3);
    
                        %��s�϶��]���k�ۭ��p��s��ܳo�϶����ѡ^
    if count < aa       %�o��if�O���F�קK�b����z��
        if ans4(1)*ans4(2) < 0
            max(count+1) = max(count);
            min(count+1) = mid;
        else
            max(count+1) = mid;
            min(count+1) = min(count);
        end
    end

    %�e�b�q(count > 1)�O���F�קK�b����z��
    %��L�O�b��T�ר�10^-6�ɸ��Xfor loop����
    if count > 1 && abs((max(count)-min(count))/max(count)) < 10^-6
        probAns = max(count);
        probNum = count;
        break
    end

end
fprintf('Prob4\n');
fprintf('The x is %.7f\n', probAns);
