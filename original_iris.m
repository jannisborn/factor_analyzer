%
% Verify original code on fisheriris data.
% Please make sure to have the /mfa/ folder with the original code in this
% directory. You can run the .sh file to download it.

load fisheriris.mat
X = meas;

iterations = 25;
k = 1;

loadings = zeros(iterations,size(X,2),k);
phis = zeros(iterations, size(X,2));
for run = 1:iterations
    [loadings(run,:,:), phis(run,:)] = ffa(X,k);
end
save(strcat('iris_result_',string(k),'.mat'), 'loadings', 'phis')


