Kp = 10
Ki = 0
Kd = 5


p = 0
L = 0
i = 0
I = 0
d = 0
D = 0

for t = 4.99999999:0.000000000001:5
    err = cos(3*t) * exp(-t);
    p = Kp * err;
    D = (err - L) / 0.000000000001;
    d = (D * Kd);
    L = err;
    pid = p + i + d;
    disp(pid)
end