function j_hat = Jhat(u,th,uh,h,rho,c,p,q,bheta,upper_bound_for_population)
    N = length(th); % Nh+1
    s1 = 0;
    s2 = 0;
    for i = 1:N-1
        s1 = s1+ exp(-rho*th(i+1)) * (c - p * q *uh(i+1)) * u(i+1);
    end
    for i = 0:N-2
        s2 = s2 + (u(i+1))^2;
    end
    j_hat =  (h * s1) + (bheta/2 * h * s2);
end 