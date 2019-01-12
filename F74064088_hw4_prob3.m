%initialize
e = 1.66*10^-21;
s = 3.4*10^-10;
m = 1.66*10^-27*40;

%Prob3 (a)
%initialize
ra1(1) = 2.5*10^-10;      %right one
ra2(1) = -2.5*10^-10;     %left one
r = abs(ra1(1) - ra2(1)); %distance
Fa(1) = 4*e*((12/s)*(s/r)^13-(6/s)*(s/r)^7);
aa1 = Fa/m;
aa2 = -Fa/m;
va1 = 0;
va2 = 0;


t = 10^-16;
num = 10^-10/t;
time(1) = 0;
%使用尤拉法
for i = 2:num
   ra1(i) = ra1(i-1) + va1*t+aa1*t^2/2;
   ra2(i) = ra2(i-1) + va2*t+aa2*t^2/2;
   va1 = va1+aa1*t;
   va2 = va2+aa2*t;
   r = abs(ra1(i) - ra2(i));
   Fa(i) = 4*e*((12/s)*(s/r)^13-(6/s)*(s/r)^7);
   aa1 = Fa(i)/m;
   aa2 = -Fa(i)/m;
   time(i) = i*t;
end

f9 = figure;
plot(time,Fa);
title('Fig 9');
xlabel('t');
ylabel('F');

%以下為製作gif檔

%{
h = figure;
filename = 'F74064088_hw4_prob3(a).gif';

%選定t為10^-16*300
%以下都變化好加在code裡亂成一團了QQ
for n = 1:1:num/300
    
    plot(ra1(floor(n*300)),0,'o',...
         ra2(floor(n*300)), 0,'o');
    axis([-3*10^-10, 3*10^-10, -1, 1]);	
    drawnow;
    
    % Capture the plot as an image
    frame = getframe(h); 
    im = frame2im(frame); 
    [imind,cm] = rgb2ind(im,256); 
    % Write to the GIF File 
    if n == 1
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
    else 
        imwrite(imind,cm,filename,'gif','WriteMode','append'); 
    end 
end
%}







%{ 
%Prob3 (b)這題做不出來...
rb1x(1) = 0;
rb1y(1) = 3.8164*10^-10/2;
rb2x(1) = 0;
rb2y(1) = -3.8164*10^-10/2;
rb3x(1) = 2*10^-9;
rb3y(1) = 0;
rb12 = sqrt((rb1x(1)-rb2x(1))^2 + (rb1y(1)-rb2y(1))^2);
rb13 = sqrt((rb1x(1)-rb3x(1))^2 + (rb1y(1)-rb3y(1))^2);
rb23 = sqrt((rb2x(1)-rb3x(1))^2 + (rb2y(1)-rb3y(1))^2);
Fb12(1) = 4*e*((12/s)*(s/rb12)^13-(6/s)*(s/rb12)^7);


%Fb13(1) = 4*e*((12/s)*(s/rb13)^13-(6/s)*(s/rb13)^7);
%Fb23(1) = 4*e*((12/s)*(s/rb23)^13-(6/s)*(s/rb23)^7);
Fb13(1) = 0;
Fb23(1) = 0;
ab1x = +Fb13(1)/m*((rb1x(1)-rb3x(1))/rb13)+Fb12(1)/m*((rb1x(1)-rb2x(1))/rb12);
ab1y = +Fb13(1)/m*((rb1y(1)-rb3y(1))/rb13)+Fb12(1)/m*((rb1y(1)-rb2y(1))/rb12);
ab2x = +Fb12(1)/m*((rb2x(1)-rb1x(1))/rb12)+Fb23(1)/m*((rb2x(1)-rb3x(1))/rb23);
ab2y = +Fb12(1)/m*((rb2y(1)-rb1y(1))/rb12)+Fb23(1)/m*((rb2y(1)-rb3y(1))/rb23);
ab3x = +Fb23(1)/m*((rb3x(1)-rb2x(1))/rb23)+Fb13(1)/m*((rb3x(1)-rb1x(1))/rb13);
ab3y = +Fb23(1)/m*((rb3y(1)-rb2y(1))/rb23)+Fb13(1)/m*((rb3y(1)-rb1y(1))/rb13);

vb1x = 0;
vb1y = 0;
vb2x = 0;
vb2y = 0;

%vb3x = 300;
vb3x = 0;
vb3y = 0;

t = 10^-16;
num = 10^-10/t;
timeb(1) = 0;
for i = 2:num

   rb1x(i) = rb1x(i-1) + vb1x*t+ab1x*t^2/2;
   rb1y(i) = rb1y(i-1) + vb1y*t+ab1y*t^2/2;
   rb2x(i) = rb2x(i-1) + vb2x*t+ab2x*t^2/2;
   rb2y(i) = rb2y(i-1) + vb2y*t+ab2y*t^2/2; 
   rb3x(i) = 0;
   rb3y(i) = 0;
%   rb3x(i) = rb3x(i-1) + vb3x*t+ab3x*t^2/2;
%   rb3y(i) = rb3y(i-1) + vb3y*t+ab3y*t^2/2;

   vb1x = vb1x+ab1x*t;
   vb1y = vb1y+ab1y*t;
   vb2x = vb2x+ab2x*t;
   vb2y = vb2y+ab2y*t;  
%   vb3x = vb3x+ab3x*t;
%   vb3y = vb3y+ab3y*t;
   rb12 = sqrt((rb1x(i)-rb2x(i))^2 + (rb1y(i)-rb2y(i))^2);
   rb13 = sqrt((rb1x(i)-rb3x(i))^2 + (rb1y(i)-rb3y(i))^2);
   rb23 = sqrt((rb2x(i)-rb3x(i))^2 + (rb2y(i)-rb3y(i))^2);
   Fb12(i) = 4*e*((12/s)*(s/rb12)^13-(6/s)*(s/rb12)^7);
   Fb13(i) = 0;
   Fb23(i) = 0;
%   Fb13(i) = 4*e*((12/s)*(s/rb13)^13-(6/s)*(s/rb13)^7);
%   Fb23(i) = 4*e*((12/s)*(s/rb23)^13-(6/s)*(s/rb23)^7);
   ab1x = Fb12(i)/m*((rb1x(i)-rb2x(i))/rb12)+Fb13(i)/m*((rb1x(i)-rb3x(i))/rb13);
   ab1y = Fb12(i)/m*((rb1y(i)-rb2y(i))/rb12)+Fb13(i)/m*((rb1y(i)-rb3y(i))/rb13);
   ab2x = Fb12(i)/m*((rb2x(i)-rb1x(i))/rb12)+Fb23(i)/m*((rb2x(i)-rb3x(i))/rb23);
   ab2y = Fb12(i)/m*((rb2y(i)-rb1y(i))/rb12)+Fb23(i)/m*((rb2y(i)-rb3y(i))/rb23);
   ab3x = Fb13(i)/m*((rb3x(i)-rb1x(i))/rb13)+Fb23(i)/m*((rb3x(i)-rb2x(i))/rb23);
   ab3y = Fb13(i)/m*((rb3y(i)-rb1y(i))/rb13)+Fb23(i)/m*((rb3y(i)-rb2y(i))/rb23);
   timeb(i) = i*t;
   
end

f10 = figure;
plot(timeb, rb1y, timeb, rb2y);
title('Fig 10');
xlabel('t');

%}





