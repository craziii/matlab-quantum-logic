% Performs the quantum identity gate upon the input;

function out = Identity(in)
    arguments
        in (1,2)
    end
    I = [1,0;0,1];
    out = in*I;
    out = out';
end