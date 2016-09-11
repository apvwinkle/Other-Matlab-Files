function A = twenty48(matrix, direction)
    if nargin() == 0;
        A = zeros(4,4);
        %At the beginning of the game, it will create a 4 by 4 matrix if
        %one does not exist yet
        fprintf('Type in twenty48(ans, ''direction'') and input your direction with quotes \n to play the game! \n')
        for loop = 1:2
        A = rand2or4(A);
        end %you start with two tiles that are either 2 or 4
    elseif nargin() == 1
        fprintf('You need to type "ans" (with no quotation marks) before your direction to continue from the same game. \n The direction and ans should be separated by a comma: for example, twenty48(ans,''up'') \n')
    else
        A = matrix;
        %After the initial turn, enter ans for matrix and you will continue
        %from the same game
        %The games shifts all the numbers over to fill up the empty spaces,
        %and if two numbers are the same they add together
        switch direction
            case 'up'
                %this is for the first row for up
                for c = 1:4                
                    if A(1,c) == 0; %This is for if a number in the top row is 0
                        if A(2,c) ~= 0;
                            A(1,c) = A(2,c);
                            A(2,c) = A(3,c);
                            A(3,c) = A(4,c);
                            A(4,c) = 0;
                        elseif A(3,c) ~= 0;
                            A(1,c) = A(3,c);
                            A(2,c) = A(4,c);
                            A(3,c) = 0;
                            A(4,c) = 0;
                        elseif A(4,c) ~= 0;
                            A(1,c) = A(4,c);
                            A(2,c) = 0;
                            A(3,c) = 0;
                            A(4,c) = 0;
                        end
                    end
                    if A(2,c) == A(1,c); %Now we start with multiplying numbers for the top row
                        A(1,c) = 2*A(1,c);
                        A(2,c) = A(3,c);
                        A(3,c) = A(4,c);
                        A(4,c) = 0;
                    end
                    if A(2,c) == 0;
                        if A(3,c) == A(1,c);
                            A(1,c) = 2*A(3,c);
                            A(2,c) = A(4,c);
                            A(3,c) = 0;
                            A(4,c) = 0;
                        end
                        if A(3,c) == 0;
                            if A(4,c) == A(1,c);
                                A(1,c) = 2*A(1,c);
                                A(2,c) = 0;
                                A(3,c) = 0;
                                A(4,c) = 0;
                            end
                        end
                    end
                end
                %this is for the second row for up
                 for c = 1:4               
                    if A(2,c) == 0; %This is for if a number in the second row is 0
                        if A(3,c) ~= 0;
                            A(2,c) = A(3,c);
                            A(3,c) = A(4,c);
                            A(4,c) = 0;
                        elseif A(4,c) ~= 0;
                            A(2,c) = A(4,c);
                            A(3,c) = 0;
                            A(4,c) = 0;
                        end
                    end
                    if A(3,c) == A(2,c); %Now we start with multiplying numbers for the second row
                        A(2,c) = 2*A(3,c);
                        A(3,c) = A(4,c);
                        A(4,c) = 0;
                    end
                    if A(3,c) == 0;
                        if A(4,c) == A(2,c);
                            A(2,c) = 2*A(4,c);
                            A(3,c) = 0;
                            A(4,c) = 0;
                        end
                    end
                end
               %this is for the third row for up
                for c = 1:4               
                    if A(3,c) == 0; %This is for if a number in the third row is 0
                        if A(4,c) ~= 0;
                            A(3,c) = A(4,c);
                            A(4,c) = 0;
                        end
                    end
                    if A(4,c) == A(3,c); %Now we start with multiplying numbers for the third row
                        A(3,c) = 2*A(4,c);
                        A(4,c) = 0;
                    end
                end
            case 'down'
               %this is for the bottom row for down
                for c = 1:4                
                    if A(4,c) == 0; %This is for if a number in the bottom row is 0
                        if A(3,c) ~= 0;
                            A(4,c) = A(3,c);
                            A(3,c) = A(2,c);
                            A(2,c) = A(1,c);
                            A(1,c) = 0;
                        elseif A(2,c) ~= 0;
                            A(4,c) = A(2,c);
                            A(3,c) = A(1,c);
                            A(2,c) = 0;
                            A(1,c) = 0;
                        elseif A(1,c) ~= 0;
                            A(4,c) = A(1,c);
                            A(3,c) = 0;
                            A(2,c) = 0;
                            A(1,c) = 0;
                        end
                    end
                    if A(3,c) == A(4,c); %Now we start with multiplying numbers for the bottom row
                        A(4,c) = 2*A(4,c);
                        A(3,c) = A(2,c);
                        A(2,c) = A(1,c);
                        A(1,c) = 0;
                    end
                    if A(3,c) == 0;
                        if A(2,c) == A(4,c);
                            A(4,c) = 2*A(2,c);
                            A(3,c) = A(1,c);
                            A(2,c) = 0;
                            A(1,c) = 0;
                        end
                        if A(2,c) == 0;
                            if A(1,c) == A(4,c);
                                A(4,c) = 2*A(4,c);
                                A(3,c) = 0;
                                A(2,c) = 0;
                                A(1,c) = 0;
                            end
                        end
                    end
                end
                %this is for the third row (second from the bottom) for down
                 for c = 1:4               
                    if A(3,c) == 0; %This is for if a number in the third row is 0
                        if A(2,c) ~= 0;
                            A(3,c) = A(2,c);
                            A(2,c) = A(1,c);
                            A(1,c) = 0;
                        elseif A(1,c) ~= 0;
                            A(3,c) = A(1,c);
                            A(2,c) = 0;
                            A(1,c) = 0;
                        end
                    end
                    if A(2,c) == A(3,c); %Now we start with multiplying numbers for the third row
                        A(3,c) = 2*A(2,c);
                        A(2,c) = A(1,c);
                        A(1,c) = 0;
                    end
                    if A(2,c) == 0;
                        if A(1,c) == A(3,c);
                            A(3,c) = 2*A(1,c);
                            A(2,c) = 0;
                            A(1,c) = 0;
                        end
                    end
                end
               %this is for the second row for down
                for c = 1:4               
                    if A(2,c) == 0; %This is for if a number in the second row is 0
                        if A(1,c) ~= 0;
                            A(2,c) = A(1,c);
                            A(1,c) = 0;
                        end
                    end
                    if A(1,c) == A(2,c); %Now we start with multiplying numbers for the second row
                        A(2,c) = 2*A(1,c);
                        A(1,c) = 0;
                    end
                end
            case 'right'
                %this is for the rightmost column for right
                for r = 1:4                
                    if A(r,4) == 0; %This is for if a number in the rightmost column is 0
                        if A(r,3) ~= 0;
                            A(r,4) = A(r,3);
                            A(r,3) = A(r,2);
                            A(r,2) = A(r,1);
                            A(r,1) = 0;
                        elseif A(r,2) ~= 0;
                            A(r,4) = A(r,2);
                            A(r,3) = A(r,1);
                            A(r,2) = 0;
                            A(r,1) = 0;
                        elseif A(r,1) ~= 0;
                            A(r,4) = A(r,1);
                            A(r,3) = 0;
                            A(r,2) = 0;
                            A(r,1) = 0;
                        end
                    end
                    if A(r,3) == A(r,4); %Now we start with multiplying numbers for the right, column four
                        A(r,4) = 2*A(r,4);
                        A(r,3) = A(r,2);
                        A(r,2) = A(r,1);
                        A(r,1) = 0;
                    end
                    if A(r,3) == 0;
                        if A(r,2) == A(r,4);
                            A(r,4) = 2*A(r,2);
                            A(r,3) = A(r,1);
                            A(r,2) = 0;
                            A(r,1) = 0;
                        end
                        if A(r,2) == 0;
                            if A(r,1) == A(r,4);
                                A(r,4) = 2*A(r,4);
                                A(r,3) = 0;
                                A(r,2) = 0;
                                A(r,1) = 0;
                            end
                        end
                    end
                end
                %this is for the third column for right
                 for r = 1:4               
                    if A(r,3) == 0; %This is for if a number in the third column is 0
                        if A(r,2) ~= 0;
                            A(r,3) = A(r,2);
                            A(r,2) = A(r,1);
                            A(r,1) = 0;
                        elseif A(r,1) ~= 0;
                            A(r,3) = A(r,1);
                            A(r,2) = 0;
                            A(r,1) = 0;
                        end
                    end
                    if A(r,2) == A(r,3); %Now we start with multiplying numbers for the third column
                        A(r,3) = 2*A(r,2);
                        A(r,2) = A(r,1);
                        A(r,1) = 0;
                    end
                    if A(r,2) == 0;
                        if A(r,1) == A(r,3);
                            A(r,3) = 2*A(r,1);
                            A(r,2) = 0;
                            A(r,1) = 0;
                        end
                    end
                end
               %this is for the second column for right
                for r = 1:4               
                    if A(r,2) == 0; %This is for if a number in the second column is 0
                        if A(r,1) ~= 0;
                            A(r,2) = A(r,1);
                            A(r,1) = 0;
                        end
                    end
                    if A(r,1) == A(r,2); %Now we start with multiplying numbers for the second column
                        A(r,2) = 2*A(r,1);
                        A(r,1) = 0;
                    end
                end
            case 'left'
                %this is for the first column for left
                for r = 1:4                
                    if A(r,1) == 0; %This is for if a number in the leftmost column is 0
                        if A(r,2) ~= 0;
                            A(r,1) = A(r,2);
                            A(r,2) = A(r,3);
                            A(r,3) = A(r,4);
                            A(r,4) = 0;
                        elseif A(r,3) ~= 0;
                            A(r,1) = A(r,3);
                            A(r,2) = A(r,4);
                            A(r,3) = 0;
                            A(r,4) = 0;
                        elseif A(r,4) ~= 0;
                            A(r,1) = A(r,4);
                            A(r,2) = 0;
                            A(r,3) = 0;
                            A(r,4) = 0;
                        end
                    end
                    if A(r,2) == A(r,1); %Now we start with multiplying numbers for the leftmost column
                        A(r,1) = 2*A(r,1);
                        A(r,2) = A(r,3);
                        A(r,3) = A(r,4);
                        A(r,4) = 0;
                    end
                    if A(r,2) == 0;
                        if A(r,3) == A(r,1);
                            A(r,1) = 2*A(r,3);
                            A(r,2) = A(r,4);
                            A(r,3) = 0;
                            A(r,4) = 0;
                        end
                        if A(r,3) == 0;
                            if A(r,4) == A(r,1);
                                A(r,1) = 2*A(r,1);
                                A(r,2) = 0;
                                A(r,3) = 0;
                                A(r,4) = 0;
                            end
                        end
                    end
                end
                %this is for the second column for left
                 for r = 1:4               
                    if A(r,2) == 0; %This is for if a number in the second column is 0
                        if A(r,3) ~= 0;
                            A(r,2) = A(r,3);
                            A(r,3) = A(r,4);
                            A(r,4) = 0;
                        elseif A(r,4) ~= 0;
                            A(r,2) = A(r,4);
                            A(r,3) = 0;
                            A(r,4) = 0;
                        end
                    end
                    if A(r,3) == A(r,2); %Now we start with multiplying numbers for the second column
                        A(r,2) = 2*A(r,3);
                        A(r,3) = A(r,4);
                        A(r,4) = 0;
                    end
                    if A(r,3) == 0;
                        if A(r,4) == A(r,2);
                            A(r,2) = 2*A(r,4);
                            A(r,3) = 0;
                            A(r,4) = 0;
                        end
                    end
                end
               %this is for the third column for right
                for r = 1:4               
                    if A(r,3) == 0; %This is for if a number in the third column is 0
                        if A(r,4) ~= 0;
                            A(r,3) = A(r,4);
                            A(r,4) = 0;
                        end
                    end
                    if A(r,4) == A(r,3); %Now we start with multiplying numbers for the third column
                        A(r,3) = 2*A(r,4);
                        A(r,4) = 0;
                    end
                end   
        end
        if matrix == A
            fprintf('Something is wrong :( \n')
        else
        A = rand2or4(A);
        end
    end
