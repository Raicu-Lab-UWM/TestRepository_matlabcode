
% Create the function for the ButtonPushedFcn callback
function Aaliyah_callback(btn,whichplot,ax)

t = linspace(0, 2*pi, 100);

x = sin(2*t);
y = sin(3*t);

plot(ax,x,y,'b')

end

