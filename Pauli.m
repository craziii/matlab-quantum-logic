% Performs the quantum Pauli gate upon the input with the given x, y or z axis;

function out = Pauli(in, axis)
    arguments
       in (1,2)
       axis char
    end
        X = [0,1;1,0];
        Y = [0,-1i;1i,0];
        Z = [1,0;0,-1];
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