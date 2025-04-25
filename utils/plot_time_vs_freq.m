function plot_time_vs_freq(time_expr, laplace_expr, t, s)
    fplot(time_expr, [0, 10]); hold on;
    freq_expr = ilaplace(laplace_expr, s, t);
    fplot(freq_expr, [0, 10]);
    legend('Time Domain', 'Inverse Laplace');
    title('Time vs. Frequency Domain');
    hold off;
end