%  clear
%  clc
% 
% fid=fopen('car.txt');
% count=1;
% str=[];
% while ~feof(fid)
%     tline = fgetl(fid);
%     str{count}=tline;
%     count=count+1;
% end
% fclose(fid);
% 
% % for z=1 : 1000
% %     b= max(size(str{z}));
% % end
% b = 128;
% a = 12100;
% Y = zeros(a,b);  % ������a��������b
% for i=1 : a
%     char_col = char(str{i});
%     for j = 1 : length(char_col)
%         if char_col(j) == 42
%             Y(i,j) = 255;
%         end
%     end
% end
% 
% c2 = cell(170,1);
% for y = 1:170
%     c2{y} = Y(y*70 : y*70+70,:);
% end
% for y1 = 1:170
%     imshow(c2{y1},[]);
% end
% % 
% % 
% % 
% % tic
% % fid=fopen('car.txt'); % ���ļ�
% % row=0;
% % while ~feof(fid) % �Ƿ��ȡ���ļ���β
% %     [~]=fgets(fid); % ����fgetl
% %     row=row+1; % �����ۼ�
% % end
% % fclose(fid); % ��ʱ�ر��ļ��Ǹ���ϰ��
% % row
% % toc
sd = input('Enter the txt:','s');
