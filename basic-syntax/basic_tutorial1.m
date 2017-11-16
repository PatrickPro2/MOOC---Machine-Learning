% 路径
pwd;
cd;

% 载入路径下数据文件
% load('')

A = [1 2 3; 4 5 6; 7 8 9];
A(2,:); % ":" means every element along that row
A(:,2); % ":" means every element along that column
A([1 3], :);
A([1 3], [2 3]);
A = [A, [10; 100; 1000]];
A(:) % put all elements of A into a single vector

B = [11 11 11 11; 22 22 22 22; 33 33 33 33];
C = [A B];
D = [A; B]

A .^ 2;
A .* B;

eye(2); % 斜对角矩阵
flipud(eye(2)); % 反向斜对角

a = [1 15 2 0.5];
a < 5; % 返回每一处的bool值
find(a < 5); % 返回符合条件值的索引位置

[r,c] = find(a < 5); % 返回满足条件的r行向量和c列向量
[max_vector max_index] = max(a); % max_vector返回每列最大值和对应向量的索引值max_index

% basic function
sum(a);
prod(a);
floor(a); % 向下取整
cell(a); % 四舍五入
a(:); % turn A into a vector

max(max(a));
max(a(:));

sum(a,1) % sum up every column
sum(a,2) % sum up every row

% 画图
t = [0:0.1:0.98];
y1 = sin(2*pi*4*t);
y2 = cos(2*pi*4*t);
plot(t,y1);
hold on;
plot(t,y2);
% 此时两个图将出现在同张图上
xlabel('time');
ylabel('value');
legend('sin', 'cos'); % 添加图例
title('my plot'); % 添加标题
print -dpng 'myPlot.png';

subplot(1,2,1); % divides a plot 1 by 2 grid, access first element
axis([0.5 1 -1 1])

a = magic(5);
imagesc(a); % create a colourful 5 by 5 matrix
imagesc(a), colorbar, colormap gray; % creat a gray color map