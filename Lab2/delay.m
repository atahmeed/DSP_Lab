function out = delay(sample,origin,k)
out = zeros(size(sample));
for i=1:size(out,2)
    if i>k
        out(i)=sample(i-k);
    end
end
end