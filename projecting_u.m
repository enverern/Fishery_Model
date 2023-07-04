function new_u = projecting_u(u, lower_bound, upper_bound)
        u = max(u,lower_bound);
        u = min(u,upper_bound);
        new_u = u;
end