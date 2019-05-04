function grad = GradientDes(fun, initialTheta, times)
	
	grad = initialTheta;
	cost = 10000000000;

	for i = 1 : times
		display(grad);

		[new_cost, new_grad] = fun(grad);

		%printf("\n");
		display(new_grad);
		printf('\n\ni: %d,   cost: %f \n\n', i, new_cost );

		if(abs(cost - new_cost) < 0.000001) || new_cost > cost
			printf('----done \n\ni: %d,   cost: %f \n\n', i, new_cost );

			break;
		else
			cost = new_cost;
			grad = grad - 0.0001 * new_grad;
		end

	end

end