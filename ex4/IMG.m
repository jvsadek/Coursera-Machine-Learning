function [X,Y]= IMG(File)

%Function to convert image to grayscale and to black and white
IMG = imread(File);

Gray = rgb2gray(IMG);
invGray = (uint8(255)-Gray);
imshow(Gray(:,:,1));

[L W] = size(Gray(:,:,1));

% BW = zeros(L,W); 
% 
% for i = 1:L
%     for j = 1:W
%         if Gray(i,j) > 125 
%             %BW(i,j) = 0;
%             BW_Scal(i,j) = (BW(i,j)-175)/255;
%         else 
%             %BW(i,j) = 1; 
%             BW_Scal(i,j) = (BW(i,j)+175)/255;
%         end 
%     end
% end
% 
% [L,W] = find(BW>0); 
% L_S = sort(L);
% W_S = sort(W); 
% 
% L_C = diff(L_S); 
% W_C = diff(W_S); 
% 
% D_L = find(L_C>10);
% D_W = find(W_C>10);
% 
% L_C = sort(L(D_L));
% W_C = sort(W(D_W)); 

%test = BW(L_S(1):L(D_L(1)-1),W_S(1):W(D_W(1)-1));

% BW = imresize(BW, [20 NaN]);
% BW_Scal = imresize(BW_Scal,[20 NaN]);

%X = [reshape(BW,1,[]);reshape(BW_Scal,1,[])];
%invGray = imresize(invGray, [20 NaN]);
invGray = imresize(invGray, [20 20]);
X = [reshape(double(invGray),1,[])];
%X = [reshape(BW,1,[])];
Y = [5];


end