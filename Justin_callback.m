% Create the function for the ButtonPushedFcn callback
function Justin_callback(btn,whichplot,ax)

x = linspace(0,2*pi,100);

switch whichplot
    case 0
        y = 0.005*x + 0.1;
    
    otherwise
        disp('Other value')

end
C = 'g'; % Color of line
plot(ax,x,y,'color',C)
end
