function [rxy,lag] = ccor(x,Xn,y,yn)
    [y,yn] = fold(y,yn);
    [rxy,lag] = convolute(x,Xn,y,yn);
end