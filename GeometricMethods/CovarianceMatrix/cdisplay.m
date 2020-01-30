function cdisplay(r,g,b)

% cdisplay - displays r, g, and b as a color image.
% version 2
% Lance Williams 
% Dept. of Computer Science
% Univ. of New Mexico
%

pmin=min([min(min(r)),min(min(g)),min(min(b))]);
pmax=max([max(max(r)),max(max(g)),max(max(b))]);

s=1/(pmax-pmin);
% if matlab
  M(:,:,1)=(r-pmin)*s;
  M(:,:,2)=(g-pmin)*s;
  M(:,:,3)=(b-pmin)*s;
  image(M);
% else
%   imshow((r-pmin)*s,(g-pmin)*s,(b-pmin)*s);
% end