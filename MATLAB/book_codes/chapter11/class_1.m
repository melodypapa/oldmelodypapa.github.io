f = figure;
disp(f);

g = groot;
disp(g)
gstruct = get(g);

properties(f)
methods(f)

clf
x = -2*pi: 1/5: 2* pi;
y = sin(x);
h1 = plot(x,y);
h1.Children