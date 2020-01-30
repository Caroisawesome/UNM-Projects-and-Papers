clear;
clf;

ys = rate_coding();

sizex = length(ys(1,:));

% plot(1:sizex, ys(1, :));
% hold on;
% plot(1:sizex, ys(2, :));
% hold on;
plot(1:sizex, ys(3, :));
hold on;
plot(1:sizex, ys(4, :));
hold on;
plot(1:sizex, ys(5, :));

legend("Y3", "Y4", "Y5");
xlabel("timesteps (in 0.0001 second)");
ylabel("Output");
title("Winner takes all n = 5,  Y1 = 0.4, Y2 = 1.0");
print("winner-takes-all-n5-2", "-dpng");


% figure;
% vr = linspace(-2,2);
% res = arrayfun(@(x) phi(x) ,vr );
% plot(vr, res);
% title("Phi(v)");
% print("Phi", "-dpng");

