function x = mockData(theta, len)
	init_x = rand(len, 1);
	init_x1 = rand(len, 1) * 10;
	init_x2 = rand(len, 1) * 10;

	x1 = round(init_x * 100);
	x = [ones(len, 1), x1];
	y = x * theta + init_x1 - init_x2;
	x = [x, y];
end