% Create the function for the ButtonPushedFcn callback
function Mike_callback(btn,whichplot,ax)

x = linspace(0,6*pi,1000);

switch whichplot
    case 0
        y = sin(x);
    case 1
        y = cos(x);  
    case 2
        y = square(x);   
    otherwise
        disp('other value')
end
C = {'b','r','g'}; % Cell array of colros.
plot(ax,x,y,'color',C{whichplot+1})
end
