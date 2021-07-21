function [residual, g1, g2, g3] = static_resid_g1_g2_g3(T, y, x, params, T_flag)
% function [residual, g1, g2, g3] = static_resid_g1_g2_g3(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = demand_commit_rational.objective.static_g3_tt(T, y, x, params);
    end
    [residual, g1, g2] = demand_commit_rational.objective.static_resid_g1_g2(T, y, x, params, false);
    g3       = demand_commit_rational.objective.static_g3(T, y, x, params, false);

end
