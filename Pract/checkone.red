operator ia,i1,i2,i1a,i2a,it,it1;
% i10 = i10-u/r
let i1(t) = i10*e^(-a*t)*(a/w*sin(w*t) + cos(w*t)) + i20*e^(-a*t)*2*a/w*sin(w*t) + u/r; 
%сдвинутая
let it1(t) = i10*e^(-a*t)*(a/w*sin(w*t) + cos(w*t)) + i20*e^(-a*t)*2*a/w*sin(w*t);

let i2(t) = e^(-a*t)*(i10*(-w^2 - a^2)/2/a/w*sin(w*t) + i20*(cos(w*t) - a/w*sin(w*t))); 


%check
% проверка обоих уравний
df(i1(t),t) - 2*a*i2(t);
let -a^2*l+2*a*r-l*w^2 = 0;
%df(i2a(t),t)+r/l*i1a(t)+2*a*i2a(t);

%проверяем сумму 
let it(t) = e^(-a*t)/w*(i10*(w*cos(w*t) + (a^2-w^2)/2/a*sin(w*t)) + i20*(w*cos(w*t)+a*sin(w*t))); 

check := it(t) - it1(t) - i2(t);







