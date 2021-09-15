% input - "<GATE:EXTRA>,<GATE>,<GATE>"

% <GATE> can have a gate and an extra value split by ':', example Pc:8 is a
% custom phase shift with a pi divider of 8 

% EXTRA is optional, a divisor of pi is written as xpy where x is the
% multipler and y is the divisor e.g. 3p4 is (3/4)*pi


function out = StringtoGates(s)
    arguments
        s string
    end
    splitString = split(s,",");
    out = cell(2,length(splitString));
    
    for i = 1:length(splitString)
        if contains(splitString(i),":")
            temp = split(splitString(i),":");
            out{1,i} = temp(1);
            if contains(temp(2),"p")
                nums = split(temp(2),"p");
                numsM = str2double(nums(1));
                numsD = str2double(nums(2));
                out{2,i} = (pi/numsD)*numsM;
            else
                out{2,i} = str2double(temp(2));
            end
        else
            out{1,i} = splitString(i);
            out{2,i} = 0;
        end
    end
    
end