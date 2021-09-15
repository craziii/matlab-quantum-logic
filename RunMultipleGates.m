function [out,outputs] = RunMultipleGates(in,gates)
    arguments
        in (1,2)
        gates (2,:) cell
    end
    temp = in;
    outputs = cell(length(gates),1);
    for i = 1:length(gates)
        if isempty(gates{2,i})
            gates{2,i} = 0;
        end
        temp = RunSingleGate(temp,gates{1,i},gates{2,i});
        outputs{i} = temp;
    end
    out = temp;
end