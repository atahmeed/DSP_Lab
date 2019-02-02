function out = advance(sample,origin,k)


out = zeros(size(sample));
        
for i=1:size(out,2)
    if i<=size(out,2)-k
        out(i)=sample(i+k);
    end
end

end