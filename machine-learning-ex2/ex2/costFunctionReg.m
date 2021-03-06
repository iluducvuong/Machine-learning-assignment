function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
z=X*theta;
a=(sigmoid(z)-y);
b=0;
for i=2:length(theta)
  b=b+lambda/(2*m)*theta(i)^2;
endfor
%J=(sum(-y.*log(sigmoid(z))-(1-y).*log(1-sigmoid(z))))/m+lambda/(2*m)*(sum(theta.^2)-theta(1));
J=(sum(-y.*log(sigmoid(z))-(1-y).*log(1-sigmoid(z))))/m+b;
for i=1:m
  X(i,:)=a(i)*X(i,:);
endfor
grad=sum(X)/m;
for i=2:length(grad)
  grad(i)=grad(i)+lambda/m*theta(i);
endfor





% =============================================================

end
