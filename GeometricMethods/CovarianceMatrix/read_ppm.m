function [R,G,B]=read_ppm(fname)

% readppm - reads a color image in ASCII ppm format.
% version 1
% Lance Williams 
% Dept. of Computer Science
% Univ. of New Mexico
%

[fid,msg] = fopen(fname,'r','native');

foo = fgetl(fid);
fprintf('magic number = %s\n',foo);

line=fgetl(fid);
while (line(1)=='#')
  line=fgetl(fid);
end

[m,n] = sscanf(line,'%d %d');
fprintf('rows = %d cols = %d\n',m(1),m(2));

line=fgetl(fid);
max_grey_level = sscanf(line,'%d');
fprintf('max. grey level = %d\n',max_grey_level);

R=[m(1),m(2)];
G=[m(1),m(2)];
B=[m(1),m(2)];
for i=1:m(2)
  for j=1:m(1)
    [v,n]=fscanf(fid,'%d %d %d',3);
    R(i,j)=v(1);
    G(i,j)=v(2);
    B(i,j)=v(3);
  end
end

fclose(fid);