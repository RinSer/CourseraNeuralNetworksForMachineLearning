% Returns all the possible binary vectors of given length
% in the form of matrix where each row is a vector
function binary_vectors = vbins(len)
    if len == 1
        binary_vectors = [ 0 ; 1 ];
    else
        one_less = vbins(len-1);
        comb_zeros = [ zeros(size(one_less, 1), 1) one_less ];
        comb_ones = [ ones(size(one_less, 1), 1) one_less ];
        binary_vectors = [ comb_zeros; comb_ones];
    end
end
