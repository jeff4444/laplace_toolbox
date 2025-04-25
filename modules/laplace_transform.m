function L = laplace_transform(expr, t, s)
    syms t s
    L = laplace(expr, t, s);
end