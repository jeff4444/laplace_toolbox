function f = inverse_laplace_transform(expr, s, t)
    syms t s
    f = ilaplace(expr, s, t);
end