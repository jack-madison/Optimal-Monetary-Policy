var x pi i e Ex Epi;
varexo epsilon;
parameters beta kappa sigma lambda rho alpha;

beta = 0.99;
kappa = 0.04;
sigma = 1;
lambda = 0.05;
rho = 0;
alpha = 0.5;

model(linear);
Ex = alpha*x(-1) + (1 - alpha)*x(+1);
Epi = alpha*pi(-1) + (1 - alpha)*pi(+1);
pi = beta*Epi + kappa*x;
x = Ex - (1/sigma)*(i - Epi) + e;
e = rho*e(-1) + epsilon;
end;

shocks;
var epsilon;
stderr 1;
end;

planner_objective (-(1/2)*(pi^2 + lambda * x^2));
discretionary_policy(planner_discount = beta, instruments = (i));
stoch_simul(irf=50);
