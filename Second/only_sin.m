function[] = only_sin(n)

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
    [y] = getDecimal(x);
    plot(x, y, 'Color', "#0072BD")

    scatter(i, -1, 'MarkerEdgeColor', "#0072BD");

end

s = 0;

x = -3:0.001:3;

y = [];

for el = x
    s = 0;
    for j = 1:n
        s = s - 2 / pi / (j) * ((-1)^j+2*cos(pi*j/2)*cos(pi*j/6)) * sin(pi * j * el / 3);
    end
    y(end+1) = s;
end
plot(x, y, 'Color', "#D95319")

axis([-3 3 -3 3])

title("Разложение только по sin с частичными суммами S_{" + num2str(n) + "}")

saveas(gcf, "graphs\Разложение только по sin с частичными суммами S_{" + num2str(n) + "}.png")

end