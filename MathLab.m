close all;
clear all;
clc;

%Разбиение
n1 = 10;
n2 = 100;

%Функция
x = 0:0.01:2;
y = x.^3;

%Определение настроек окна с графиками
figure("Name", "Integrals", 'units','normalized','outerposition',[0 0 1 1])
tiledlayout(3,2)

%Правые точки будут равнятся 2k/n и идти от k = 1 до n

%Сумма для n1 разбиения
sum_1 = 0;
n = n1;
%Заполнение нулями массивов для построения графика интегральной суммы
sqp = zeros(1, n); %Массив с позициями прямоугольников
sqh = zeros(1, n); %Массив с высотами прямоугольников
% Ширину прямоугольников Matlab подбирает автоматически

for k = 1:n
    %Позиция центра прямоугольника
    sqp(k) = 2 * k / n - 1 / n;
    %Значение высоты прямоугольника
    sqh(k) = 8 / n^3 * k^3;
    %Подсчет значения суммы
    sum_1 = sum_1 + 16 / n^4 * k^3;
end
%Вывод в консоль
disp("Значение интегральной суммы для правых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_1))

%Переход к следующей позиции графиков в окне
nexttile
%График суммы
bar(sqp,sqh, 1)
hold on;
%График функции
plot(x, y);
%Название графика
title("Значение интегральной суммы для правых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_1))
hold off;

%Сумма для n2 разбиения
%Далее все будет идентично предыдущему куску кода, будут менятся лишь
%высоты прямоугольников и оснащение которые будут указаны при их изменении
n = n2;
sum_2 = 0;
sqp = zeros(1, n);
sqh = zeros(1, n);
for k = 1:n
    sqp(k) = 2 * k / n - 1 / n;
    sqh(k) = 8 / n^3 * k^3;
    sum_2 = sum_2 + 16 / n^4 * k^3;
end
disp("Значение интегральной суммы для правых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_2))

nexttile
bar(sqp,sqh, 1)
hold on;
plot(x, y);
title("Значение интегральной суммы для правых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_2))
hold off;

%Средние точки будут равнятся 2k/n + 1/n и идти будет от k = 0 до n - 1
%Высота (2k/n + 1/n)^3

sum_1 = 0;
n = n1;
sqp = zeros(1, n);
sqh = zeros(1, n);
for k = 0:n-1
    sqp(k + 1) = 2 * k / n + 1 / n;
    sqh(k + 1) = (2 * k / n + 1 / n)^3;
    sum_1 = sum_1 + (2 * k / n + 1 / n)^3 / n * 2;
end
disp("Значение интегральной суммы для средних точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_1))

nexttile
bar(sqp,sqh, 1)
hold on;
plot(x, y);
title("Значение интегральной суммы для средних точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_1))
hold off;

n = n2;
sum_2 = 0;
sqp = zeros(1, n);
sqh = zeros(1, n);
for k = 0:n-1
    sqp(k + 1) = 2 * k / n + 1 / n;
    sqh(k + 1) = (2 * k / n + 1 / n)^3;
    sum_2 = sum_2 + (2 * k / n + 1 / n)^3 / n * 2;
end
disp("Значение интегральной суммы для средних точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_2))

nexttile
bar(sqp,sqh, 1)
hold on;
plot(x, y);
title("Значение интегральной суммы для средних точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_2))
hold off;


%Левые точки будут равнятся 2k/n и идти от k = 0 до n - 1
%Высота (2k/n)^3
sum_1 = 0;
n = n1;
sqp = zeros(1, n);
sqh = zeros(1, n);
for k = 0:n-1
    sqp(k + 1) = 2 * k / n + 1 / n;
    sqh(k + 1) = (2 * k / n)^3;
    sum_1 = sum_1 + (2 * k / n)^3 / n * 2;
end
disp("Значение интегральной суммы для левых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_1))

nexttile
bar(sqp,sqh, 1)
hold on;
plot(x, y);
title("Значение интегральной суммы для левых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_1))
hold off;

n = n2;
sum_2 = 0;
sqp = zeros(1, n);
sqh = zeros(1, n);
for k = 0:n-1
    sqp(k + 1) = 2 * k / n + 1 / n;
    sqh(k + 1) = (2 * k / n)^3;
    sum_2 = sum_2 + (2 * k / n + 1 / n)^3 / n * 2;
end
disp("Значение интегральной суммы для левых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_2))

nexttile
bar(sqp,sqh, 1)
hold on;
plot(x, y);
title("Значение интегральной суммы для левых точек разбиения n = " + int2str(n) + " равно: " + sprintf('%.4f', sum_2))
hold off;

