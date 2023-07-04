function [th,uh] = implicit_euler(a, b, t0, tF, y0, h)
    th = t0:h:tF;
    N = length(th);
    uh = zeros(1,N);
    uh(1) = y0;
    for n = 1:N-1
        uh(n+1)  = (uh(n) + h*b(th(n+1)))/(1-h*a(th(n+1)));
    end
end