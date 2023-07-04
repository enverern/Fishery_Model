function [u,opt,it,um,optm] = descentmethod(data,tol,itmax,u0)
    % descentmethod: function that performs a general descent method
        %                notice that the main two components of the descent
    % method are contained in the structure data
    % Input :
    % data : structure that contains all the data of the problem % tol : tolerance for termination
    % itmax : maximum number of iterations
    % u0 : starting point
    upperU = 50;
    u0 = projecting_u(u0, 0, upperU);
    u = u0;
    J = data.J;
    dJ = data.dJ;
    linesearch = data.linesearch;
    dJu = dJ(u0);
    opt = 1; it = 0;
    um = u0; optm=1;
    while opt>tol && it<itmax
        d = -dJu;
        t = linesearch(data,u,d); 
        u = u+t*d;
        u = projecting_u(u, 0, upperU);
        dJu = dJ(u);
        next_u = u-1*dJu;
        next_u = projecting_u(next_u, 0, upperU);
        opt = norm(u - next_u);
        if nargout > 3
            um = [um,u]; optm = [optm,opt];
        end
        it = it+1;
        fprintf('it= %3d J(u)= %10.6e |dJ(u)|= %10.6e\n', it, J(u), opt);
    end
end