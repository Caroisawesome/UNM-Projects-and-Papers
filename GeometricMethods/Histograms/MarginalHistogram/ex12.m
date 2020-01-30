[R, G, B] = readppm( 'cactus.ppm');

P_r = P_x(R);
P_g = P_x(G);

J = joint_hist(P_r, P_g);

[G_x, G_y] = get_marginal(J);

x_s = 1:length(G_x);
plot(x_s, G_x)
hold on
plot(x_s, G_y)
title('Marginal histograms G_x and G_y, representing the red and green components for the Cactus image')