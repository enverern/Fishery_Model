function gr_j_hat = gradient_j_hat(u, th, uh, h, rho, c, p, q, lambdas, bheta)
    N = length(th);
    gr_j_hat = zeros(1,N - 1);
    for i = 1:N-1
        gr_j_hat(i) = h * (bheta * u(i) + exp(-rho * th(i)) * (c - p * q *uh(i)) + q * uh(i) * lambdas(i+1));
    end
end 