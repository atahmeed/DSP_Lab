function [out, index]= fold(in, n)
    index = -fliplr(n);
    out = fliplr(in);    
end