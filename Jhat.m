function j_hat = Jhat(u,th,uh,h,rho,c,p,q)
    N = length(th); % Nh+1
    s1 = 0;
    s2 = 0;
    s3 = 0;
    bheta = 1/2;
    phi = 10^9 ;%penalty constant
    upper_bound_for_population = 100;
    for i = 0:N-2
        s1 = s1+ exp(-rho*th(i+1)) * (c - p * q *uh(i+1)) * u(i+1);
    end
    for i = 0:N-2
        s2 = s2 + (u(i+1))^2;
    end
    s3 = (norm(min(upper_bound_for_population - uh, 0)))^2;
    j_hat =  (h * s1) + (bheta * h * s2) + phi * s3;
end 