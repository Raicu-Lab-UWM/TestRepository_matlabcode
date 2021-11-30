% Create the function for the ButtonPushedFcn callback
function Dammar_callback(btn,ax)
x = linspace(0,2*pi,100);
y = zeros(1,length(x));
for ii=1:length(x)
    if x(ii) < pi
        y(ii) = sin(x(ii));
    else
        y(ii) = -sin(x(ii))+0.5; % 0.5 is added here.
    end
end

plot(ax,x,y,'g')
end

