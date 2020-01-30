img_og = readpgm('lena.pgm');
pmf_og = get_pmf(img_og, 256);

img_com = readpgm('lena-jpeg.pgm');
pmf_com = get_pmf(img_com, 256);

H_x_og = Hx(pmf_og);
H_x_com = Hx(pmf_com);

disp(H_x_og);
disp(H_x_com);


P_y_g_x = transition_fn(img_og,img_com);
P_x_g_y = transition_fn(img_com,img_og);


H_y_given_x = Hy_x(pmf_og, P_y_g_x);
H_x_given_y = Hy_x(pmf_com, P_x_g_y);

disp(H_y_given_x);
disp(H_x_given_y);

% plot(pmf_og);



% hold on;

% plot(pmf_com);


