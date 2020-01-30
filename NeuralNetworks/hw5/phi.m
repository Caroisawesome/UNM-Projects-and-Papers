function y = phi(v)
    if (v < 0) 
        y = 0;
    else 
        y = v^2 / (0.1 + v^2);
    end
end

