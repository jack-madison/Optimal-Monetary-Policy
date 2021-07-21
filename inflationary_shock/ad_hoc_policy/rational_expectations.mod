var x pi i e Ex Epi;
varexo epsilon;
parameters beta kappa sigma lambda rho alpha phipi phix;

beta = 0.99;
kappa = 0.04;
sigma = 1;
lambda = 0.05;
rho = 0;
alpha = 0;
phipi = 1.5;
phix = 0.5;

model(linear);
Ex = alpha*x(-1) + (1 - alpha)*x(+1);
Epi = alpha*pi(-1) + (1 - alpha)*pi(+1);
pi = beta*Epi + kappa*x + e;
x = Ex - (1/sigma)*(i - Epi);
e = rho*e(-1) + epsilon;
i = phipi*pi + phix*x;
end;

shocks;
var epsilon;
stderr 1;
end;

steady;
stoch_simul(irf=50);
