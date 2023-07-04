function [th, uh] = crank_nicolson(a, b, t0, tF, y0, h)
    th = t0:h:tF;
    N = length(th);
    uh = zeros(1,N);
    uh(1) = y0;
    for n = 1:N-1
        %uh(n+1)  = uh(n) + (h/2)*(uh(n)/(3*th(n))+(log(th(n))+1)/(3*th(n))+(log(th(n+1))+1)/(3*(th(n+1))));
        uh(n+1) = (uh(n)+(a(th(n))*uh(n)*h/2)+(b(th(n))*h/2)+(b(th(n+1))*h/2)) / (1-(h*a(th(n+1))/2));
    end
end