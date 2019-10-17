function [theta] = trainLinearReg(X, y, lambda)
%TRAINLINEARREG Trains linear regression given a dataset (X, y) and a
%regularization parameter lambda
%   [theta] = TRAINLINEARREG (X, y, lambda) trains linear regression using
%   the dataset (X, y) and regularization parameter lambda. Returns the
%   trained parameters theta.
%

initial_theta = zeros(size(X, 2), 1); 

costFunction = @(t) linearRegCostFunction(X, y, t, lambda);

options = optimset('MaxIter', 200); % 'GradObj', 'on'; this parameter has been deleted while version upgrading

theta = fmincg(costFunction, initial_theta, options);

end
