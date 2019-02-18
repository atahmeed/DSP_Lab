function [outSignal] = leftShift(inSignal, inOrigin)
    origin = inOrigin-1;
    l = size(inSignal,2);
    outSignal = zeros(1,l);
   
    for i = 1:l-1
        outSignal(i) = inSignal(i+1);
    end
end