options = optimset('GradObj', 'On', 'MaxIter', 100);
initialTheta = zeros(2,1);
[optTheta, functionVal, exitFlag] = fminunc(@contFunction, initialTheta, options) 