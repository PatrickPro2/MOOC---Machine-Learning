function [ J ] = basic_tutorial3_costFunctionJ( X, y, theta )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
m = size(X,1);
prediction = X*theta;
sqrErrors = (prediction-y).^2;
J = 1/(2*m) * sum(sqrErrors);
end

