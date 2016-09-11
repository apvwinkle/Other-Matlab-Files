a = atand(2.4/4.8)
b = 90-a;
c = atand(.9/3.6);
d = 45;
e = atand(1/1.35);

AB = (1.5-1.2)/cosd(b);
AB = (5.4-1.2)/cosd(b);
AC = AB*sind(b);
syms BD BC
x = -BD*sind(b) + AB*sind(b) - BC*sind(45) == 0;
y = -BD*cosd(b) + AB*cosd(b) + BC*cosd(45) - 2.4 == 0;
S = solve(x,y);
v = [S.BD S.BC];
v = double([S.BD S.BC]);
BD = v(1); BC = v(2);
syms CD CE
x = CD*cosd(a) - BC*cosd(45) - CE*sind(c);
y = CD*sind(a) + BC*sind(45) - CE*cosd(c) - AC == 0;
x = CD*cosd(a) - BC*cosd(45) - CE*sind(c) == 0;
S = solve(x,y);
v = double([S.CD S.CE]);
CD = v(1); CE = v(2);