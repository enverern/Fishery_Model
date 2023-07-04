function lambdas = lambda_array(u,th,uh,h,rho,p,q, lambda_N, derr_g)
    N = length(th);
    lambdas  = zeros(1,N);
    lambdas(N) = lambda_N;
    phi = 10^9; %penalty constant
    upper_bound_for_population = 100;
    for i = N-1:-1:1
        lambdas(i) = lambdas(i+1) * (1 + h * (derr_g - q * u(i))) + h * ((p * q * exp(-rho * th(i)) * u(i)) - (2 * phi * min(upper_bound_for_population - uh(i), 0)));
    end
end 