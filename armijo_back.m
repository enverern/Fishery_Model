function t = armijo_back(data,u,d,alpha,itmax)
    % armijo_back: function that performs a line−search backtracking strategy based on the Armijo rule
    % Input :
    % data  : structure that contains all the data of the problem
    % u, d  : current iteration and direction
    % alpha : parameter for the Armijo condition
    % itmax : maximum number of iterations
    upperU = 50;
    t=1;
    J = data.J;
    f = @(a) J(projecting_u(u+a.*d, 0,upperU));
    f0 = f(0);
    it = 1;
    while f(t) > f0 - (alpha/t) * (norm(u - projecting_u(u+t.*d, 0,upperU)))^2 && it<itmax % check condition
        t = (1/2)^it; % backtrack
        it = it+1; % update it end
    end
end