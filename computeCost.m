function J = computeCost(X, Y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, Y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(Y); % number of training examples

% You need to return the following variables correctly 

predict=X*theta;%m cross n * n cross 1 yield m cross 1 hence it is %X*theta
sqrErrors=(predict-Y).^2;
J=1/(2*m)*sum(sqrErrors);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
