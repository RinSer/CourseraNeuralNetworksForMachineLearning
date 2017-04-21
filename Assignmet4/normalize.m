function normalized = normalize(X);
    mu = mean(mean(X));
    sigma = std(std(X));
    normalized = [ (X.-mu)./sigma >= 0.5 ];
end
