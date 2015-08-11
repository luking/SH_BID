clear ; close all; clc;
data = load('raw_data.txt');
X = data(:, 1:16);
y = data(:, 17);
m = length(y);
[X_norm mu sigma] = featureNormalize(X);
X=[ones(size(X),1) X_norm];
lambda = 0.1;
options = optimset('GradObj', 'on', 'MaxIter', 400);
initial_theta = zeros(size(X,2), 1);
[theta cost] = fminunc(@(t)(costFunction(X,y,t,lambda)),initial_theta,options);

predict = X*theta-y;

fprintf('cost is %f\n', cost);
fprintf("diferrence is %f\n", predict);