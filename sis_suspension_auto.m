function dx = sis_suspension_auto(t, x, u_func)
m1 = 290; b1 = 1000; m2 = 59; k1 = 16182; f = 0; k2 = 19000;
z = u_func(t);

x1 = x(1); 
x2 = x(2);
x3 = x(3); 
x4 = x(4); 
    
    
dx = zeros(4, 1);

dx(1) = x3;
dx(2) = x4;
dx(3) = (1/m1) * (-b1*x3 + b1*x4 - k1*x1 + k1*x2 + f);
dx(4) = (1/m2) * (b1*x3 - b1*x4 + k1*x1 - (k1+k2)*x2 - f + k2*z);
end