end   
function A = rand2or4(A)
        B = rand;
if B < .8
    for D = 1:16 %it will keep looking for an open square to put a number in
        C = B*16;
    if C <= 1
        if A(1,1) == 0
        A(1,1) = 2;
        break
        end
    elseif C <= 2
        if A(1,2) == 0
        A(1,2) = 2;
        break
        end
    elseif C <= 3
        if A(1,3) == 0
        A(1,3) = 2;
        break
        end
    elseif C <= 4
        if A(1,4) == 0
        A(1,4) = 2;
        break
        end
    elseif C <= 5
        if A(2,1) == 0
        A(2,1) = 2;
        break
        end
    elseif C <= 6
        if A(2,2) == 0
        A(2,2) = 2;
        break
        end
    elseif C <= 7
        if A(2,3) == 0
        A(2,3) = 2;
        break
        end
    elseif C <=8
        if A(2,4) == 0
        A(2,4) = 2;
        break
        end
    elseif C <= 9
        if A(3,1) == 0
        A(3,1) = 2;
        break
        end
    elseif C <= 10
       if A(3,2) == 0
        A(3,2) = 2;
        break
        end
    elseif C <= 11
        if A(3,3) == 0
        A(3,3) = 2;
        break
        end
    elseif C <= 12
        if A(3,4) == 0
        A(3,4) = 2;
        break
        end
    elseif C <= 13
        if A(4,1) == 0
        A(4,1) = 2;
        break
        end
    elseif C <= 14
        if A(4,2) == 0
        A(4,2) = 2;
        break
        end
    elseif C <=15
       if A(4,3) == 0
        A(4,3) = 2;
        break
        end
    elseif C <= 16
        if A(4,4) == 0
        A(4,4) = 2;
        break
        end
    end
    end
