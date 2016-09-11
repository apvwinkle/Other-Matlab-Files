function g = gravity(mass,radius,distancefromsurface)
%This calculates what acceleration the gravitational field of a mass will
%produce on any other mass, either on the first object's surface or further
%away.
G = 6.67e-11;
    switch nargin
        case 2
        g = G*mass/radius^2;
        case 3
        g = G*mass/(radius+distancefromsurface)^2;
    end
end