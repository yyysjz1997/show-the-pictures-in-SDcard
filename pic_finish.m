

function pic_finish()
    clear
    clc
    fprintf('It is a sd_card test!\n');

    sd = input('Enter the sd_txt file :','s');

    tic

    fid=fopen(sd);
    count=1;
    str=[];
    while ~feof(fid)
        tline = fgetl(fid);
        str{count}=tline;
        count=count+1;
    end
    fclose(fid);

    a = count - 1;
    b = 128;
    Y = zeros(a,b);  % 行数是a，列数是b
    for i=1 : a
        char_col = char(str{i});
        for j = 1 : length(char_col)
            if char_col(j) == 42
                Y(i,j) = 255;
            end
        end
    end

    yy = floor(count / 70 - 1); %一共yy张图片

    c2 = cell(yy,1);
    for y = 1:yy
        c2{y} = Y(y*70 : y*70+70,:);
    end
    
    for y1 = 1:yy
        imshow(c2{y1},[])
    end
    toc
    fprintf('There are %g pictures in the SD card!!',yy);
end



