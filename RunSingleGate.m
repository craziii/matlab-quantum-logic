%{
INPUT:
    in - 2x2 matrix
    gate - string of below gate type
    extra - double value used in some gates

GATES:
    I - Identity
    Px - Pauli x
    Py - Pauli y
    Pz - Pauli z
    Sqr - Square root NOT gate (sqrt(Pauli x gate))
    Z - Phase shift pi
    S - Phase shift pi/2
    T - Phase shift pi/4
    Pc - Phase shift (extra is pi divider)
    Rx - Rotation x (extra is rotation value in radians)
    Ry - Rotation y (extra is rotation value in radians)
    Rz - Rotation z (extra is rotation value in radians)
    H - Hadamard
%}


function out = RunSingleGate(in, gate, extra)
    arguments
        in (1,2)
        gate string
        extra {mustBeNumeric, mustBeFinite}
    end
    switch gate
        case "I"
            out = Identity(in);
        case "Px"
            out = Pauli(in, 'x');
        case "Py"
            out = Pauli(in, 'y');
        case "Pz"
            out = Pauli(in, 'z');
        case "Sqr"
            out = SqrtNOT(in);
        case "Z"
            out = Phase(in,1);
        case "S"
            out = Phase(in,2);
        case "T"
            out = Phase(in,4);
        case "Pc"
            out = Phase(in,extra);
        case "Rx"
            out = Rotate(in,'x',extra);
        case "Ry"
            out = Rotate(in,'y',extra);
        case "Rz"
            out = Rotate(in,'z',extra);
        case "H"
            out = Hadamard(in);
    end
end