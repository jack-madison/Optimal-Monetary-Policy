function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = inflation_commit_naive.static_g1_tt(T, y, x, params);
end
g1 = zeros(11, 11);
g1(1,1)=(-0.5)*2*params(4);
g1(1,7)=params(7)*(-params(6))+T(1)*(-(1-params(6)));
g1(1,9)=(-params(2));
g1(1,10)=1;
g1(2,2)=(-1);
g1(2,8)=params(7)*(-params(6))+T(1)*(-(1-params(6)));
g1(2,9)=1;
g1(3,10)=T(2);
g1(4,9)=(-1);
g1(4,11)=1+params(7)*(-params(5));
g1(5,7)=1;
g1(5,10)=(-1);
g1(6,8)=1;
g1(6,9)=(-params(1));
g1(6,10)=(-T(2));
g1(7,1)=(-1);
g1(7,5)=1;
g1(8,2)=(-1);
g1(8,6)=1;
g1(9,1)=(-params(2));
g1(9,2)=1;
g1(9,4)=(-1);
g1(9,6)=(-params(1));
g1(10,1)=1;
g1(10,3)=T(2);
g1(10,5)=(-1);
g1(10,6)=(-T(2));
g1(11,4)=1-params(5);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
