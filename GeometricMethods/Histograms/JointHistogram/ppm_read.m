function [r_s, g_s] = ppm_read (file)

    img = fopen(file, 'r');    
    line = fgets(img);
    line = fgets(img);
    dimensions = fgets(img);
    row_num = 264;
    col_num = 320;
    max_val = fgets(img);
    
    r_s = zeros(row_num, col_num);
    g_s = zeros(row_num, col_num);
    
    row = 1;
    col = 1;
    not_done = true;
    
    while(not_done)
        line = fgets(img);
        vals = sscanf(line, '%d');
        
        for x = 1:3:15
            
            if col > col_num
               col = 1;
               row = row + 1;
            end
            
            r_s(row,col) = vals(x);
            g_s(row,col) = vals(x+1);
            col = col + 1;
        end
        
        if row >= row_num
            not_done = false;
        end
        
    end
    
    fclose (img);
end