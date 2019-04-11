function [outsignal, outIndex] = convolute(x,xidx,h,hidx)
    [k, kidx] = fold(h,hidx);
    l = size(x,2);
    m = size(h,2);
    y = zeros(1, l+m-1);
    for i=1:l+m-1
        for j=1:l
            if i-j+1<=0 || i-j+1>m
                multi = 0;
            else multi = h(i-j+1);
            y(i) = y(i) + x(j)*multi;
        end
    end
    outsignal = y ;
    start = xidx(1,1)+hidx(1,1);
    ending = xidx(1,l)+hidx(1,m);
    outIndex = start:ending;
end