else
    C = rand*16;
        if C <= 1
            A(1,1) = 4;
        elseif C <= 2
            A(1,2) = 4;
        elseif C <= 3
            A(1,3) = 4;
        elseif C <= 4
            A(1,4) = 4;
        elseif C <= 5
            A(2,1) = 4;
        elseif C <= 6
            A(2,2) = 4;
        elseif C <= 7
            A(2,3) = 4;
        elseif C <=8
            A(2,4) = 4;
        elseif C <= 9
            A(3,1) = 4;
        elseif C <= 10
            A(3,2) = 4;
        elseif C <= 11
            A(3,3) = 4;
        elseif C <= 12
            A(3,4) = 4;
        elseif C <= 13
            A(4,1) = 4;
        elseif C <= 14
            A(4,2) = 4;
        elseif C <=15
            A(4,3) = 4;
        elseif C <= 16
            A(4,4) = 4;
        end
end
end
function graphics = colorful(A)
imwrite(1000, 650, 3)
for r = 1:4
    for c = 1:4
        if A(r,c) == 2
            squares(r,c) = red
        elseif A(r,c) == 4
            squares(r,c) = orange
        elseif A(r,c) == 8
            squares(r,c) = yellow
        elseif A(r,c) == 16
            squares(r,c) = lime
        elseif A(r,c) == 32
            squares(r,c) = green
        elseif A(r,c) == 64
            squares(r,c) = teal
        elseif A(r,c) == 128
            squares(r,c) = blue
        elseif A(r,c) == 256
            squares(r,c) = navy
        elseif A(r,c) == 512
            squares(r,c) = indigo
        elseif A(r,c) == 1024
            squares(r,c) = purple
        elseif A(r,c) == 2048
            squares(r,c) = rainbow
        elseif A(r,c) == 4096
            squares(r,c) = unicorn
        end
    end
end
end