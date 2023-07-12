function profits = profit(p, q, c, rho, th, uh, u)
    N = length(th);
    profits = zeros(1,N-1);
    for i = 1:N-1
        profits(i) = exp(-rho*th(i)) * (p * q *uh(i)-c) * u(i);
    end
end

    