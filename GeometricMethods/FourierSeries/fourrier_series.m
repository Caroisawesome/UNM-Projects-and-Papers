function fn = fourrier_series(N, t)
    fn = pi;
    
    for w = -N:N
        if (w ~= 0)
            fn = fn +(1.0i/w)* exp(1.0i*w*t);
        end
    end
end