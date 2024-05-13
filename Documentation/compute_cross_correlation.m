function cross_corr_matrix = compute_cross_correlation(matrix)
    % Get the number of columns in the matrix
    num_cols = size(matrix, 2);
    
    % Initialize cross-correlation matrix
    cross_corr_matrix = zeros(num_cols);
    
    % Compute cross-correlation between columns
    for i = 1:num_cols
        for j = 1:num_cols
            cross_corr_matrix(i, j) = xcorr(matrix(:,i), matrix(:,j), 0, 'coeff');
        end
    end
end
