u=24.
r=1200.
c=277.777/1000000000.
l=0.04
w= sqrt(1./l/c - 1./4./r/r/c/c)
a=1./2./r/c
i10=0.
i20=0.

set xrange [0:0.004]
plot exp(-a*x)*((i10-u/r)*(a/w*sin(w*x)+cos(w*x))+i20/w*sin(w*x))+u/r, \
exp(-a*x)/w*(-(i10-u/r)*(a*a+w*w)/2/a*sin(w*x) + i20/2/a*(w*cos(w*x) + a*sin(w*x)))
