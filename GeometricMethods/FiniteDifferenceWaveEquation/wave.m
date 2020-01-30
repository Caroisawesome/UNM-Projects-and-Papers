function [Ps, num_timesteps] = wave(tmax,dt, n)

    h = 1;
    c = 100;
    
    Gaus = @(x,y) (1/(18 * pi))*exp(-((x-32)^2 + (y-32)^2)/18);

    C = ((dt^2 * c^2)/h^2);
    
    timesteps = 2*dt:dt:tmax;
    num_timesteps = length(timesteps);
    
    Ps = zeros(num_timesteps,n,n);
    P0 = zeros(n,n);
    
    for x = 1:n
       for y = 1:n
          P0(x,y) = Gaus(x,y);
       end
    end
    
    P1 = P0;
    Ps(1,:,:) = P0;
    Ps(2,:,:) = P1;

    for t = 3:num_timesteps
        for x = 1:n
           for y = 1:n
               
             xp = x+h;
             xm = x-h;
             yp = y+h;
             ym = y-h;
             
             if (x == 1) 
                 xm = n ;
             elseif (x == n)
                 xp = 1;
             end
             
               
             if (y == 1) 
                 ym = n ;
             elseif (y == n)
                 yp = 1;
             end
              
               
               Pt1 = Ps(t-1, xp, y) + Ps(t-1, x, yp) -2*Ps(t-1,x,y) + Ps(t-1,xm,y) + Ps(t-1,x,ym);
               Pt2 = Ps(t-2, x, y);
                
               Ps(t,x,y) = C*Pt1 - Pt2;
           end
        end
    end
end

