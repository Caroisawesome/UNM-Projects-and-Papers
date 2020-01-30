clear;

dt = 0.005;

[Ps, num_timesteps] = wave(3.0, dt, 64);

for i = 20:20:400
    imagesc(1:64, 1:64,squeeze(Ps(i,:,:)) );
    colormap(gray);
    colorbar;
    print(""+i, "-dpng");
end



% v = VideoWriter('wave.avi');
% open(v)
% 
% 
% caxis([20,50]);
% 
% 
% for i = 1:5:num_timesteps
% 
%     t = squeeze(Ps(i,:,:));
%     
% 
%     lsd=imagesc(1:64, 1:64, t);
%     colormap(gray);
%     colorbar;
% %     drawnow
%     
%     frame = getframe();
%     writeVideo(v,frame);
% 
% end

% close(v);
% movie(M);
% VideoWriter(M, 'wave.avi');