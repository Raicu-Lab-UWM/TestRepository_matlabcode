function buttonPlot
% Create a figure window
fig = uifigure;

% Create a UI axes
ax = uiaxes('Parent',fig,...
            'Units','pixels',...
            'Position', [150, 123, 300, 201]);   

% Create a push button
btn_Mike = uibutton(fig,'push',...
               'Text', 'Mike_sinewave',...
               'Position',[25, 350, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Mike_callback(btn,0, ax));
           
           
           % Create a push button
btn_Mike_2 = uibutton(fig,'push',...
               'Text', 'Mike_coswave',...
               'Position',[25, 300, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Mike_callback(btn,1, ax));

% Create Tom's push button
btn_Tom = uibutton(fig,'push',...
               'Text', 'Tom_plot',...
               'Position',[25, 200, 100, 22],...
               'ButtonPushedFcn', @(btn,event) Tom_callback(btn,0, ax));
               
end

