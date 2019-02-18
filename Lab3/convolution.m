function [out,outOrigin] = convolution(input, h, ino, ho)
    hneg = fliplr(h);
    L = size(input,2);
    ho = L-ho+1;
    X = zeros(1, 3*L);
    H=X;
    out = X;
    for i=1:size(input,2)
        H(i) = hneg(i);
    end
    for i =L+1:2*L
        X(i) = input(i-L);
    end
    for i =1:size(X,2)
        out(1,i) = Ws(X,H);
        H = rightShift(H);
    end
    out = out(2:size(out,2)-L);
    outOrigin = L-ho;
end