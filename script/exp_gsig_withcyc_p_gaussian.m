try
    matlabpool open local.copy3
catch e
    disp('use default matlab pool configuration');
    matlabpool open
end
param_range.p = 0.18:0.01:0.32;
% param_range.p = [ 0.05 0.02:0.01:0.04 0.06:0.01:0.12 ];
param_range.kernel_type = 1;
param_range.p_t = 0.12;
param_range.p_v = -1;
crossTest('gsig-with-cyc',param_range)
matlabpool close
