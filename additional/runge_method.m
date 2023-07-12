function[th, uh] = runge_method(f, t0, tF, y0,  h)
    th = t0:h:tF;
    N = length(th);
    uh = zeros(1,N);
    uh(1) = y0;
    for n = 1:N-1
        k_1 = f(th(n), uh(n));
        k_2 = f(th(n)+h/2, uh(n)+(h*k_1)/2);
        uh(n+1) = uh(n) + h*k_2;
    end
end