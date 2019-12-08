m:=mat((1,1),(lambda_1,lambda_2));
mf:=mat((i_10-u/R),(i_20)); 
coef:= 1/m*mf; 
a:=coef(1,1);
b:=coef(2,1);
a:= ( - i_10*lambda_2*r + i_20*r + lambda_2*u)/2/i/w/r;
b:= (i_10*lambda_1*r - i_20*r - lambda_1*u)/2/i/w/r;


operator i1,i2;
let i1(t) = a*e^(lambda_1*t) + b*e^(lambda_2*t);

% проверяем формулу:
%  
% check simplification
let lambda_1 = -alpha + i*w;
let lambda_2 = -alpha - i*w;

let e^(i*w*t) + e^(-i*w*t) = 2*cos(w*t);
let e^(i*w*t) - e^(-i*w*t) = 2*i*sin(w*t);

operator check;
let check(t) = (lambda_2*e^(lambda_1*t)-lambda_1*e^(lambda_2*t))/(lambda_1-lambda_2) + 
e^(-alpha*t)*(cos(w*t)+alpha/w*sin(w*t));

let cos(w*t) + i*sin(w*t) = e^(i*w*t);

check(t);
% the end of checking simplification


%e^(-alpha*t)*(-2*alpha*sin(w*t) );

a - coef(1,1);
b - coef(2,1); 
