function [J,grade] = computeCostMulti(X, y, theta,lambda)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


J=1/(2*m)*sum(((X*theta-y).^2));

grade1 = X(:,1)'*(X*theta-y)/m;
grade2 = 1/m*X(:,2:end)'*(X*theta-y)+lambda/m*theta(2:end);
grade = [grade1;grade2];

% =========================================================================

end
