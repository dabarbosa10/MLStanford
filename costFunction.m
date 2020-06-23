function J=costFunction(X,y,theta)
  %X:matrix containing samples
  %y=Label class
  %theta= Parameters
  m=size(X,1); %takes the number of rows, i.e, the number of rows
  predictions= X*theta; % predictions on all  m examples
  sqrErrors=(predictions-y).^2; % squared errors
  
  J=1/(2*m)*sum(sqrErrors);