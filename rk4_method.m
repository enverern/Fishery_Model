function[th, uh] = rk4_method(f, t0, tF, y0,  h)
    th = t0:h:tF;
    N = length(th);
    uh = zeros(1,N);
    uh(1) = y0;
    for n = 1:N-1
        k_1 = f(th(n), uh(n));
        k_2 = f(th(n)+h/2, uh(n)+(h*k_1)/2);
        k_3 = f(th(n)+h/2, uh(n)+(h*k_2)/2);
        k_4 = f(th(n)+h, uh(n)+(h*k_3));
        uh(n+1) = uh(n) + h*(k_1/6+k_2/3+k_3/3+k_4/6);
    end
end