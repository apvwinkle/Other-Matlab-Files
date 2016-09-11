function x = gaussJordan(A, b)
[rA cA] = size(A);
[rb cb] = size(b);
M = [A b];
for j = 1:cA
    pivot(M, j);
    M(j, :) = M(j, :) / M(j, j);
    for i = 1:rA
        if i == j
            continue
        end
        M(i,:) =  M(i,:) - ((M(i,j) / M(j,j)) * M(j,:));
    end
end
x = M(:, cA+cb);
end