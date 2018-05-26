function [v]=velocity(t)
    v = -20.*(exp(-0.01.*(t.^2))).*sin(20.*pi.*t+(2.*pi)/5);
end