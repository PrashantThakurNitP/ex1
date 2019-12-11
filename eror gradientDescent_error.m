function [theta, J_history] = error_gradientDescent(X, Y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(Y); % number of training examples
J_history = zeros(num_iters, 1);

	
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
for iter = 1:num_iters,
	predict1=X*theta;
	sqrErrors=(predict1-Y).^2;
	delta=sqrErrors*X;
	theta=theta-alpha*delta;

    J_history(iter) = computeCost(X, Y, theta);
    predict=X*theta;
	sqrErrors=(predict-Y).^2;
	J_history(iter)=1/(2*m)*sum(sqrErrors);

end;


