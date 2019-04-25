1;

clear;

data = load('ex2data2.txt');
X = data(:, [1, 2]); y = data(:, 3);

[m, n] = size(X);

X = [ones(m, 1) X];

initial_theta = zeros(n + 1, 1);

theta = GradientDes(@(t)(costFunction(t, X, y)), initial_theta, 10)

%[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);