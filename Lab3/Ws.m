function out = Ws(a,b)  
    s=0;
    for j = 1:size(b,2)
        s = s+ a(1,j)*b(1,j);
    end
    out=s;
end