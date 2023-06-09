function[] = only_cos(n)

figure

hold on;
grid on;
grid minor;
for i = 0:2
    x = i:0.001:i + 0.999;
    [y] = getDecimal(x);
    plot(x, y, 'Color', "#0072BD")

    scatter(i + 1, 1, 'MarkerEdgeColor', "#0072BD");

end

for i = -3:-1
    x = (i + 0.001):0.001:i+1;
    [y] = -getDecimal(x);
    plot(x, y, 'Color', "#0072BD")

    scatter(i, 1, 'MarkerEdgeColor', "#0072BD");

end

s = 0;

x = -3:0.001:3;

y = [];

for el = x
    s = 1/2;
    for j = 1:n

        s = s + (6 * ((-1)^j - 1) / pi^2 / j^2  + 4 / pi / j * sin(pi*j/2)*cos(pi*j/6)) * cos(pi*el*j / 3);
    end
    y(end+1) = s;
end
plot(x, y, 'Color', "#D95319")

axis([-3 3 0 3])

title("Разложение только по cos с частичными суммами S_{" + num2str(n) + "}")

saveas(gcf, "graphs\Разложение только по cos с частичными суммами S_{" + num2str(n) + "}.png")



end