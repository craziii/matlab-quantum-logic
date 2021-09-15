% Performs the quantum Sqrt Pauli x gate upon the input;

function out = SqrtNOT(in)
    NOT = (1/2)*[1+1i,1-1i;1-1i,1+1i];
    out = in*NOT;
    out = out';
end