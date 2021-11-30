% Create the function for the ButtonPushedFcn callback
function Mike_callback(btn,whichplot,ax)


x = linspace(0,2*pi,100);


switch whichplot
    case 0
        y = sin(x);
    case 1
        y = cos(x);
    otherwise
        disp('other value')
end
C = {'b','r'}; % Cell array of colros.
plot(ax,x,y,'color',C{whichplot+1})
value=test;
end
