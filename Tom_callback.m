% Create the function for the ButtonPushedFcn callback
function Tom_callback(btn,whichplot,ax)

x = linspace(0,2*pi,100);


switch whichplot
    case 0
        y = 0.75*x;
    otherwise
        disp('other value')
end
C = {'b','r'}; % Cell array of colros.
plot(ax,x,y,'color',C{whichplot+1})


end
