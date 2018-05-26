function [num] = BinToDec(array)
    x = 0;

    if array(1) == 0
        num = 1;
    else 
        num = -1;
    end
    
    for i=0:10
        if array(2+(10-i))==1
            x = x + (2^i);
        end
    end
    x = x-1023;
    num = num*(2^x);
    
    x = 1;
    for i=1:52
        if array(12+i) == 1
            x = x + 2^(-i);
        end
    end
    num = num*x;
       
end
   