clear ; close all; clc;
data = load('raw_data.txt');
X = data(:, 1:16);
y = data(:, 17);
m = length(y);
[X_norm mu sigma] = featureNormalize(X);
X=[ones(size(X),1) X_norm];
alpha = 0.1;
num_iters = 400;
theta = zeros(size(X,2), 1);
[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);
%[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);

predict = X*theta;
