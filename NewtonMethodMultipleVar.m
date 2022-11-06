% Newton method with 2 variables
% given function
x1 = @(x1,x2) (x1^2 + x2*2 +6)/8;
% the derivative of the given function
x2 = @(x1,x2) (x1*x2^2+x1+6)/8;
px=0; py=0; iter=0;
% table holds the list of all values through each iteration
table=[0,0];
for n=1:200
    newpx=x1(px,py);
    newpy=x2(px,py);
    err= ((((newpx)^2 + (newpy)^2)) - ((px)^2 + (py)^2));
    table(n+1,1) = newpx;
    table(n+1,2) = newpy;
    table(n+1,3) = err;
    if err>=10^(-5)
        iter=iter+1;
        px = newpx;
        py = newpy;
    else
        break
    end
end
answer=[newpx, newpy], iterations=iter