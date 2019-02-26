clear
clc

str=importdata('pic.txt');
b= max(size(str{1})); 
a = 64;
Y = zeros(a,b);  % 行数是a，列数是b
for i=1 : a
    char_col = char(str{i});
    for j = 1 : length(char_col)
        if char_col(j) == 42
            Y(i,j) = 255;
        end
    end
end
imshow(Y,[])