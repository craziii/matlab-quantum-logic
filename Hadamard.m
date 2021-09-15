

function out = Hadamard(in)
    arguments
        in (1,2)
    end
    H = (1/sqrt(2))*[1,1;1,-1];
    out = in*H;
    out = out';
end