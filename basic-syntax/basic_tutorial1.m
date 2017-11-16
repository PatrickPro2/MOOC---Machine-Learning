% ·��
pwd;
cd;

% ����·���������ļ�
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

eye(2); % б�ԽǾ���
flipud(eye(2)); % ����б�Խ�

a = [1 15 2 0.5];
a < 5; % ����ÿһ����boolֵ
find(a < 5); % ���ط�������ֵ������λ��

[r,c] = find(a < 5); % ��������������r��������c������
[max_vector max_index] = max(a); % max_vector����ÿ�����ֵ�Ͷ�Ӧ����������ֵmax_index

% basic function
sum(a);
prod(a);
floor(a); % ����ȡ��
cell(a); % ��������
a(:); % turn A into a vector

max(max(a));
max(a(:));

sum(a,1) % sum up every column
sum(a,2) % sum up every row

% ��ͼ
t = [0:0.1:0.98];
y1 = sin(2*pi*4*t);
y2 = cos(2*pi*4*t);
plot(t,y1);
hold on;
plot(t,y2);
% ��ʱ����ͼ��������ͬ��ͼ��
xlabel('time');
ylabel('value');
legend('sin', 'cos'); % ���ͼ��
title('my plot'); % ��ӱ���
print -dpng 'myPlot.png';

subplot(1,2,1); % divides a plot 1 by 2 grid, access first element
axis([0.5 1 -1 1])

a = magic(5);
imagesc(a); % create a colourful 5 by 5 matrix
imagesc(a), colorbar, colormap gray; % creat a gray color map