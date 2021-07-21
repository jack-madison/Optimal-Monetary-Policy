function [residual, g1, g2, g3] = dynamic(y, x, params, steady_state, it_)
    T = NaN(0, 1);
    if nargout <= 1
        residual = demand_adhoc_rational.dynamic_resid(T, y, x, params, steady_state, it_, true);
    elseif nargout == 2
        [residual, g1] = demand_adhoc_rational.dynamic_resid_g1(T, y, x, params, steady_state, it_, true);
    elseif nargout == 3
        [residual, g1, g2] = demand_adhoc_rational.dynamic_resid_g1_g2(T, y, x, params, steady_state, it_, true);
    else
        [residual, g1, g2, g3] = demand_adhoc_rational.dynamic_resid_g1_g2_g3(T, y, x, params, steady_state, it_, true);
    end
end
