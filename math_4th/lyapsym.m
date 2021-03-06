%    function X=lyapsym(A,B,C)
%    if nargin==2, C=B; B=A.'; end
%    [nr,nc]=size(C); A0=kron(A,eye(nc))+kron(eye(nr),B.');
%    try
%       C1=C.'; x0=-inv(A0)*C1(:); X=reshape(x0,nc,nr)';
%    catch, error('singular matrix found.'), end
function X=lyapsym(A,B,C)
if nargin==2, C=B; B=A'; end
[n,m]=size(C); A0=kron(A,eye(m))+kron(eye(n),B.');
try
   C1=C.'; x0=-inv(A0)*C1(:); X=reshape(x0,m,n).';
catch, error('singular matrix found.'), end 
