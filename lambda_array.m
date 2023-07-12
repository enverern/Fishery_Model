function lambdas = lambda_array(u,th,uh,h,rho,p,q, lambda_N, derr_g,upper_bound_for_population)
    N = length(th);
    lambdas  = zeros(1,N);
    lambdas(N) = lambda_N;
    for i = N-1:-1:1
        lambdas(i) = lambdas(i+1) * (1 + h * (derr_g - q * u(i))) + h * (p * q * u(i) * exp(-rho * th(i) ) );
    end
end 