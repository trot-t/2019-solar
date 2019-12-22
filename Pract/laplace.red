m:=mat((e^(-a*g*T)/w*(w*cos(w*g*T) + a*sin(w*g*T)) - e^q,
-e^(-a*g*T)/w*(a^2+w^2)/2/a*sin(w*g*T)),
(e^(-a*(2-g)*t)*2*a/w*sin(w*g*t),
e^(-a*(2-g)*t)/w*(w*cos(w*g*T) - a*sin(w*g*T))-e^q));

f:=mat((     -e^q*i0 -U/L*(1-g)*t*e^q/(e^q-1)    ),
   (-e^q*i20+U/R*(1-e^(-2*a*(1-g)*t))*e^q/(e^q-1)));

mm:=1/m*f;

IL:=limit(mm(1,1)*(e^q-1),q,0); % current through L 
Ir:=limit(mm(2,1)*(e^q-1),q,0); % current through R
