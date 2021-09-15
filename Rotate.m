% Performs the quantum Rotation gate upon the input with the given x, y or z axis with the given rotation amount in radians;

function out = Rotate(in, axis, rotation)
    arguments
        in (1,2)
        axis char
        rotation double {mustBeNumeric, mustBeFinite}
    end
    theta = rotation/2;
    X = [cos(theta),-sin(theta)*1i;-sin(theta)*1i,cos(theta)];
    Y = [cos(theta),-sin(theta);sin(theta),cos(theta)];
    Z = [exp(theta*-1i),0;0,exp(theta*1i)];
    switch axis
        case 'x'
            out = in*X;
        case 'y'
            out = in*Y;
        case 'z'
            out = in*Z;
    end
    out = out';
end