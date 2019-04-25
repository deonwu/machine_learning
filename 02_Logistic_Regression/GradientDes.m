function grad = GradientDes(fun, initialTheta, times)
	
	grad = initialTheta;
	cost = 1000;

	for i = 1 : times

		[new_cost, new_grad] = fun(grad)

		printf("\n");
		%fprintf('i: %f,   cost: %s,  grad: %f \n\n', i, cost, new_grad);
		grad = grad - 0.01 * new_grad

		if(abs(new_cost - cost) < 0.000001)
			break;
		else
			cost = new_cost;
		end

	end

end