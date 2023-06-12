function[] = M(n)

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

s = 0;

x = 0:0.001:3;

y = [];

for el = x
    s = 1/2;
    for j = 1:n
          s = s - 1 / pi / (j) * (1+2*cos(pi*j)*cos(pi*j/3)) * sin(pi * 2 * j * el / 3);
    end
    y(end+1) = s;
end
plot(x, y, 'Color', "#D95319")

axis([0 3 0 3])

title("Общее разложение с частичными суммами S_{" + num2str(n) + "}")

saveas(gcf, "graphs\Общее разложение с частичными суммами S_{" + num2str(n) + "}.png")


end