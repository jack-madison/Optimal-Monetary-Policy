%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'inflation_commit_naive';
M_.dynare_version = '4.6.4';
oo_.dynare_version = '4.6.4';
options_.dynare_version = '4.6.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('inflation_commit_naive.log');
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'epsilon'};
M_.exo_names_tex(1) = {'epsilon'};
M_.exo_names_long(1) = {'epsilon'};
M_.endo_names = cell(11,1);
M_.endo_names_tex = cell(11,1);
M_.endo_names_long = cell(11,1);
M_.endo_names(1) = {'x'};
M_.endo_names_tex(1) = {'x'};
M_.endo_names_long(1) = {'x'};
M_.endo_names(2) = {'pi'};
M_.endo_names_tex(2) = {'pi'};
M_.endo_names_long(2) = {'pi'};
M_.endo_names(3) = {'i'};
M_.endo_names_tex(3) = {'i'};
M_.endo_names_long(3) = {'i'};
M_.endo_names(4) = {'e'};
M_.endo_names_tex(4) = {'e'};
M_.endo_names_long(4) = {'e'};
M_.endo_names(5) = {'Ex'};
M_.endo_names_tex(5) = {'Ex'};
M_.endo_names_long(5) = {'Ex'};
M_.endo_names(6) = {'Epi'};
M_.endo_names_tex(6) = {'Epi'};
M_.endo_names_long(6) = {'Epi'};
M_.endo_names(7) = {'MULT_1'};
M_.endo_names_tex(7) = {'MULT\_1'};
M_.endo_names_long(7) = {'MULT_1'};
M_.endo_names(8) = {'MULT_2'};
M_.endo_names_tex(8) = {'MULT\_2'};
M_.endo_names_long(8) = {'MULT_2'};
M_.endo_names(9) = {'MULT_3'};
M_.endo_names_tex(9) = {'MULT\_3'};
M_.endo_names_long(9) = {'MULT_3'};
M_.endo_names(10) = {'MULT_4'};
M_.endo_names_tex(10) = {'MULT\_4'};
M_.endo_names_long(10) = {'MULT_4'};
M_.endo_names(11) = {'MULT_5'};
M_.endo_names_tex(11) = {'MULT\_5'};
M_.endo_names_long(11) = {'MULT_5'};
M_.endo_partitions = struct();
M_.param_names = cell(7,1);
M_.param_names_tex = cell(7,1);
M_.param_names_long = cell(7,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'beta'};
M_.param_names_long(1) = {'beta'};
M_.param_names(2) = {'kappa'};
M_.param_names_tex(2) = {'kappa'};
M_.param_names_long(2) = {'kappa'};
M_.param_names(3) = {'sigma'};
M_.param_names_tex(3) = {'sigma'};
M_.param_names_long(3) = {'sigma'};
M_.param_names(4) = {'lambda'};
M_.param_names_tex(4) = {'lambda'};
M_.param_names_long(4) = {'lambda'};
M_.param_names(5) = {'rho'};
M_.param_names_tex(5) = {'rho'};
M_.param_names_long(5) = {'rho'};
M_.param_names(6) = {'alpha'};
M_.param_names_tex(6) = {'alpha'};
M_.param_names_long(6) = {'alpha'};
M_.param_names(7) = {'optimal_policy_discount_factor'};
M_.param_names_tex(7) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(7) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 11;
M_.param_nbr = 7;
M_.orig_endo_nbr = 6;
M_.aux_vars(1).endo_index = 7;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 8;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 9;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 10;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 11;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 5;
M_.eq_nbr = 11;
M_.ramsey_eq_nbr = 6;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 6 17;
 2 7 18;
 0 8 0;
 3 9 0;
 0 10 0;
 0 11 0;
 4 12 19;
 5 13 20;
 0 14 0;
 0 15 0;
 0 16 21;]';
M_.nstatic = 5;
M_.nfwrd   = 1;
M_.npred   = 1;
M_.nboth   = 4;
M_.nsfwrd   = 5;
M_.nspred   = 5;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  7 , 'name' , 'Ex' ;
  8 , 'name' , 'Epi' ;
  9 , 'name' , 'pi' ;
  10 , 'name' , 'x' ;
  11 , 'name' , 'e' ;
};
M_.mapping.x.eqidx = [1 7 9 10 ];
M_.mapping.pi.eqidx = [2 8 9 ];
M_.mapping.i.eqidx = [10 ];
M_.mapping.e.eqidx = [9 11 ];
M_.mapping.Ex.eqidx = [7 10 ];
M_.mapping.Epi.eqidx = [8 9 10 ];
M_.mapping.epsilon.eqidx = [11 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 4 7 8 ];
M_.exo_names_orig_ord = [1:1];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(11, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(7, 1);
M_.endo_trends = struct('deflator', cell(11, 1), 'log_deflator', cell(11, 1), 'growth_factor', cell(11, 1), 'log_growth_factor', cell(11, 1));
M_.NNZDerivatives = [35; 0; -1; ];
M_.static_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 0.04;
kappa = M_.params(2);
M_.params(3) = 1;
sigma = M_.params(3);
M_.params(4) = 0.05;
lambda = M_.params(4);
M_.params(5) = 0;
rho = M_.params(5);
M_.params(6) = 0.5;
alpha = M_.params(6);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.params(7) = M_.params(1);
optimal_policy_discount_factor = M_.params(7);
options_.ramsey_policy = true;
options_.instruments = {'i'};
options_.irf = 50;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('inflation_commit_naive_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('inflation_commit_naive_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('inflation_commit_naive_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('inflation_commit_naive_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('inflation_commit_naive_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('inflation_commit_naive_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('inflation_commit_naive_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
