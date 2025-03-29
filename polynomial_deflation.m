function [Q, residue] = polynomial_deflation(coefficients, root)
% deflacion_polinomial - Deflates a polynomial by dividing it by (x - root)
%
% Inputs:
%   coefficients : Vector [a_n, ..., a_0] of the polynomial P(x)
%   root         : Known root r (i.e., P(r) = 0)
%
% Outputs:
%   Q       : Coefficients of the deflated polynomial (degree n-1)
%   residue : Remainder of the division (should be 0 if r is an exact root)

    n = length(coefficients) - 1;       % Degree of the polynomial
    Q = zeros(1, n);                    % Initialize array for the deflated polynomial
    Q(1) = coefficients(1);             % Copy the first coefficient


   % for i = 2:n
   %     Q(i) = Q(i-1) * root + coefficients(i);  % Synthetic division
   % end

    i = 2;
    while i <= n
        Q(i) = Q(i-1) * root + coefficients(i);
        i = i + 1;
    end

    residue = Q(end) * root + coefficients(end); % Final remainder
end
