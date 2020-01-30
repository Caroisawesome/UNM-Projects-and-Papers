function I=readpgm(fname)

% readpgm - reads a grey scale image in ASCII pgm format.
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

I=fscanf(fid,'%d',[m(1),m(2)])';

fclose(fid);