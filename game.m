function A = game(direction, matrix)
%This is for my version of the game 2048
%To begin the game, start with a matrix of zeros(4,4)
%if isrow(matrix)
 %   A = zeros(4,4);
    %At the beginning of the game, it will create a 4 by 4 matrix if
    %one does not exist yet
%else
%    A = matrix;
    %To continue the game, enter ans for matrix and you will continue
    %from the same game
%%}
A = matrix
switch direction
    case 'up'
        if A(4,1) == 0
            A (4,1) = 3
        end
       
end



        



end

