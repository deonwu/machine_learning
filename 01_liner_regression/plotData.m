function plotData(X, y)


figure; hold on;

x = X(: , 2);

plot(x, y, 'k+', 'LineWidth', 2, ...
	'MarkerSize', 7);

hold off;

end
