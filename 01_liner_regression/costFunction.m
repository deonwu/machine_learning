function [J, grad] = costFunction(theta, X, y)

m = length(y);
J = 0;
grad = zeros(size(theta));

J = 0.5 / m * (predict(theta, X) - y)' * (predict(theta, X) - y);

 
grad(1) = 1 / m * sum(X * theta - y);      
grad(2) = 1 / m * sum((X * theta - y) .* X(:,2)); 
% grad = (1 / m) * X' * (predict(theta, X) - y);

end
