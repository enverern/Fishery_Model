function [th,uh] = logistic_eulimp(tF, y0, h)
    th = 0:h:tF;
    N = length(th);
    uh = zeros(1,N);
    uh(1) = y0;
    for n = 1:N-1
        del = (1/h - 3)^2 + 4*uh(n)/h;
        if (del < 0)
            uh(n+1) = uh(n);
        else
            uh(n+1) = (-(1/h-3)+sqrt(del)) / 2;
        end
    end
end