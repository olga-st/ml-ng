function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

h = sigmoid(X*theta);
% You need to return the following variables correctly 

lam = eye(length(theta)) * lambda;
lam(1,1) = 0;

% You need to return the following variables correctly 
J = -sum(y .* log(h) + (1 - y) .* log(1 - h)) / m;
J = J + sum(lam * (theta .^ 2)) / 2 / m;

grad = (sum((h - y).*X)' + (lam * theta)) ./ m;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
