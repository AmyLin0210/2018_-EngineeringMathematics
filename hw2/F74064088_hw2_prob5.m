fprintf('Prob 5\n');

%Prob5_a
fprintf('L1 : (Rmsme*(1-((1/3)*(Me/(Ms+Me))^(1/3)), 0)\n');
fprintf('L2 : (Rmsme*(1+((1/3)*(Me/(Ms+Me))^(1/3)), 0)\n');
fprintf('L3 : (Rmsme*(1+(5/12)*(Me/(Ms+Me))), 0)\n');

%Prob5_b
Ms = 1.98892*10^30;
Me = 5.97219*10^24;
a = Me/(Ms+Me);

L1 = 1-(a/3)^(1/3);
L2 = 1+(a/3)^(1/3);
L3 = -(1+(5/12)*a);
fprintf('The distance ratio of L1: %.7f\n', L1);
fprintf('The distance ratio of L2: %.7f\n', L2);
fprintf('The distance ratio of L3: %.7f\n', L3);
