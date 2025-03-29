% Test Script for polynomial_deflation

% Define the polynomial: f(x) = (x - 4)(x + 6) = x^2 + 2x - 24
coeffs = [1 2 -24];   % Coefficients of f(x)
root = 4;             % Known root

% Call the deflation function
[Q, residue] = polynomial_deflation(coeffs, root);

% Display results
fprintf('Original Polynomial Coefficients: ');
disp(coeffs);

fprintf('Deflated Polynomial Coefficients: ');
disp(Q);

fprintf('Residue (should be 0 if root is exact): %.4f\n', residue);
