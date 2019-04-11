function [outSignal,outindex] = shift(inSignal, index, shift)
    
    outindex = index-shift;

    outSignal = inSignal;

end