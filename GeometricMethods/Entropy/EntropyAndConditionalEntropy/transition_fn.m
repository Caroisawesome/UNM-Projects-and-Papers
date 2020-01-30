function P_y_given_x = transition_fn(X,Y)
    
    P = zeros(256);
    
    [row,col] = size(X);
    for r=1:row
       for c=1:col
          val_x = X(r,c) + 1;
          val_y = Y(r,c) + 1;
          P(val_y, val_x ) = P(val_y, val_x ) + 1;
       end
    end
    
    [num_rows, num_cols] = size(P);
    P_y_given_x = zeros(num_rows,num_cols);
    
     for i=1:num_cols
         col_sum = sum(P(:,i));
         if (col_sum > 0)
            P_y_given_x(:,i) = P(:,i)./col_sum;
         end
     end
end

