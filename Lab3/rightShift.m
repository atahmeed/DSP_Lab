function [outSignal] =  rightShift(inSignal,inOrigin)
    l = size(inSignal,2);
    outSignal = zeros(1,l);
    
    for i = 2:l
        outSignal(i) = inSignal(i-1);
    end
end