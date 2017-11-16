function [ J ] = basic_tutorial3_costFunctionJ( X, y, theta )
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
m = size(X,1);
prediction = X*theta;
sqrErrors = (prediction-y).^2;
J = 1/(2*m) * sum(sqrErrors);
end

