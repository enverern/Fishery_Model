function [Jh] = cost(u, f, t0, tF, y0, h, rho,c,p,q)
    [th, uh] = explicit_euler(u, f, t0, tF, y0,  h);
    Jh = Jhat(u,th,uh,h,rho,c,p,q);
end