% Newton method
% given function
f = @(x) 4*x^3+2*x-2;
% the derivative of the given function
df = @(x) 12*x^2+2;
p0=1; iter=0;
for n=1:200
    p=p0-f(p0)/df(p0);
    err=abs(p-p0);
    if err>=10^(-4)
        iter=iter+1;
        p0=p;
    else
        break
    end
end
answer=p, iterations=iter