% Question 11 answer (q11(10, small_test_rbm_w))
% takes as input the number of hidden units and the weights matrix
function answer = q11(number_of_hidden, weights)
    hidden_configurations = vbins(number_of_hidden);
    overall = 0;
    for j = 1:size(hidden_configurations, 1);
        h = hidden_configurations(j,:);
        Z = 1;
        for i = 1:size(weights, 2);
            Z *= 1+exp(sum(h*weights(:,i)));
        end
        overall += Z;
    end
    answer = log(overall);
end
