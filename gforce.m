function Fg = gforce(mass1,mass2,distancebetween,radius1,radius2)
%This caluclates the gravitational force between two masses.
%distancebetween can be either between the center of masses of the two
%objects, or between the object's surfaces with the radii of the objects.
switch nargin
    case 3
        a = gravity(mass1,distancebetween);
    case 4 %This is for a very large radius of one and a very small for the other
        a = gravity(mass1,distancebetween,radius1);
    case 5
        a = gravity(mass1,distancebetween,radius1+radius2);
end
Fg = mass2*a;