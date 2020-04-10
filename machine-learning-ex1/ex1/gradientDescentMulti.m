function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


 %h0X = theta(1) + (theta(2)*x); %where the hypothesis h0(x) is given by the linear model h0(x) = h0 + h1x1
	
	%h0X=  theta(1) + theta(2) * X(:,2) + theta(3) * X(:,3)
	
	




theta = theta - (alpha * ((1/m) * sum((sum(theta' .*  X, 2) - y) .* X))' );



    % ============================================================
	
    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
	J_history(iter)

end

end
