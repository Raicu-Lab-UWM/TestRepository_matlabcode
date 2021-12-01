
% Create the function for the ButtonPushedFcn callback
function Tom_callback(btn,whichplot,ax)

x = linspace(0,3.5*pi,100);
switch whichplot
    case 0
        y = sin(0.5*x);
    case 1
        y = cos(0.5*x);
    otherwise
        disp('other value');
 end
C = {'b','r'}; % Cell array of colros.
plot(ax,x,y,'color',C{whichplot+1})

end

