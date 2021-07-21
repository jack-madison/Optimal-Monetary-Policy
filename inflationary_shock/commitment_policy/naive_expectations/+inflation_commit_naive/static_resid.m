function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = inflation_commit_naive.static_resid_tt(T, y, x, params);
end
residual = zeros(11, 1);
residual(1) = (-0.5)*params(4)*2*y(1)+y(10)+y(9)*(-params(2))+params(7)*y(7)*(-params(6))+T(1)*y(7)*(-(1-params(6)));
residual(2) = (-0.5)*2*y(2)+y(9)+params(7)*(-params(6))*y(8)+T(1)*(-(1-params(6)))*y(8);
residual(3) = y(10)*T(2);
residual(4) = y(11)+params(7)*y(11)*(-params(5))-y(9);
residual(5) = y(7)-y(10);
residual(6) = y(10)*(-T(2))+y(8)+y(9)*(-params(1));
residual(7) = y(5)-(y(1)*params(6)+y(1)*(1-params(6)));
residual(8) = y(6)-(params(6)*y(2)+(1-params(6))*y(2));
residual(9) = y(2)-(params(1)*y(6)+y(1)*params(2)+y(4));
residual(10) = y(1)-(y(5)-T(2)*(y(3)-y(6)));
residual(11) = y(4)-(params(5)*y(4)+x(1));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
