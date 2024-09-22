clc; clear;

% counting SAPs (loops) on a 3 by n lattice grid by recursion [WORKS]

n = input('Enter n: ');

% intializing

counts = zeros(1,n);

A1 = zeros(1,n);
A2 = zeros(1,n);

% computing sums with recurrence relations

for ii = 2:n

    A1(ii) = 1 + A1(ii-1) + A2(ii-1);
    A2(ii) = 1 + 2*A1(ii-1) + A2(ii-1);
    counts(ii) = counts(ii-1) + 2*A1(ii) + A2(ii);

end