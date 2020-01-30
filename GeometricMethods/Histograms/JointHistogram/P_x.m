function [hist] = P_x( matrix )
    hist = zeros(1, 256);
    total_cells = 264 * 320;
    
    for row=1:264
        for col=1:320
            val = matrix(row, col);
            hist(val+1) = hist(val+1) + 1;
        end
    end
    
    for x=1:256
        hist(x) = hist(x) / total_cells;
    end
    
end