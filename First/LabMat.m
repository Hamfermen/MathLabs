close all;
clear all;
clc;
x = 1:1:1000
a = 32:1:33
y = -10000:0:10000
n = 1000;
for i = 1:2
    s = 0;
    for j = 1:10
        s = s + ((-2 * x(j)^2 - 2 * a(i)^2 - ((2 * x(j)^2 + 2 * a(i)^2)^2 - 4*x(j)^4+8*a(i)^2*x(j)^2)^(0.5))^(0.5) / (-2 * n^2 - 2 * a(i)^2 - ((2 * n^2 + 2 * a(i)^2)^2 - 4*n^4+8*a(i)^2*n^2)^(0.5)))^(0.5) * (1 / n);
    end
    s
end
