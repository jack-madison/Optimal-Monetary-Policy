function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = demand_commit_rational.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(11, 22);
g1(1,6)=(-0.5)*2*params(4);
g1(1,4)=T(2)*(-(1-params(6)));
g1(1,19)=params(7)*(-params(6));
g1(1,14)=(-params(2));
g1(1,15)=1;
g1(2,7)=(-1);
g1(2,5)=T(2)*(-(1-params(6)));
g1(2,20)=params(7)*(-params(6));
g1(2,14)=1;
g1(3,15)=T(1);
g1(4,15)=(-1);
g1(4,16)=1;
g1(4,21)=params(7)*(-params(5));
g1(5,12)=1;
g1(5,15)=(-1);
g1(6,13)=1;
g1(6,14)=(-params(1));
g1(6,15)=(-T(1));
g1(7,1)=(-params(6));
g1(7,17)=(-(1-params(6)));
g1(7,10)=1;
g1(8,2)=(-params(6));
g1(8,18)=(-(1-params(6)));
g1(8,11)=1;
g1(9,6)=(-params(2));
g1(9,7)=1;
g1(9,11)=(-params(1));
g1(10,6)=1;
g1(10,8)=T(1);
g1(10,9)=(-1);
g1(10,10)=(-1);
g1(10,11)=(-T(1));
g1(11,3)=(-params(5));
g1(11,9)=1;
g1(11,22)=(-1);

end
