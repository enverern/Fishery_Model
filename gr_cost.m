function [gr_Jh] = gr_cost(u, f, t0, tF, y0, h, rho,c,p,q, lambda_N, derr_g, bheta)
    [th, uh] = explicit_euler(u, f, t0, tF, y0,  h);
    lambdas = lambda_array(u,th,uh,h,rho,p,q, lambda_N, derr_g);
    gr_Jh = gradient_j_hat(u, th, uh, h, rho, c, p, q, lambdas, bheta);
end