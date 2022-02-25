function output=box_normalize(input)
%min-max normalization of the input values
%CONSTANT is multiplied in the end to get a [0, CONSTANT] output interval

    CONSTANT=1000;
    max_value=max(input, [], "all");
    min_value=min(input, [], "all");
    output=(input-min_value)/(max_value-min_value)*CONSTANT;
end
