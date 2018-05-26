binNum1 = [0 1 0 0 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
binNum2 = [1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1];
binNum3 = [0 1 0 0 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
binNum4 = [1 0 1 1 1 1 1 1 1 0 0 1 0 0 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0];
fprintf('%.80f\n',BinToDec(binNum1)/BinToDec(binNum2));
fprintf('%.80f\n',BinToDec(binNum3)/BinToDec(binNum4));
fprintf('%.80f\n',BinToDec(binNum3)-BinToDec(binNum1));
fprintf('%.80f\n',BinToDec(binNum4)-BinToDec(binNum2));
