
%initialize
G = 6.67*10^-11;         
Ms = 2*10^30;
Mp = 6*10^24;
r0 = 1.5*10^11;

%Prob1 (b)
%F = Mp*Vc^2/r -> �DVc
F = (G*Ms*Mp)/(r0^2);
Vc = sqrt(r0*F/Mp);

%Prob1 (c)
%initialize
x(1) = r0;
y(1) = 0;
Vx = 0;
Vy = Vc;
ddx = -G*Ms*x(1)/r0^3;
ddy = -G*Ms*y(1)/r0^3;

h = 10^2;
num = 5*10^7/h;
t(1) = 0;
%�ϥΤשԪk�Ah = 0.1
for i = 2 : num
    x(i) = x(i-1)+Vx*h+ddx/2*h^2;
    y(i) = y(i-1)+Vy*h+ddy/2*h^2;
    Vx = Vx+ddx*h;
    Vy = Vy+ddy*h;
    ddx = -G*Ms*x(i)/r0^3;
    ddy = -G*Ms*y(i)/r0^3;
    t(i) = i*h;
end
f1 = figure;
plot(x,y);
title('Fig 1');
xlabel('x');
ylabel('y');

f2 = figure;
plot(t,x);
title('Fig 2');
xlabel('t');
ylabel('x');

f3 = figure;
plot(t,y);
title('Fig 3');
xlabel('t');
ylabel('y');


%Prob 1 (d)
%inilize
x4pre = r0;
Vx = 0;
ddx = -G*Ms*x4pre/r0^3;

h = 10^2;
num = 5*10^9/h;
count = 0;
%�ϥΤשԪk�Ah=0.1
for i = 2 : num
    x4next = x4pre+Vx*h+ddx/2*h^2;
    Vx = Vx+ddx*h;
    ddx = -G*Ms*x4next/r0^3;
    %�Yx = 0�N�O���U��
    if x4next*x4pre<0
        count = count+1;
    end
    x4pre = x4next;
end
%�]���b�@�Ӷg�����A
%x�|�q�L0�⦸�A
%�]���p��t�b0~300000���|�q�L0�X���A���H�G�o��b300000�����X�Ӷg���A
%�o�쪺�ƦA���H300000�o���W�v�A�˼ƫ�N�O�g��
%1/((count/2)/300000)�N�O����
%fprintf('count = %f\n', 1/((count/2)/(5*10^9)));


%Prob 1 (e)
%initialize
x5(1) = r0;
y5(1) = 0;
Vx = 0;
Vy = 0.7*Vc;
ddx = -G*Ms*x5(1)/r0^3;
ddy = -G*Ms*y5(1)/r0^3;

h = 100;
num = 5*10^7/h;
t5(1) = 0;
%�ϥΤשԪk
for i = 2 : num
    x5(i) = x5(i-1)+Vx*h+ddx/2*h^2;
    y5(i) = y5(i-1)+Vy*h+ddy/2*h^2;
    Vx = Vx+ddx*h;
    Vy = Vy+ddy*h;
    ddx = -G*Ms*x5(i)/r0^3;
    ddy = -G*Ms*y5(i)/r0^3;
    t5(i) = i*h;
end
f4 = figure;
plot(x5,y5);
title('Fig 4');
xlabel('x');
ylabel('y');

f5 = figure;
plot(t5,x5);
title('Fig 5');
xlabel('t');
ylabel('x');

f6 = figure;
plot(t5,y5);
title('Fig 6');
xlabel('t');
ylabel('y');

%Prob1 (f)
%����x^2+y^2
%�o�{�C�Ӧa�賣���@��
%�ҥH�P�_�L���O��O���
for i = 1:300
    %fprintf('%.7f\n',x5(i)^2+y5(i)^2);
end


%Prob1 (g)
%initialize
x7pre = r0;
y7pre = 0;
Vx = 0;
Vy = 0.7*Vc;
ddx = -G*Ms*x7pre/r0^3;
ddy = -G*Ms*y7pre/r0^3;

count = 1;
h = 100;
num = 5*10^9/h;
%�ϥΤשԪk
for i = 2 : num
    x7next = x7pre+Vx*h+ddx/2*h^2;
    y7next = y7pre+Vy*h+ddy/2*h^2;
    Vx = Vx+ddx*h;
    Vy = Vy+ddy*h;
    ddx = -G*Ms*x7next/r0^3;
    ddy = -G*Ms*y7next/r0^3;
    
    %�M����̥Oy��0�A�ñN���B��x�O���U��
    if y7next*y7pre < 0
        xAns(count) = x7next;
        count = count+1;
    end
    
    %�o����x break
    if count >= 3
        break;
    end
    x7pre = x7next;
    y7pre = y7next;
end
%�����s���ӷ|�Oy����s��t�A
%�M��N�o���t�a�Jx
%�۴�������Ȱ��H�G�N�O�L���b���b�C
%fprintf('%.7f\n', abs(xAns(2)-xAns(1))/2);


%Prob1 (h)
%initialize
y8pre = 0;
Vy = 0.7*Vc;
ddy = -G*Ms*y8pre/r0^3;

count = 0;
h = 100;
num = 5*10^9/h;
%�ϥΤשԪk
for i = 2 : num
    y8next = y8pre+Vy*h+ddy/2*h^2;
    Vy = Vy+ddy*h;
    ddy = -G*Ms*y8next/r0^3;
    if y8next*y8pre < 0
        count = count+1;
    end
    y8pre = y8next;
end
%�]���b�@�Ӷg�����A
%y�|�q�L0�⦸�A
%�]���p��t�b0~300000���|�q�L0�X���A���H�G�o��b300000�����X�Ӷg���A
%�o�쪺�ƦA���H300000�o���W�v�A�˼ƫ�N�O�g���C
%�]��1/((count/2)/300000)�N�O����
%fprintf('count = %f\n', 1/((count/2)/(5*10^9)));

%Prob1 (i)

temp = 1;
h = 100;
num = 5*10^8/h;
%�ϥΤשԪk
for k = 0.2:0.1:1
    Vy = k*Vc;
    x7pre = r0;
    y7pre = 0;
    Vx = 0;
    ddx = -G*Ms*x7pre/r0^3;
    ddy = -G*Ms*y7pre/r0^3;
    count = 1;
    for i = 2 : num
        x7next = x7pre+Vx*h+ddx/2*h^2;
        y7next = y7pre+Vy*h+ddy/2*h^2;
        Vx = Vx+ddx*h;
        Vy = Vy+ddy*h;
        ddx = -G*Ms*x7next/r0^3;
        ddy = -G*Ms*y7next/r0^3;
    
        %�M����̥Oy��0�A�ñN���B��x�O���U��
        if y7next*y7pre < 0 && count < 3
            xAns(count) = x7next;
            count = count+1;
        end
        x7pre = x7next;
        y7pre = y7next;
    end
    %��R�s�b�b���A��T�s�g���Akk�s�b��l�t�׬O�h��
    R(temp) = abs(xAns(2)-xAns(1))/2;
    T(temp) = 1/((count/2)/(5*10^8));
    kk(temp) = k;
    temp = temp+1;
end
%Temp���sR(i)^3-T(i)^2
for i = 1:temp-1
    Temp(i) = R(i)^3-T(i)^2;
end

f7 = figure;
plot(kk, Temp);
title('Fig 7');
xlabel('Vc');
ylabel('R^3-T^2');


