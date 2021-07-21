function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = inflation_commit_naive.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(11, 1);
residual(1) = (-0.5)*params(4)*2*y(6)+y(15)+y(14)*(-params(2))+params(7)*y(19)*(-params(6))+T(2)*y(4)*(-(1-params(6)));
residual(2) = (-0.5)*2*y(7)+y(14)+params(7)*(-params(6))*y(20)+T(2)*(-(1-params(6)))*y(5);
residual(3) = T(1)*y(15);
residual(4) = y(16)+params(7)*y(21)*(-params(5))-y(14);
residual(5) = y(12)-y(15);
residual(6) = y(15)*(-T(1))+y(13)+y(14)*(-params(1));
residual(7) = y(10)-(params(6)*y(1)+(1-params(6))*y(17));
residual(8) = y(11)-(params(6)*y(2)+(1-params(6))*y(18));
residual(9) = y(7)-(y(11)*params(1)+params(2)*y(6)+y(9));
residual(10) = y(6)-(y(10)-T(1)*(y(8)-y(11)));
residual(11) = y(9)-(params(5)*y(3)+x(it_, 1));

end
