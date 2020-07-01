function coef= lsfit(t,b,n)
  %Construct coefficients of the polynomial of degree at most n-1
  %that best fits data (t,b)
  
  t=t(:); b=b(:);
  m=length(t)
  A=ones(m,n);
  for j=1:n-1
    A(:,j+1)=A(:,j).*t;
  end 
  
  B=A'*A;
  y=A'*b;
  coef=B\y;
  
  