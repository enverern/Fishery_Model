function [th, uh] = explicit_euler(u, f, t0, tF, y0,  h)
    th = t0:h:tF;
    N = length(th);
    uh = zeros(1,N);
    uh(1) = y0;
    for n = 1:N-1
        uh(n+1) = uh(n) + h*f(th(n),uh(n),u(n));
    end
end