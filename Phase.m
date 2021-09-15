% Performs the quantum Phase gate upon the input with the given division of pi;

function out = Phase(in, divider)
    arguments
        in (1,2)
        divider double {mustBeNumeric, mustBeFinite}
    end
    P1 = exp(1i*(pi/divider));
    P2 = [1,0;0,P1];
    out = in*P2;
    out = out';
end