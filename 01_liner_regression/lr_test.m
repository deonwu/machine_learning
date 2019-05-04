1;

clear;

test_theta = [10; 2];
sample_len = 30;

data = mockData(test_theta, sample_len);

X = data(:, [1, 2]); y = data(:, 3);

% plotData(X, y);

initial_theta = [1; 1];

options = optimset('GradObj', 'off', 'MaxIter', 100);

%[theta, cost, exit_flag] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options)
 theta = GradientDes(@(t)(costFunction(t, X, y)), initial_theta, 200000);