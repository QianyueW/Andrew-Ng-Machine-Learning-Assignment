function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% for i = 1:m
% g(i) = 1/(1 + exp(-z(i)));
% end

g = 1./(exp(-1 * z) + 1);

% =============================================================

end
