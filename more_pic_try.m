clear
clc
str_1=importdata('car_simple.txt');
str = str_1.textdata;
for z=1 : 64
    b= max(size(str{z}));
end
 
a = 64;   %��Ҫ��
Y = zeros(a,b);  % ������a��������b
for i=1 : a
    char_col = char(str{i});
    for j = 1 : length(char_col)  
        if char_col(j) == 42
            Y(i,j) = 255;
        end
    end
end
imshow(Y,[])