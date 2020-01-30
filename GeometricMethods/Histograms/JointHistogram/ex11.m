[r_s, g_s] = ppm_read( 'queen_butterfly_fish.ppm');

P_r = P_x(r_s);
P_g = P_x(g_s);

J = joint_hist(P_r, P_g);

h = heatmap(J, "Title", "P(R = x,G = y) is the log of the joint probability of R and G, the red components and green components of the image", "XLabel", "x = 0 to x = 255", "YLabel", "y = 0 to y = 255");
colormap gray
grid off
