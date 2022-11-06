% enter function below
f = @(x) x^3+x-4;
a=1; b = 4; iter = 0;
if f(a)*f(b) > 0
    error('f(a) and f(b) have same sign')
else
    p = (a+b)/2;
    err = abs(f(p));
    %change err to find corresponding error
    while err > 10^-5
        if f(a)*f(p) < 0
            b = p;
        else
            a = p;
        end
        iter=iter+1;
        p=(a+b)/2;
        err = abs(f(p));
    end
end