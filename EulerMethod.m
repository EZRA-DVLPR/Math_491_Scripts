% enter function, initial condition, bounds := a <= t <= b, n.
f = @(t,y) t*(y+1);
y_0 = 0;
a = 0; b = 1; n = 3;

h = (b-a)/n;
w = y_0;
t = a;

% table will hold all the values of 't' and 'w' respectively
table = [t,w];

for i = 1:n
    w = w + h*f(t,w);
    t = a + i * h;
    table = [table; [t,w]];
end

% w is our end result
% table holds all of the values that were calculated for 't' and 'w'